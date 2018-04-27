#!/bin/bash

# http://brew.sh
# http://braumeister.org
# http://caskroom.io
# http://caskroom.io/search



###
### asking password upfront
###

if [[ "$SUDOPASSWORD" != "" ]]
then
    #USE_PASSWORD='builtin printf '"$SUDOPASSWORD\n"''
    :
elif [[ -e /tmp/run_from_backup_script3 ]] && [[ $(cat /tmp/run_from_backup_script3) == 1 ]]
then
    function delete_tmp_backup_script_fifo3() {
        if [ -e "/tmp/tmp_backup_script_fifo3" ]
        then
            rm "/tmp/tmp_backup_script_fifo3"
        else
            :
        fi
        if [ -e "/tmp/run_from_backup_script3" ]
        then
            rm "/tmp/run_from_backup_script3"
        else
            :
        fi
    }
    unset SUDOPASSWORD
    SUDOPASSWORD=$(cat "/tmp/tmp_backup_script_fifo3" | head -n 1)
    USE_PASSWORD='builtin printf '"$SUDOPASSWORD\n"''
    delete_tmp_backup_script_fifo3
    #set +a
else

    # function for reading secret string (POSIX compliant)
    enter_password_secret()
    {
        # read -s is not POSIX compliant
        #read -s -p "Password: " SUDOPASSWORD
        #echo ''
        
        # this is POSIX compliant
        # disabling echo, this will prevent showing output
        stty -echo
        # setting up trap to ensure echo is enabled before exiting if the script is terminated while echo is disabled
        trap 'stty echo' EXIT
        # asking for password
        printf "Password: "
        # reading secret
        read -r "$@" SUDOPASSWORD
        # reanabling echo
        stty echo
        trap - EXIT
        # print a newline because the newline entered by the user after entering the passcode is not echoed. This ensures that the next line of output begins at a new line.
        printf "\n"
        # making sure builtin bash commands are used for using the SUDOPASSWORD, this will prevent showing it in ps output
        # has to be part of the function or it wouldn`t be updated during the maximum three tries
        #USE_PASSWORD='builtin echo '"$SUDOPASSWORD"''
        USE_PASSWORD='builtin printf '"$SUDOPASSWORD\n"''
    }
    
    # unset the password if the variable was already set
    unset SUDOPASSWORD
    
    # making sure no variables are exported
    set +a
    
    # asking for the SUDOPASSWORD upfront
    # typing and reading SUDOPASSWORD from command line without displaying it and
    # checking if entered password is the sudo password with a set maximum of tries
    NUMBER_OF_TRIES=0
    MAX_TRIES=3
    while [ "$NUMBER_OF_TRIES" -le "$MAX_TRIES" ]
    do
        NUMBER_OF_TRIES=$((NUMBER_OF_TRIES+1))
        #echo "$NUMBER_OF_TRIES"
        if [ "$NUMBER_OF_TRIES" -le "$MAX_TRIES" ]
        then
            enter_password_secret
            ${USE_PASSWORD} | sudo -k -S echo "" > /dev/null 2>&1
            if [ $? -eq 0 ]
            then 
                break
            else
                echo "Sorry, try again."
            fi
        else
            echo ""$MAX_TRIES" incorrect password attempts"
            exit
        fi
    done
    
fi
    
# setting up trap to ensure the SUDOPASSWORD is unset if the script is terminated while it is set
trap 'unset SUDOPASSWORD' EXIT

# replacing sudo command with a function, so all sudo commands of the script do not have to be changed
sudo()
{
    ${USE_PASSWORD} | builtin command sudo -p '' -k -S "$@"
    #${USE_PASSWORD} | builtin command -p sudo -p '' -k -S "$@"
    #${USE_PASSWORD} | builtin exec sudo -p '' -k -S "$@"
}


###
### starting installation
###


function get_running_subprocesses()
{
    SUBPROCESSES_PID_TEXT=$(pgrep -lg $(ps -o pgid= $$) | grep -v $$ | grep -v grep)
    SCRIPTNAME_PART=$(echo "$(basename $0)" | fold -w 12)
    RUNNING_SUBPROCESSES=$(echo "$SUBPROCESSES_PID_TEXT" | grep -v "$SCRIPTNAME_PART" | awk '{print $1}')
}

function kill_subprocesses() 
{
    # kills only subprocesses of the current process
    #pkill -15 -P $$
    #kill -15 $(pgrep -P $$)
    #echo "killing processes..."
    
    # kills all descendant processes incl. process-children and process-grandchildren
    # giving subprocesses the chance to terminate cleanly kill -15
    get_running_subprocesses
    if [[ $RUNNING_SUBPROCESSES != "" ]]
    then
        kill -15 $RUNNING_SUBPROCESSES
        # do not wait here if a process can not terminate cleanly
        #wait $RUNNING_SUBPROCESSES 2>/dev/null
    else
        :
    fi
    # waiting for clean subprocess termination
    TIME_OUT=0
    while [[ $RUNNING_SUBPROCESSES != "" ]] && [[ $TIME_OUT -lt 3 ]]
    do
        get_running_subprocesses
        sleep 1
        TIME_OUT=$((TIME_OUT+1))
    done
    # killing the rest of the processes kill -9
    get_running_subprocesses
    if [[ $RUNNING_SUBPROCESSES != "" ]]
    then
        kill -9 $RUNNING_SUBPROCESSES
        wait $RUNNING_SUBPROCESSES 2>/dev/null
    else
        :
    fi
    # unsetting variable
    unset RUNNING_SUBPROCESSES
}

