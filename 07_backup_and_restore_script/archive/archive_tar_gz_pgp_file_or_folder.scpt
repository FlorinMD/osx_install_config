FasdUAS 1.101.10   ��   ��    k             l    
 ����  O     
  	  I   	������
�� .miscactvnull��� ��� null��  ��   	 m     ��
�� misccura��  ��     
  
 l     ��������  ��  ��        l     ��  ��    , &display dialog "starting archiving..."     �   L d i s p l a y   d i a l o g   " s t a r t i n g   a r c h i v i n g . . . "      l     ��������  ��  ��        l    ����  r        J           m       �    f i l e   ��  m       �    d i r e c t o r y��    o      ����  0 thechoiceslist theChoicesList��  ��       !   l    "���� " r     # $ # I   �� % &
�� .gtqpchltns    @   @ ns   % o    ����  0 thechoiceslist theChoicesList & �� ' (
�� 
prmp ' m     ) ) � * * h S e l e c t   i f   y o u   w a n t   t o   a r c h i v e   a   f i l e   o r   a   d i r e c t o r y : ( �� +��
�� 
inSL + J     , ,  -�� - m     . . � / /  f i l e��  ��   $ o      ���� 0 	inputtype 	inputType��  ��   !  0 1 0 l     �� 2 3��   2  display dialog inputType    3 � 4 4 0 d i s p l a y   d i a l o g   i n p u t T y p e 1  5 6 5 l     �� 7 8��   7 = 7if inputType is not equal to "file" or "directory" then    8 � 9 9 n i f   i n p u t T y p e   i s   n o t   e q u a l   t o   " f i l e "   o r   " d i r e c t o r y "   t h e n 6  : ; : l     �� < =��   < B <	display dialog "Error: No valid input selected, exiting..."    = � > > x 	 d i s p l a y   d i a l o g   " E r r o r :   N o   v a l i d   i n p u t   s e l e c t e d ,   e x i t i n g . . . " ;  ? @ ? l     �� A B��   A  	return    B � C C  	 r e t u r n @  D E D l     �� F G��   F  end if    G � H H  e n d   i f E  I J I l     ��������  ��  ��   J  K L K l    f M���� M Z     f N O P Q N =    % R S R o     !���� 0 	inputtype 	inputType S J   ! $ T T  U�� U m   ! " V V � W W  f i l e��   O k   ( 9 X X  Y Z Y l  ( (�� [ \��   [ � �set inputFolder to (choose file with prompt "Select a file to be archived" default location path to desktop with multiple selections allowed)    \ � ] ] s e t   i n p u t F o l d e r   t o   ( c h o o s e   f i l e   w i t h   p r o m p t   " S e l e c t   a   f i l e   t o   b e   a r c h i v e d "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d ) Z  ^�� ^ r   ( 9 _ ` _ l  ( 5 a���� a I  ( 5���� b
�� .sysostdfalis    ��� null��   b �� c d
�� 
prmp c m   * + e e � f f 8 S e l e c t   a   f i l e   t o   b e   a r c h i v e d d �� g��
�� 
dflc g I  , 1�� h��
�� .earsffdralis        afdr h m   , -��
�� afdrdesk��  ��  ��  ��   ` o      ���� 0 	inputitem 	inputItem��   P  i j i =  < C k l k o   < =���� 0 	inputtype 	inputType l J   = B m m  n�� n m   = @ o o � p p  d i r e c t o r y��   j  q�� q k   F Y r r  s t s l  F F�� u v��   u � �set inputItem to (choose folder with prompt "Select a directory to be archived" default location path to desktop with multiple selections allowed)    v � w w$ s e t   i n p u t I t e m   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S e l e c t   a   d i r e c t o r y   t o   b e   a r c h i v e d "   d e f a u l t   l o c a t i o n   p a t h   t o   d e s k t o p   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d ) t  x�� x r   F Y y z y l  F U {���� { I  F U���� |
�� .sysostflalis    ��� null��   | �� } ~
�� 
prmp } m   H K   � � � B S e l e c t   a   d i r e c t o r y   t o   b e   a r c h i v e d ~ �� ���
�� 
dflc � I  L Q�� ���
�� .earsffdralis        afdr � m   L M��
�� afdrdesk��  ��  ��  ��   z o      ���� 0 	inputitem 	inputItem��  ��   Q k   \ f � �  � � � I  \ c�� ���
�� .sysodlogaskr        TEXT � m   \ _ � � � � � T E r r o r :   N o   v a l i d   i n p u t   s e l e c t e d ,   e x i t i n g . . .��   �  ��� � L   d f����  ��  ��  ��   L  � � � l     ��������  ��  ��   �  � � � l  g y ����� � O  g y � � � r   m x � � � n   m t � � � 1   p t��
�� 
posx � o   m p���� 0 	inputitem 	inputItem � o      ����  0 posixinputitem posixinputItem � m   g j � ��                                                                                  sevs  alis    \  macintosh_hd                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l  z � ����� � r   z � � � � n   z � � � � 1   } ���
�� 
strq � o   z }����  0 posixinputitem posixinputItem � o      ���� 0 ipp  ��  ��   �  � � � l     �� � ���   �  display dialog ipp    � � � � $ d i s p l a y   d i a l o g   i p p �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � " e c h o   " $ ( b a s e n a m e   � o   � ����� 0 ipp   � m   � � � � � � � 6   |   c u t   - d .   - f 1 ) " . t a r . g z . g p g��  ��  ��   � o      ���� "0 defaultsavename defaultSaveName��  ��   �  � � � l     �� � ���   � $ display dialog defaultSaveName    � � � � < d i s p l a y   d i a l o g   d e f a u l t S a v e N a m e �  � � � l  � � ����� � r   � � � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �   e c h o   " $ ( d i r n a m e   � o   � ����� 0 ipp   � m   � � � � � � �  ) "��  ��  ��   � o      ���� "0 defaultsavepath defaultSavePath��  ��   �  � � � l     �� � ���   � $ display dialog defaultSavePath    � � � � < d i s p l a y   d i a l o g   d e f a u l t S a v e P a t h �  � � � l  � � ����� � r   � � � � � c   � � � � � 4   � ��� �
�� 
psxf � o   � ����� "0 defaultsavepath defaultSavePath � m   � ���
�� 
alis � o      ���� 80 defaultsavepathapplescript defaultSavePathApplescript��  ��   �  � � � l     �� � ���   � / )display dialog defaultSavePathApplescript    � � � � R d i s p l a y   d i a l o g   d e f a u l t S a v e P a t h A p p l e s c r i p t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & save to same directory without asking    � � � � L   s a v e   t o   s a m e   d i r e c t o r y   w i t h o u t   a s k i n g �  � � � l     �� � ���   � = 7set fileSave to defaultSavePath & "/" & defaultSaveName    � � � � n s e t   f i l e S a v e   t o   d e f a u l t S a v e P a t h   &   " / "   &   d e f a u l t S a v e N a m e �  � � � l     �� � ���   � #  ask for directory to save to    � � � � :   a s k   f o r   d i r e c t o r y   t o   s a v e   t o �  � � � l  � � ����� � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
prmt � m   � � � � � � �  S a v e   A s � �� � �
�� 
dfnm � o   � ����� "0 defaultsavename defaultSaveName � �� ��
�� 
dflc � o   � ��~�~ 80 defaultsavepathapplescript defaultSavePathApplescript�   � o      �}�} 0 filesave fileSave��  ��   �  � � � l     �| � ��|   �  display dialog fileSave    � � � � . d i s p l a y   d i a l o g   f i l e S a v e �  � � � l  � � ��{�z � r   � � �  � n   � � 1   � ��y
�y 
psxp o   � ��x�x 0 filesave fileSave  o      �w�w 0 filesave fileSave�{  �z   �  l  ��v�u Z  ��t�s H   � � D   � �	
	 o   � ��r�r 0 filesave fileSave
 m   � � �  . t a r . g z . g p g r   � � b   � � o   � ��q�q 0 filesave fileSave m   � � �  . t a r . g z . g p g o      �p�p 0 filesave fileSave�t  �s  �v  �u    l     �o�o    display dialog fileSave    � . d i s p l a y   d i a l o g   f i l e S a v e  l     �n�m�l�n  �m  �l    l �k�j r   n    1  	�i
�i 
strq  n  	!"! 1  	�h
�h 
psxp" o  �g�g 0 filesave fileSave o      �f�f 0 opp  �k  �j   #$# l     �e%&�e  %  display dialog opp   & �'' $ d i s p l a y   d i a l o g   o p p$ ()( l     �d�c�b�d  �c  �b  ) *+* l     �a,-�a  , > 8 testing if file already exists, macos does that already   - �.. p   t e s t i n g   i f   f i l e   a l r e a d y   e x i s t s ,   m a c o s   d o e s   t h a t   a l r e a d y+ /0/ l     �`12�`  1 $ set testFileExists to fileSave   2 �33 < s e t   t e s t F i l e E x i s t s   t o   f i l e S a v e0 454 l     �_67�_  6  tell application "Finder"   7 �88 2 t e l l   a p p l i c a t i o n   " F i n d e r "5 9:9 l     �^;<�^  ; ) #	if exists file testFileExists then   < �== F 	 i f   e x i s t s   f i l e   t e s t F i l e E x i s t s   t h e n: >?> l     �]@A�]  @ r l		set question to display dialog "file already exists, overwrite it?" buttons {"Yes", "No"} default button 2   A �BB � 	 	 s e t   q u e s t i o n   t o   d i s p l a y   d i a l o g   " f i l e   a l r e a d y   e x i s t s ,   o v e r w r i t e   i t ? "   b u t t o n s   { " Y e s " ,   " N o " }   d e f a u l t   b u t t o n   2? CDC l     �\EF�\  E 1 +		set answer to button returned of question   F �GG V 	 	 s e t   a n s w e r   t o   b u t t o n   r e t u r n e d   o f   q u e s t i o nD HIH l     �[JK�[  J ! 		if (answer is "Yes") then   K �LL 6 	 	 i f   ( a n s w e r   i s   " Y e s " )   t h e nI MNM l     �ZOP�Z  O Z T			do shell script "cd \"$(dirname " & opp & ")\" && rm \"$(basename " & opp & ")\""   P �QQ � 	 	 	 d o   s h e l l   s c r i p t   " c d   \ " $ ( d i r n a m e   "   &   o p p   &   " ) \ "   & &   r m   \ " $ ( b a s e n a m e   "   &   o p p   &   " ) \ " "N RSR l     �YTU�Y  T  return true   U �VV  r e t u r n   t r u eS WXW l     �XYZ�X  Y  		else   Z �[[  	 	 e l s eX \]\ l     �W^_�W  ^  			return false   _ �``  	 	 	 r e t u r n   f a l s e] aba l     �Vcd�V  c  		end if   d �ee  	 	 e n d   i fb fgf l     �Uhi�U  h  	else   i �jj 
 	 e l s eg klk l     �Tmn�T  m  return false   n �oo  r e t u r n   f a l s el pqp l     �Srs�S  r  	end if   s �tt  	 e n d   i fq uvu l     �Rwx�R  w  end tell   x �yy  e n d   t e l lv z{z l     �Q�P�O�Q  �P  �O  { |}| l     �N~�N  ~   checking dependencies    ��� ,   c h e c k i n g   d e p e n d e n c i e s} ��� l     �M���M  � ! set dependencycheckok to ""   � ��� 6 s e t   d e p e n d e n c y c h e c k o k   t o   " "� ��� l )��L�K� r  )��� J  %�� ��� m  �� ���  g n u - t a r� ��� m  �� ���  p i g z� ��� m  �� ���  p v� ��� m  �� ���  c o r e u t i l s� ��J� m  !�� ��� 
 g n u p g�J  � o      �I�I 0 dependencies  �L  �K  � ��� l *7��H�G� I *7�F��
�F .sysonotfnull��� ��� TEXT� m  *-�� ���  . . .� �E��D
�E 
appr� m  03�� ��� 8 C h e c k i n g   s c r i p t   d e p e n d e n c i e s�D  �H  �G  � ��� l     �C�B�A�C  �B  �A  � ��� l 8���@�?� X  8���>�� k  N��� ��� r  NU��� m  NQ�� ���  � o      �=�= 0 dependencycheckok  � ��� r  Vg��� I Vc�<��;
�< .sysoexecTEXT���     TEXT� b  V_��� b  V[��� m  VY�� ��� b i f   [ [   $ ( $ ( $ S H E L L   - i   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p  � o  YZ�:�: 0 
dependency  � m  [^�� ��� V )   = =   ' '   ] ] ;   t h e n   e c h o   n o ;   e l s e   e c h o   y e s ;   f i�;  � o      �9�9 0 dependencycheckok  � ��8� Z  h����7�� = ho��� o  hk�6�6 0 dependencycheckok  � m  kn�� ���  n o� k  r��� ��� I r�5��4
�5 .sysodlogaskr        TEXT� b  r{��� b  rw��� m  ru�� ��� " h o m e b r e w   f o r m u l a  � o  uv�3�3 0 
dependency  � m  wz�� ��� .   i s   m i s s i n g ,   e x i t i n g . . .�4  � ��2� L  ���1�1  �2  �7  � k  ���� ��� l ���0���0  � " display dialog "all good..."   � ��� 8 d i s p l a y   d i a l o g   " a l l   g o o d . . . "� ��/� l ���.���.  �  -   � ���  -�/  �8  �> 0 
dependency  � o  ;>�-�- 0 dependencies  �@  �?  � ��� l ����,�+� I ���*��
�* .sysonotfnull��� ��� TEXT� m  ���� ���  d o n e   ; )� �)��(
�) 
appr� m  ���� ��� 8 C h e c k i n g   s c r i p t   d e p e n d e n c i e s�(  �,  �+  � ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � !  getting size of file/foder   � ��� 6   g e t t i n g   s i z e   o f   f i l e / f o d e r� ��� l ����#�"� r  ����� I ���!�� 
�! .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ��   m  �� � f e c h o   $ ( $ ( $ S H E L L   - i   - c   ' w h i c h   g d u ' )   - s c b   " $ ( d i r n a m e   o  ���� 0 ipp  � m  �� �  ) " / " $ ( b a s e n a m e  � o  ���� 0 ipp  � m  �� � � ) "   |   t a i l   - 1   |   a w k   ' { p r i n t   $ 1 } '   |   w h i l e   r e a d   i   ;   d o   e c h o   $ ( e c h o   " $ i * 1 . 0 "   |   b c   |   c u t   - d ' . '   - f 1     )   ;   d o n e )�   � o      �� 
0 pvsize  �#  �"  � 	 l     �
�  
  display dialog pvsize    � * d i s p l a y   d i a l o g   p v s i z e	  l     ��    return    �  r e t u r n  l     ����  �  �    l �9�� Z  �9� = �� n  �� 1  ���
� 
prun m  ���                                                                                      @ alis    J  macintosh_hd                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d  *System/Applications/Utilities/Terminal.app  / ��   m  ���
� boovtrue O  �"  k  �!!! "#" I �����
� .miscactvnull��� ��� null�  �  # $%$ I ���&�
� .sysodelanull��� ��� nmbr& m  ���� �  % '(' Z  �)*�+) = ��,-, l ��.��
. I ���	/�
�	 .corecnte****       ****/ 2 ���
� 
cwin�  �  �
  - m  ����  * k  ��00 121 I �����
� .aevtrappnull��� ��� null�  �  2 343 I ����� 
� .miscactvnull��� ��� null�  �   4 565 l ����78��  7 J Dtell application "System Events" to keystroke "n" using command down   8 �99 � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " n "   u s i n g   c o m m a n d   d o w n6 :��: I ����;��
�� .sysodelanull��� ��� nmbr; m  ��<< ?���������  ��  �  + k  �== >?> O �@A@ I ���BC
�� .prcskprsnull���     ctxtB m  �DD �EE  nC ��F��
�� 
faalF J  GG HIH m  ��
�� eMdsKoptI J��J m  
��
�� eMdsKcmd��  ��  A m  ��KK�                                                                                  sevs  alis    \  macintosh_hd                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��  ? L��L I ��M��
�� .sysodelanull��� ��� nmbrM m  NN ?���������  ��  ( O��O I !��P��
�� .sysodelanull��� ��� nmbrP m  QQ ?�      ��  ��    m  ��RR�                                                                                      @ alis    J  macintosh_hd                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d  *System/Applications/Utilities/Terminal.app  / ��  �   O  %9STS k  +8UU VWV I +0������
�� .miscactvnull��� ��� null��  ��  W X��X I 18��Y��
�� .sysodelanull��� ��� nmbrY m  14ZZ ?�      ��  ��  T m  %([[�                                                                                      @ alis    J  macintosh_hd                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d  *System/Applications/Utilities/Terminal.app  / ��  �  �   \]\ l     ��������  ��  ��  ] ^_^ l :�`����` O  :�aba k  @�cc ded I @E������
�� .miscactvnull��� ��� null��  ��  e fgf l FF��hi��  h J Dtell application "System Events" to keystroke "t" using command down   i �jj � t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " t "   u s i n g   c o m m a n d   d o w ng klk l FF��mn��  m L Frepeat while contents of selected tab of window 1 starts with linefeed   n �oo � r e p e a t   w h i l e   c o n t e n t s   o f   s e l e c t e d   t a b   o f   w i n d o w   1   s t a r t s   w i t h   l i n e f e e dl pqp l FF��rs��  r  
	delay 1.5   s �tt  	 d e l a y   1 . 5q uvu l FF��wx��  w  
end repeat   x �yy  e n d   r e p e a tv z{z l FF��������  ��  ��  { |}| I FM��~��
�� .sysodelanull��� ��� nmbr~ m  FI ?�      ��  } ��� l NN��������  ��  ��  � ��� l NN������  � #  using gui input for password   � ��� :   u s i n g   g u i   i n p u t   f o r   p a s s w o r d� ��� l NN������  ���do script "printf '\\ec' && echo '' && echo -e '\\033[1mstarting encryption...\\033[0m'; if [[ $($($SHELL -l -c 'which brew') list | grep gnu-tar) == '' ]] || [[ $($($SHELL -l -c 'which brew') list | grep pigz) == '' ]] || [[ $($($SHELL -l -c 'which brew') list | grep pv) == '' ]] || [[ $($($SHELL -l -c 'which brew') list | grep coreutils) == '' ]] || [[ $($($SHELL -l -c 'which brew') list | grep gnupg) == '' ]]; then echo at least one homebrew tool of gnu-tar, pigz, pv and coreutils is missing, exiting... && exit; else echo ''; echo archiving \"$(dirname " & ipp & ")\"/\"$(basename " & ipp & ")\"/;printf '%-10s' 'to' \"$(echo " & opp & ")\" && echo; pushd \"$(dirname " & ipp & ")\" 1> /dev/null; $($SHELL -l -c 'which gtar') -cpf - \"$(basename " & ipp & ")\" | $($SHELL -l -c 'which pv') -s " & pvsize & " | $($SHELL -l -c 'which pigz') --best | $($SHELL -l -c 'which gpg') --batch --yes --quiet --symmetric --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --s2k-count 65536 --compress-algo 0 -o \"$(echo " & opp & ")\"; popd 1> /dev/null && echo '' && echo 'testing integrity of file(s)' && echo '' && echo -n \"$(basename " & opp & ")\"'... ' && $($SHELL -l -c 'which gpg') --quiet -d \"$(echo " & opp & ")\" | $($SHELL -l -c 'which unpigz') | $($SHELL -l -c 'which gtar') -tvv >/dev/null 2>&1 && echo -e 'file is \\033[1;32mOK\\033[0m' || echo -e 'file is \\033[1;31mINVALID\\033[0m'; echo ''; echo 'done ;)'; echo ''; fi" in selected tab of front window   � ���z d o   s c r i p t   " p r i n t f   ' \ \ e c '   & &   e c h o   ' '   & &   e c h o   - e   ' \ \ 0 3 3 [ 1 m s t a r t i n g   e n c r y p t i o n . . . \ \ 0 3 3 [ 0 m ' ;   i f   [ [   $ ( $ ( $ S H E L L   - l   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p   g n u - t a r )   = =   ' '   ] ]   | |   [ [   $ ( $ ( $ S H E L L   - l   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p   p i g z )   = =   ' '   ] ]   | |   [ [   $ ( $ ( $ S H E L L   - l   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p   p v )   = =   ' '   ] ]   | |   [ [   $ ( $ ( $ S H E L L   - l   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p   c o r e u t i l s )   = =   ' '   ] ]   | |   [ [   $ ( $ ( $ S H E L L   - l   - c   ' w h i c h   b r e w ' )   l i s t   |   g r e p   g n u p g )   = =   ' '   ] ] ;   t h e n   e c h o   a t   l e a s t   o n e   h o m e b r e w   t o o l   o f   g n u - t a r ,   p i g z ,   p v   a n d   c o r e u t i l s   i s   m i s s i n g ,   e x i t i n g . . .   & &   e x i t ;   e l s e   e c h o   ' ' ;   e c h o   a r c h i v i n g   \ " $ ( d i r n a m e   "   &   i p p   &   " ) \ " / \ " $ ( b a s e n a m e   "   &   i p p   &   " ) \ " / ; p r i n t f   ' % - 1 0 s '   ' t o '   \ " $ ( e c h o   "   &   o p p   &   " ) \ "   & &   e c h o ;   p u s h d   \ " $ ( d i r n a m e   "   &   i p p   &   " ) \ "   1 >   / d e v / n u l l ;   $ ( $ S H E L L   - l   - c   ' w h i c h   g t a r ' )   - c p f   -   \ " $ ( b a s e n a m e   "   &   i p p   &   " ) \ "   |   $ ( $ S H E L L   - l   - c   ' w h i c h   p v ' )   - s   "   &   p v s i z e   &   "   |   $ ( $ S H E L L   - l   - c   ' w h i c h   p i g z ' )   - - b e s t   |   $ ( $ S H E L L   - l   - c   ' w h i c h   g p g ' )   - - b a t c h   - - y e s   - - q u i e t   - - s y m m e t r i c   - - s 2 k - c i p h e r - a l g o   A E S 2 5 6   - - s 2 k - d i g e s t - a l g o   S H A 5 1 2   - - s 2 k - c o u n t   6 5 5 3 6   - - c o m p r e s s - a l g o   0   - o   \ " $ ( e c h o   "   &   o p p   &   " ) \ " ;   p o p d   1 >   / d e v / n u l l   & &   e c h o   ' '   & &   e c h o   ' t e s t i n g   i n t e g r i t y   o f   f i l e ( s ) '   & &   e c h o   ' '   & &   e c h o   - n   \ " $ ( b a s e n a m e   "   &   o p p   &   " ) \ " ' . . .   '   & &   $ ( $ S H E L L   - l   - c   ' w h i c h   g p g ' )   - - q u i e t   - d   \ " $ ( e c h o   "   &   o p p   &   " ) \ "   |   $ ( $ S H E L L   - l   - c   ' w h i c h   u n p i g z ' )   |   $ ( $ S H E L L   - l   - c   ' w h i c h   g t a r ' )   - t v v   > / d e v / n u l l   2 > & 1   & &   e c h o   - e   ' f i l e   i s   \ \ 0 3 3 [ 1 ; 3 2 m O K \ \ 0 3 3 [ 0 m '   | |   e c h o   - e   ' f i l e   i s   \ \ 0 3 3 [ 1 ; 3 1 m I N V A L I D \ \ 0 3 3 [ 0 m ' ;   e c h o   ' ' ;   e c h o   ' d o n e   ; ) ' ;   e c h o   ' ' ;   f i "   i n   s e l e c t e d   t a b   o f   f r o n t   w i n d o w� ��� l NN������  � !  using own password upfornt   � ��� 6   u s i n g   o w n   p a s s w o r d   u p f o r n t� ��� I N�����
�� .coredoscnull��� ��� ctxt� b  N���� b  N���� b  N���� b  N���� b  N���� b  N���� b  N���� b  N}��� b  Ny��� b  Nu��� b  Nq��� b  Nm��� b  Ni��� b  Ne��� b  Na��� b  N]��� b  NY��� b  NU��� m  NQ�� ���� p r i n t f   ' \ e c '   & &   e c h o   ' '   & &   e c h o   - e   ' \ 0 3 3 [ 1 m s t a r t i n g   e n c r y p t i o n . . . \ 0 3 3 [ 0 m ' ;   e c h o   ' '   & &   e c h o   ' p l e a s e   s e t   e n c r y p t i o n   p a s s w o r d . . . '   & &   G P G _ P A S S W O R D = '         '   & &   w h i l e   [ [   $ G P G _ P A S S W O R D   ! =   $ G P G _ P A S S W O R D 2   ] ]   | |   [ [   $ G P G _ P A S S W O R D   = =   ' '   ] ] ;   d o   s t t y   - e c h o   & &   t r a p   ' s t t y   e c h o '   E X I T   & &   p r i n t f   ' g p g   p a s s w o r d :   '   & &   r e a d   - r   $ @   G P G _ P A S S W O R D   & &   p r i n t f   '   '   & &   e c h o   ' '   & &   p r i n t f   ' r e - e n t e r   g p g   p a s s w o r d :   '   & &   r e a d   - r   $ @   G P G _ P A S S W O R D 2   & &   s t t y   e c h o   & &   t r a p   -   E X I T   & &   e c h o   ' ' ;   d o n e   & &   e c h o   ' ' ;   e c h o   a r c h i v i n g   " $ ( d i r n a m e  � o  QT���� 0 ipp  � m  UX�� ���  ) " / " $ ( b a s e n a m e  � o  Y\���� 0 ipp  � m  ]`�� ��� @ ) " / ; p r i n t f   ' % - 1 0 s '   ' t o '   " $ ( e c h o  � o  ad���� 0 opp  � m  eh�� ��� @ ) "   & &   e c h o   ' ' ;   p u s h d   " $ ( d i r n a m e  � o  il���� 0 ipp  � m  mp�� ��� R ) "   1 >   / d e v / n u l l ;   g t a r   - c p f   -   " $ ( b a s e n a m e  � o  qt���� 0 ipp  � m  ux�� ���  ) "   |   p v   - s  � o  y|���� 
0 pvsize  � m  }��� ���f   |   p i g z   - - b e s t   |   g p g   - - b a t c h   - - y e s   - - q u i e t   - - s y m m e t r i c   - - p a s s p h r a s e = $ G P G _ P A S S W O R D   - - s 2 k - c i p h e r - a l g o   A E S 2 5 6   - - s 2 k - d i g e s t - a l g o   S H A 5 1 2   - - s 2 k - c o u n t   6 5 5 3 6   - - c o m p r e s s - a l g o   0   - o   " $ ( e c h o  � o  ������ 0 opp  � m  ���� ��� � ) " ;   p o p d   1 >   / d e v / n u l l   & &   e c h o   ' '   & &   e c h o   ' t e s t i n g   i n t e g r i t y   o f   f i l e ( s ) '   & &   e c h o   ' '   & &   e c h o   - n   " $ ( b a s e n a m e  � o  ������ 0 opp  � m  ���� ��� � ) " ' . . .   '   & &   b u i l t i n   e c h o   $ G P G _ P A S S W O R D   |   g p g   - - q u i e t   - - b a t c h   - - n o - t t y   - - y e s   - - p a s s p h r a s e - f d   0   - d   " $ ( e c h o  � o  ������ 0 opp  � m  ���� ���@ ) "   |   u n p i g z   |   g t a r   - t v v   > / d e v / n u l l   2 > & 1   & &   e c h o   - e   ' f i l e   i s   \ 0 3 3 [ 1 ; 3 2 m O K \ 0 3 3 [ 0 m '   | |   e c h o   - e   ' f i l e   i s   \ 0 3 3 [ 1 ; 3 1 m I N V A L I D \ 0 3 3 [ 0 m ' ;   e c h o   ' ' ;   e c h o   ' d o n e   ; ) ' ;   e c h o   ' '� �����
�� 
kfil� n  ����� 1  ����
�� 
tcnt� 4 �����
�� 
cwin� m  ������ ��  � ���� l ����������  ��  ��  ��  b m  :=���                                                                                      @ alis    J  macintosh_hd                   BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    m a c i n t o s h _ h d  *System/Applications/Utilities/Terminal.app  / ��  ��  ��  _ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  ## documentation   � ���   # #   d o c u m e n t a t i o n� ��� l     ������  � !  \" keeping spaces alive \"   � ��� 6   \ "   k e e p i n g   s p a c e s   a l i v e   \ "� ��� l     ��������  ��  ��  � ��� l     ������  � E ? using which to detect the install path of the homebrew command   � ��� ~   u s i n g   w h i c h   t o   d e t e c t   t h e   i n s t a l l   p a t h   o f   t h e   h o m e b r e w   c o m m a n d� ��� l     ��������  ��  ��  � ��� l     ������  � ? 9 use SHELL -i -c in do shell script (sources config file)   � ��� r   u s e   S H E L L   - i   - c   i n   d o   s h e l l   s c r i p t   ( s o u r c e s   c o n f i g   f i l e )� ��� l     ������  � y s use SHELL -l -c or just the command in do script (as it is run in terminal and sources config files automatically)   � ��� �   u s e   S H E L L   - l   - c   o r   j u s t   t h e   c o m m a n d   i n   d o   s c r i p t   ( a s   i t   i s   r u n   i n   t e r m i n a l   a n d   s o u r c e s   c o n f i g   f i l e s   a u t o m a t i c a l l y )� ���� l     ��������  ��  ��  ��       ������  � ��
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  ��   ��  K��  ���  �    �  �  �  �  �   � �		 �

 � �  ^����  ��  ��  � ���� 0 
