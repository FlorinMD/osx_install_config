FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     	���� 	 r      
  
 I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    d a t e   " + % Y % m % d "��    o      ���� 0 	timestamp 	timeStamp��  ��        l    ����  r        b        b        b        l    ����  l    ����  I   ��  
�� .earsffdralis        afdr  l   	 ����  m    	��
�� afdrdocs��  ��    �� ��
�� 
rtyp  m   
 ��
�� 
TEXT��  ��  ��  ��  ��    m         � ! !  b a c k u p :  m     " " � # #  c a l e n d a r :  o    ���� 0 	timestamp 	timeStamp  o      ���� 0 backup_folder  ��  ��     $ % $ l    &���� & r     ' ( ' l    )���� ) l    *���� * n     + , + 1    ��
�� 
psxp , o    ���� 0 backup_folder  ��  ��  ��  ��   ( o      ���� &0 mybackuppathposix myBackupPathPosix��  ��   %  - . - l   ' /���� / I   '�� 0��
�� .sysoexecTEXT���     TEXT 0 b    # 1 2 1 m     3 3 � 4 4  m k d i r   - p   2 n    " 5 6 5 1     "��
�� 
strq 6 o     ���� &0 mybackuppathposix myBackupPathPosix��  ��  ��   .  7 8 7 l  ( 3 9���� 9 I  ( 3�� :��
�� .sysoexecTEXT���     TEXT : b   ( / ; < ; b   ( - = > = m   ( ) ? ? � @ @  r m   - r f   > n   ) , A B A 1   * ,��
�� 
strq B o   ) *���� &0 mybackuppathposix myBackupPathPosix < m   - . C C � D D  / *��  ��  ��   8  E F E l     ��������  ��  ��   F  G H G l  4 Z I���� I O   4 Z J K J k   : Y L L  M N M I  : ?������
�� .ascrnoop****      � ****��  ��   N  O P O I  @ E������
�� .miscactvnull��� ��� null��  ��   P  Q R Q I  F K�� S��
�� .sysodelanull��� ��� nmbr S m   F G���� ��   R  T�� T r   L Y U V U n   L U W X W 1   Q U��
�� 
pnam X 2   L Q��
�� 
wres V o      ���� 0 calnames calNames��   K m   4 7 Y Y�                                                                                  wrbt  alis    V  macintosh_hd               �2]H+     OCalendar.app                                                     	N��#        ����  	                Applications    �1�=      ��       O  'macintosh_hd:Applications: Calendar.app     C a l e n d a r . a p p    m a c i n t o s h _ h d  Applications/Calendar.app   / ��  ��  ��   H  Z [ Z l     ��������  ��  ��   [  \ ] \ l  [ ^���� ^ O   [ _ ` _ O   a a b a k   l c c  d e d r   l s f g f m   l m��
�� boovtrue g 1   m r��
�� 
pisf e  h i h l  t t��������  ��  ��   i  j k j l  t t�� l m��   l > 8 Left-hand menu of Calendar, containing named calendars	    m � n n p   L e f t - h a n d   m e n u   o f   C a l e n d a r ,   c o n t a i n i n g   n a m e d   c a l e n d a r s 	 k  o p o r   t � q r q n   t � s t s 4   � ��� u
�� 
outl u m   � �����  t n   t � v w v 4   � ��� x
�� 
scra x m   � �����  w n   t � y z y 4   � ��� {
�� 
splg { m   � �����  z n   t � | } | 4   | ��� ~
�� 
splg ~ m    �����  } 4   t |�� 
�� 
cwin  m   x { � � � � �  K a l e n d e r r o      ���� 0 	myoutline 	myOutline p  � � � r   � � � � � n   � � � � � 2  � ���
�� 
crow � o   � ����� 0 	myoutline 	myOutline � o      ���� 0 allrows allRows �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   List of named calendars    � � � � 0   L i s t   o f   n a m e d   c a l e n d a r s �  � � � r   � � � � � e   � � � � n   � � � � � 1   � ���
�� 
valL � n   � � � � � 2   � ���
�� 
uiel � n   � � � � � 4   � ��� �
�� 
uiel � m   � �����  � n   � � � � � 2   � ���
�� 
crow � o   � ����� 0 	myoutline 	myOutline � o      ���� 0 calnamevals calNameVals �  � � � l  � ���������  ��  ��   �  � � � l   � ��� � ���   �]W
		-- Repeat works but uses more gets
		set calNameVals to {}
		repeat with aRow in every row of myOutline
			if exists static text of UI element 1 of aRow then
				set end of calNameVals to value of static text of UI element 1 of aRow
			else
				set end of calNameVals to value of text field of UI element 1 of aRow
			end if
		end repeat
		    � � � �� 
 	 	 - -   R e p e a t   w o r k s   b u t   u s e s   m o r e   g e t s 
 	 	 s e t   c a l N a m e V a l s   t o   { } 
 	 	 r e p e a t   w i t h   a R o w   i n   e v e r y   r o w   o f   m y O u t l i n e 
 	 	 	 i f   e x i s t s   s t a t i c   t e x t   o f   U I   e l e m e n t   1   o f   a R o w   t h e n 
 	 	 	 	 s e t   e n d   o f   c a l N a m e V a l s   t o   v a l u e   o f   s t a t i c   t e x t   o f   U I   e l e m e n t   1   o f   a R o w 
 	 	 	 e l s e 
 	 	 	 	 s e t   e n d   o f   c a l N a m e V a l s   t o   v a l u e   o f   t e x t   f i e l d   o f   U I   e l e m e n t   1   o f   a R o w 
 	 	 	 e n d   i f 
 	 	 e n d   r e p e a t 
 	 	 �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � o i For all named calendars, check whether it's the same name as one of calNames, if so export that calendar    � � � � �   F o r   a l l   n a m e d   c a l e n d a r s ,   c h e c k   w h e t h e r   i t ' s   t h e   s a m e   n a m e   a s   o n e   o f   c a l N a m e s ,   i f   s o   e x p o r t   t h a t   c a l e n d a r �  � � � r   � � � � � m   � �����   � o      ���� 0 	countloop 	countLoop �  ��� � Y   � ��� � ��� � k   � � �  � � � l  � ��� � ���   � $ set countLoop to countLoop + 1    � � � � < s e t   c o u n t L o o p   t o   c o u n t L o o p   +   1 �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 i   � o   � ����� 0 calnamevals calNameVals � o      ���� 0 calname calName �  ��� � X   � ��� � � Z   � � ����� � l  � ����� � =   � � � � c   � � � � � o   � ����� 0 myname myName � m   � ���
�� 
TEXT � c   � � � � o   � ����� 0 calname calName � m   � ��
�� 
TEXT��  ��   � k  
 � �  � � � O   � � � k   � �  � � � I ��~�}
� .miscslctnull���     uiel�~  �}   �  ��| � I �{ ��z
�{ .sysodelanull��� ��� nmbr � m  �y�y �z  �|   � n   � � � 4  �x �
�x 
crow � o  �w�w 0 i   � o  �v�v 0 	myoutline 	myOutline �  � � � I F�u ��t
�u .prcsclicnull��� ��� uiel � n  B � � � 4  ;B�s �
�s 
menI � m  >A � � � � �  E x p o r t i e r e n   & � n  ; � � � 4  6;�r �
�r 
menE � m  9:�q�q  � n  6 � � � 4  /6�p �
�p 
menI � m  25 � � � � �  E x p o r t i e r e n � n  / � � � 4  */�o �
�o 
menE � m  -.�n�n  � n  * � � � 4  #*�m �
�m 
mbri � m  &) � � � � �  A b l a g e � 4  #�l �
�l 
mbar � m  !"�k�k �t   �  � � � I GL�j ��i
�j .sysodelanull��� ��� nmbr � m  GH�h�h �i   �  � � � r  MV � � � [  MR � � � o  MP�g�g 0 	countloop 	countLoop � m  PQ�f�f  � o      �e�e 0 	countloop 	countLoop �  � � � Z  W� �d�c  =  W\ o  WZ�b�b 0 	countloop 	countLoop m  Z[�a�a  k  _�  I _q�`
�` .prcskprsnull���     ctxt m  _b		 �

  g �_�^
�_ 
faal J  em  m  eh�]
�] eMdsKcmd �\ m  hk�[
�[ eMdsKsft�\  �^    I rw�Z�Y
�Z .sysodelanull��� ��� nmbr m  rs�X�X �Y    I x}�W�V
�W .prcskprsnull���     ctxt o  xy�U�U &0 mybackuppathposix myBackupPathPosix�V    I ~��T�S
�T .sysodelanull��� ��� nmbr m  ~�R�R �S   �Q I ���P�O
�P .prcsclicnull��� ��� uiel n  �� 4  ���N
�N 
butT m  �� �  � f f n e n n  �� !  4  ���M"
�M 
sheE" m  ���L�L ! n  ��#$# 4  ���K%
�K 
sheE% m  ���J�J $ 4  ���I&
�I 
cwin& m  ���H�H �O  �Q  �d  �c   � '(' I ���G)�F
�G .sysodelanull��� ��� nmbr) m  ���E�E �F  ( *+* I ���D,-
�D .prcskprsnull���     ctxt, m  ��.. �//  c- �C0�B
�C 
faal0 J  ��11 2�A2 m  ���@
�@ eMdsKcmd�A  �B  + 343 I ���?5�>
�? .sysodelanull��� ��� nmbr5 m  ���=�= �>  4 676 I ���<8�;
�< .prcskprsnull���     ctxt8 b  ��9:9 l ��;�:�9; c  ��<=< o  ���8�8 0 	countloop 	countLoop= m  ���7
�7 
ctxt�:  �9  : m  ��>> �??  _�;  7 @A@ I ���6B�5
�6 .sysodelanull��� ��� nmbrB m  ���4�4 �5  A CDC I ���3EF
�3 .prcskprsnull���     ctxtE m  ��GG �HH  vF �2I�1
�2 
faalI J  ��JJ K�0K m  ���/
�/ eMdsKcmd�0  �1  D LML I ���.N�-
�. .sysodelanull��� ��� nmbrN m  ���,�, �-  M OPO I ��+Q�*
�+ .prcsclicnull��� ��� uielQ n  ��RSR 4  ���)T
�) 
butTT m  ��UU �VV  E x p o r t i e r e nS n  ��WXW 4  ���(Y
�( 
sheEY m  ���'�' X 4  ���&Z
�& 
cwinZ m  ���%�% �*  P [�$[ l 
\]^\ I 
�#_�"
�# .sysodelanull��� ��� nmbr_ m  �!�! �"  ] M G Change the delay time if your computer is running too slow or too fast   ^ �`` �   C h a n g e   t h e   d e l a y   t i m e   i f   y o u r   c o m p u t e r   i s   r u n n i n g   t o o   s l o w   o r   t o o   f a s t�$  ��  ��  �� 0 myname myName � o   � �� �  0 calnames calNames��  �� 0 i   � m   � ���  � l  � �a��a I  � ��b�
� .corecnte****       ****b o   � ��� 0 calnamevals calNameVals�  �  �  ��  ��   b 4   a i�c
� 
prcsc m   e hdd �ee  C a l e n d a r ` m   [ ^ff�                                                                                  sevs  alis    �  macintosh_hd               �2]H+     0System Events.app                                               d����        ����  	                CoreServices    �1�=      ����       0   /   .  =macintosh_hd:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    m a c i n t o s h _ h d  -System/Library/CoreServices/System Events.app   / ��  ��  ��   ] ghg l     ����  �  �  h i�i l 'j��j O  'klk I !&���
� .aevtquitnull��� ��� null�  �  l m  mm�                                                                                  wrbt  alis    V  macintosh_hd               �2]H+     OCalendar.app                                                     	N��#        ����  	                Applications    �1�=      ��       O  'macintosh_hd:Applications: Calendar.app     C a l e n d a r . a p p    m a c i n t o s h _ h d  Applications/Calendar.app   / ��  �  �  �       �no�  n �
� .aevtoappnull  �   � ****o �p��qr�

� .aevtoappnull  �   � ****p k    'ss  tt  uu  $vv  -ww  7xx  Gyy  \zz i�	�	  �  �  q ��� 0 i  � 0 myname myNamer C ������   "� ���� 3�� ? C Y������������f��d���� ����������������������������������� ����� � ���	������������.��>GU����
� .sysoexecTEXT���     TEXT� 0 	timestamp 	timeStamp
� afdrdocs
� 
rtyp
� 
TEXT
� .earsffdralis        afdr�  0 backup_folder  
�� 
psxp�� &0 mybackuppathposix myBackupPathPosix
�� 
strq
�� .ascrnoop****      � ****
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
wres
�� 
pnam�� 0 calnames calNames
�� 
prcs
�� 
pisf
�� 
cwin
�� 
splg
�� 
scra
�� 
outl�� 0 	myoutline 	myOutline
�� 
crow�� 0 allrows allRows
�� 
uiel
�� 
valL�� 0 calnamevals calNameVals�� 0 	countloop 	countLoop
�� .corecnte****       ****
�� 
cobj�� 0 calname calName
�� 
kocl
�� .miscslctnull���     uiel
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel
�� 
faal
�� eMdsKcmd
�� eMdsKsft
�� .prcskprsnull���     ctxt
�� 
sheE
�� 
butT
�� 
ctxt�� 
�� .aevtquitnull��� ��� null�
(�j E�O���l �%�%�%E�O��,E�O���,%j O���,%�%j Oa  !*j O*j Olj O*a -a ,E` UOa �*a a /�e*a ,FO*a a /a k/a k/a k/a k/E`  O_  a !-E` "O_  a !-a #k/a #-a $,EE` %OjE` &OVl_ %j 'kh  _ %a (�/a (k/E` )O/_ [a *a (l 'kh ��&_ )�& 
_  a !�/ *j +Olj UO*a ,k/a -a ./a /k/a 0a 1/a /k/a 0a 2/j 3Olj O_ &kE` &O_ &k  Ea 4a 5a 6a 7lvl 8Olj O�j 8Olj O*a k/a 9k/a 9k/a :a ;/j 3Y hOkj Oa <a 5a 6kvl 8Okj O_ &a =&a >%j 8Okj Oa ?a 5a 6kvl 8Okj O*a k/a 9k/a :a @/j 3Oa Aj Y h[OY��[OY��UUOa  *j BU ascr  ��ޭ