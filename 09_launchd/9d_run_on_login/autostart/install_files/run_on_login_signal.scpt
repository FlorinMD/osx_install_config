FasdUAS 1.101.10   ��   ��    k             l    � ����  Q     �  	 
  k    �       l   ��������  ��  ��        l   ��  ��    3 - taking actions on changing network locations     �   Z   t a k i n g   a c t i o n s   o n   c h a n g i n g   n e t w o r k   l o c a t i o n s      l   ��  ��      run the script at login     �   0   r u n   t h e   s c r i p t   a t   l o g i n      l   ��������  ��  ��        l   ��  ��    � �tell application "Finder" to open (POSIX path of (path to home folder)) & "/Library/Scripts/run_on_network_change.app" as POSIX file     �   t e l l   a p p l i c a t i o n   " F i n d e r "   t o   o p e n   ( P O S I X   p a t h   o f   ( p a t h   t o   h o m e   f o l d e r ) )   &   " / L i b r a r y / S c r i p t s / r u n _ o n _ n e t w o r k _ c h a n g e . a p p "   a s   P O S I X   f i l e       l   ��������  ��  ��      ! " ! r     # $ # m     % % � & &  S i g n a l $ o      ���� 0 appname   "  ' ( ' Z    # ) *�� + ) =    , - , n     . / . 1    ��
�� 
prun / 4    �� 0
�� 
capp 0 o   	 
���� 0 appname   - m    ��
�� boovtrue * k     1 1  2 3 2 l   �� 4 5��   4  return "running"    5 � 6 6   r e t u r n   " r u n n i n g " 3  7�� 7 l   �� 8 9��   8  -    9 � : :  -��  ��   + k    # ; ;  < = < l   �� > ?��   > ( "tell application appname to launch    ? � @ @ D t e l l   a p p l i c a t i o n   a p p n a m e   t o   l a u n c h =  A�� A O   # B C B I   "������
�� .aevtoappnull  �   � ****��  ��   C 4    �� D
�� 
capp D o    ���� 0 appname  ��   (  E F E l  $ $��������  ��  ��   F  G H G r   $ ' I J I m   $ % K K � L L  y e s J o      ���� 0 appisvisible AppIsVisible H  M N M r   ( + O P O m   ( )����   P o      ���� 0 thenum theNum N  Q R Q l  , ,�� S T��   S       T � U U    R  V W V V   , � X Y X k   < � Z Z  [ \ [ O   < � ] ^ ] k   @ � _ _  ` a ` O  @ J b c b I  D I������
�� .miscactvnull��� ��� obj ��  ��   c m   @ A d d�                                                                                  MACS  alis    @  macintosh_hd                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    m a c i n t o s h _ h d  &System/Library/CoreServices/Finder.app  / ��   a  e f e I  K P�� g��
�� .sysodelanull��� ��� nmbr g m   K L h h ?�      ��   f  i j i O  Q ^ k l k I  X ]������
�� .miscactvnull��� ��� obj ��  ��   l 4   Q U�� m
�� 
capp m o   S T���� 0 appname   j  n o n I  _ d�� p��
�� .sysodelanull��� ��� nmbr p m   _ ` q q ?�      ��   o  r s r r   e q t u t m   e f��
�� boovfals u l      v���� v n       w x w 1   l p��
�� 
pvis x 4   f l�� y
�� 
pcap y o   j k���� 0 appname  ��  ��   s  z { z I  r y�� |��
�� .sysodelanull��� ��� nmbr | m   r u } } ?���������   {  ~�� ~ Z   z �  ��� �  =  z � � � � n   z � � � � 1   � ���
�� 
pvis � 4   z ��� �
�� 
pcap � o   ~ ���� 0 appname   � m   � ���
�� boovtrue � r   � � � � � m   � � � � � � �  y e s � o      ���� 0 appisvisible AppIsVisible��   � r   � � � � � m   � � � � � � �  n o � o      ���� 0 appisvisible AppIsVisible��   ^ m   < = � ��                                                                                  sevs  alis    \  macintosh_hd                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��   \  � � � r   � � � � � [   � � � � � o   � ����� 0 thenum theNum � m   � �����  � o      ���� 0 thenum theNum �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?���������  ��   Y F   0 ; � � � =   0 3 � � � o   0 1���� 0 appisvisible AppIsVisible � m   1 2 � � � � �  y e s � A   6 9 � � � o   6 7���� 0 thenum theNum � m   7 8����  W  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  	delay 0.1    � � � �  d e l a y   0 . 1 �  � � � l  � ��� � ���   � N Htell application "Finder" to set the visible of process appname to false    � � � � � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   t h e   v i s i b l e   o f   p r o c e s s   a p p n a m e   t o   f a l s e �  � � � l  � ��� � ���   �  	delay 0.1    � � � �  d e l a y   0 . 1 �  � � � l  � ��� � ���   �  tell application appname    � � � � 0 t e l l   a p p l i c a t i o n   a p p n a m e �  � � � l  � ��� � ���   � M G	tell application "System Events" to keystroke "h" using {command down}    � � � � � 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   k e y s t r o k e   " h "   u s i n g   { c o m m a n d   d o w n } �  � � � l  � ��� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l  � ��� � ���   �  delay 1    � � � �  d e l a y   1 �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � h bset SCRIPTTORUN to ((path to home folder) & "Library:Scripts:run_on_network_change.app" as string)    � � � � � s e t   S C R I P T T O R U N   t o   ( ( p a t h   t o   h o m e   f o l d e r )   &   " L i b r a r y : S c r i p t s : r u n _ o n _ n e t w o r k _ c h a n g e . a p p "   a s   s t r i n g ) �  � � � l  � ��� � ���   �   display dialog SCRIPTTORUN    � � � � 4 d i s p l a y   d i a l o g   S C R I P T T O R U N �  � � � l  � ��� � ���   � ) #tell application SCRIPTTORUN to run    � � � � F t e l l   a p p l i c a t i o n   S C R I P T T O R U N   t o   r u n �  ��� � l  � ���������  ��  ��  ��   	 R      ������
�� .ascrerr ****      � ****��  ��   
 k   � � � �  � � � l  � ��� � ���   � " set thisScript to path to me    � � � � 8 s e t   t h i s S c r i p t   t o   p a t h   t o   m e �  � � � l  � ��� � ���   �  run script thisScript    � � � � * r u n   s c r i p t   t h i s S c r i p t �  � � � l  � ��� � ���   �   end current iteration    � � � � ,   e n d   c u r r e n t   i t e r a t i o n �  � � � l  � ��� � ���   �  return    � � � �  r e t u r n �  ��� � l  � ��� � ���   �  -    � � � �  -��  ��  ��     � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � % �����   � ��������
�� .aevtoappnull  �   � ****�� 0 appname  �� 0 appisvisible AppIsVisible�� 0 thenum theNum � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   �   �  %�������� K���� ���~ � d�} h�|�{�z } � � ��y�x�� 0 appname  
�� 
capp
�� 
prun
�� .aevtoappnull  �   � ****�� 0 appisvisible AppIsVisible�� 0 thenum theNum� 
�~ 
bool
�} .miscactvnull��� ��� obj 
�| .sysodelanull��� ��� nmbr
�{ 
pcap
�z 
pvis�y  �x  �� � ��E�O*��/�,e  hY *��/ *j UO�E�OjE�O }h�� 	 ���&� X� *j UO�j O*��/ *j UO�j Of*a �/a ,FOa j O*a �/a ,e  
a E�Y a E�UO�kE�Oa j [OY��OPW X  h��  ascr  ��ޭ