function kill_main_process() 
{
    # kills processes itself
    #kill $$
    kill -13 $$
}

function unset_variables() {
    unset SUDOPASSWORD
    unset SUDO_PID
}

function start_sudo() {
    ${USE_PASSWORD} | builtin command sudo -p '' -S -v
    ( while true; do ${USE_PASSWORD} | builtin command sudo -p '' -S -v; sleep 60; done; ) &
    SUDO_PID="$!"
}

function stop_sudo() {
    if [[ $(echo $SUDO_PID) == "" ]]
    then
        :
    else
        if ps -p $SUDO_PID > /dev/null
        then
            sudo kill -9 $SUDO_PID &> /dev/null
            wait $SUDO_PID 2>/dev/null
        else
            :
        fi
    fi
    unset SUDO_PID
    sudo -k
}

function activating_keepingyouawake() {
if [ -e /Applications/KeepingYouAwake.app ]
then
	echo "activating keepingyouawake..."
    #echo ''
	open -g /Applications/KeepingYouAwake.app
    open -g keepingyouawake:///activate
else
        :
fi
}

function deactivating_keepingyouawake() {
if [ -e /Applications/KeepingYouAwake.app ]
then
    echo "deactivating keepingyouawake..."
    open -g /Applications/KeepingYouAwake.app
    open -g keepingyouawake:///deactivate
else
    :
fi
}

SCRIPT_DIR=$(echo "$( cd "${BASH_SOURCE[0]%/*}" && pwd)")

# trap
trap "stop_sudo; printf '\n'; stty sane; kill_subprocesses >/dev/null 2>&1; unset SUDOPASSWORD; kill_main_process" SIGHUP SIGINT SIGTERM
# kill main process only if it hangs on regular exit
trap "stop_sudo; stty sane; kill_subprocesses >/dev/null 2>&1; unset SUDOPASSWORD; exit" EXIT
#set -e

# checking if online
echo "checking internet connection..."
ping -c 3 google.com > /dev/null 2>&1
if [ $? -eq 0 ]
then
    echo "we are online, running script..."
    echo ''
    
    # starting sudo keep alive loop
    start_sudo
        	
	# as xtrafinder is no longer installable by cask let`s install it that way ;)
    echo ''
	echo "downloading xtrafinder..."
	XTRAFINDER_INSTALLER="/Users/$USER/Desktop/XtraFinder.dmg"
	#wget https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg -O "$XTRAFINDER_INSTALLER"
	curl https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg -o "$XTRAFINDER_INSTALLER" --progress-bar
	#open "$XTRAFINDER_INSTALLER"
	hdiutil attach "$XTRAFINDER_INSTALLER" -quiet
	sleep 5
	# uninstall
	echo "uninstalling application..."
	${USE_PASSWORD} | sudo /Volumes/XtraFinder/Uninstall.app/Contents/MacOS/Uninstall 1>/dev/null
	echo "installing application..."
	${USE_PASSWORD} | sudo installer -pkg /Volumes/XtraFinder/XtraFinder.pkg -target / 1>/dev/null
	#sudo installer -pkg /Volumes/XtraFinder/XtraFinderInstaller.pkg -target / 1>/dev/null
	sleep 1
	#echo "waiting for installer to finish..."
	#while ps aux | grep 'installer' | grep -v grep > /dev/null; do sleep 1; done
	echo "unmounting and removing installer file..."
	hdiutil detach /Volumes/XtraFinder -quiet
	if [ -e "$XTRAFINDER_INSTALLER" ]; then rm "$XTRAFINDER_INSTALLER"; else :; fi
	
	if [ -e "/Applications/XtraFinder.app" ]
    then
    
    	echo "xtrafinder"
    	
    	# enable copy / cut - paste
    	defaults write com.apple.finder XtraFinder_XFCutAndPastePlugin -bool true
    	
    	# disable xtrafinder tabs
    	defaults write com.apple.finder XtraFinder_XFTabPlugin -bool false
    	
    	# # disable xtrafinder menu bar icon
    	#defaults write com.apple.finder XtraFinder_ShowStatusBarIcon -bool false
    	
    	
    	### right click finder plugins
    	
    	# show copy path
    	#defaults write com.apple.finder XtraFinder_XFCopyPathMenuPlugin -bool true
    	
    	# path type options
    	# 0 = path, 3 = hfs path, 4 = terminal path
    	defaults write com.apple.finder XtraFinder_XFCopyPathMenuPlugin_Default -integer 0
    	
    	# show make symbolic link
    	defaults write com.apple.finder XtraFinder_XFMakeSymbolicLinkActionPlugin -bool false
    	
    	# show open in new window
    	defaults write com.apple.finder XtraFinder_XFOpenInNewWindowPlugin -bool true
    	
    	
    	# autostart
    	osascript -e 'tell application "System Events" to make login item at end with properties {name:"XtraFinder", path:"/Applications/XtraFinder.app", hidden:false}'
    
    else
    	:
    fi

    	
else
    echo "not online, skipping installation..."
    echo ''
fi

###
### unsetting password
###

unset SUDOPASSWORD