dependency  � f����  ���� )�� .������ V e���������� o �� ��� ��������� � ����� � ����������� ����������������������������~�}�|��{��������z�y�x�w�v<D�u�t�s�rQ�����������q�p�o
�� misccura
�� .miscactvnull��� ��� null��  0 thechoiceslist theChoicesList
�� 
prmp
�� 
inSL�� 
�� .gtqpchltns    @   @ ns  �� 0 	inputtype 	inputType
�� 
dflc
�� afdrdesk
�� .earsffdralis        afdr
�� .sysostdfalis    ��� null�� 0 	inputitem 	inputItem
�� .sysostflalis    ��� null
�� .sysodlogaskr        TEXT
�� 
posx��  0 posixinputitem posixinputItem
�� 
strq�� 0 ipp  
�� .sysoexecTEXT���     TEXT�� "0 defaultsavename defaultSaveName�� "0 defaultsavepath defaultSavePath
�� 
psxf
�� 
alis�� 80 defaultsavepathapplescript defaultSavePathApplescript
�� 
prmt
�� 
dfnm�� 
�� .sysonwflfile    ��� null�� 0 filesave fileSave
�� 
psxp�� 0 opp  �� �� 0 dependencies  
�� 
appr
� .sysonotfnull��� ��� TEXT
�~ 
kocl
�} 
cobj
�| .corecnte****       ****�{ 0 dependencycheckok  �z 
0 pvsize  
�y 
prun
�x .sysodelanull��� ��� nmbr
�w 
cwin
�v .aevtrappnull��� ��� null
�u 
faal
�t eMdsKopt
�s eMdsKcmd
�r .prcskprsnull���     ctxt
�q 
kfil
�p 
tcnt
�o .coredoscnull��� ��� ctxt���� *j UO��lvE�O�����kv� 
E�O��kv  *����j � E` Y ,�a kv  *�a ��j � E` Y a j OhOa  _ a ,E` UO_ a ,E` Oa _ %a %j E`  Oa !_ %a "%j E` #O*a $_ #/a %&E` &O*a 'a (a )_  �_ &a * +E` ,O_ ,a -,E` ,O_ ,a . _ ,a /%E` ,Y hO_ ,a -,a ,E` 0Oa 1a 2a 3a 4a 5a 6vE` 7Oa 8a 9a :l ;O R_ 7[a <a =l >kh  a ?E` @Oa A�%a B%j E` @O_ @a C  a D�%a E%j OhY h[OY��Oa Fa 9a Gl ;Oa H_ %a I%_ %a J%j E` KOa La M,e  ea L [*j Okj NO*a O-j >j  *j PO*j Oa Qj NY #a  a Ra Sa Ta Ulvl VUOa Qj NOa Wj NUY a L *j Oa Wj NUOa L n*j Oa Xj NOa Y_ %a Z%_ %a [%_ 0%a \%_ %a ]%_ %a ^%_ K%a _%_ 0%a `%_ 0%a a%_ 0%a b%a c*a Ok/a d,l eOPU ascr  ��ޭ