FasdUAS 1.101.10   ��   ��    k             l     �� ��       iTunesControl.applescript       	  l     �� 
��   
   KeyboardMaestro    	     l     ������  ��        l     �� ��    7 1  Created by Michael Kamprath on Sat Oct 26 2002.         l     �� ��    B <  Copyright (c) 2001 __MyCompanyName__. All rights reserved.         l     ������  ��        l     ������  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    I    �� ��
�� .sysodlogaskr        TEXT  m        u oThis script is part of Keyboard Maestro's iTune support library. Do not remove from Keyboard Maestro's package!   ��        l     ������  ��         l     ������  ��      ! " ! i     # $ # I      �������� .0 itunestoggleplaypause iTunesTogglePlayPause��  ��   $ O     
 % & % I   	������
�� .hookPlPs****      � ****��  ��   & m      ' '�null     ߀��  ^
iTunes.app��p� �0�L��� 7��ߠ    Np    )       �(�K� ���� Ohook   alis    :  Monkey                     �n?�H+    ^
iTunes.app                                                      �.���a        ����  	                Applications    �m�      ����      ^  Monkey:Applications:iTunes.app   
 i T u n e s . a p p    M o n k e y  Applications/iTunes.app   / ��   "  ( ) ( l     ������  ��   )  * + * i     , - , I      �������� 0 
itunesstop 
iTunesStop��  ��   - O     
 . / . I   	������
�� .hookStop****      � ****��  ��   / m      ' +  0 1 0 l     ������  ��   1  2 3 2 i     4 5 4 I      �������� 0 itunesrewind iTunesRewind��  ��   5 O     
 6 7 6 I   	������
�� .hookRwnd****      � ****��  ��   7 m      ' 3  8 9 8 l     ������  ��   9  : ; : i     < = < I      �������� &0 itunesfastforward iTunesFastForward��  ��   = O     
 > ? > I   	������
�� .hookFast****      � ****��  ��   ? m      ' ;  @ A @ l     ������  ��   A  B C B i     D E D I      �������� 0 itunespause iTunesPause��  ��   E O     
 F G F I   	������
�� .hookPaus****      � ****��  ��   G m      ' C  H I H l     ������  ��   I  J K J i     L M L I      �������� "0 itunesnexttrack iTunesNextTrack��  ��   M O     
 N O N I   	������
�� .hookNextnull        null��  ��   O m      ' K  P Q P l     ������  ��   Q  R S R i     T U T I      �������� "0 itunesbacktrack iTunesBackTrack��  ��   U O     
 V W V I   	������
�� .hookBack****      � ****��  ��   W m      ' S  X Y X l     ������  ��   Y  Z [ Z i     # \ ] \ I      �������� .0 itunesplayrandomtrack iTunesPlayRandomTrack��  ��   ] k      ^ ^  _ ` _ q       a a ������ *0 libraryplaylistname libraryPlayListName��   `  b c b l     ������  ��   c  d e d O      f g f r     h i h l    j�� j n     k l k 1    ��
�� 
pnam l n     m n m 4   �� o
�� 
cPly o m   	 
����  n 4   �� p
�� 
cSrc p m    ���� ��   i o      ���� *0 libraryplaylistname libraryPlayListName g m      ' e  q�� q n    r s r I    �� t���� F0 !itunesplayrandomtrackfromplaylist !iTunesPlayRandomTrackFromPlaylist t  u�� u o    ���� *0 libraryplaylistname libraryPlayListName��  ��   s  f    ��   [  v w v l     ������  ��   w  x y x i   $ ' z { z I      �� |���� F0 !itunesplayrandomtrackfromplaylist !iTunesPlayRandomTrackFromPlaylist |  }�� } o      ����  0 inplaylistname inPlayListName��  ��   { O      ~  ~ O     � � � O     � � � I   �� ���
�� .hookPlay****      � **** � 3    ��
�� 
cTrk��   � 4    �� �
�� 
cPly � o    ����  0 inplaylistname inPlayListName � 4   �� �
�� 
cSrc � m    ����   m      ' y  � � � l     ������  ��   �  � � � i   ( + � � � I      �� ����� "0 itunesplaytrack iTunesPlayTrack �  ��� � o      ���� 0 intrackname inTrackName��  ��   � O      � � � O     � � � O     � � � I   �� ���
�� .hookPlay****      � **** � 4    �� �
�� 
cTrk � o    ���� 0 intrackname inTrackName��   � 4   �� �
�� 
cPly � m    ����  � 4   �� �
�� 
cSrc � m    ����  � m      ' �  � � � l     ������  ��   �  � � � i   , / � � � I      �� ����� (0 itunesplayplaylist iTunesPlayPlayList �  ��� � o      ����  0 inplaylistname inPlayListName��  ��   � O      � � � O     � � � I   � ��~
� .hookPlay****      � **** � 4    �} �
�} 
cPly � o    �|�|  0 inplaylistname inPlayListName�~   � 4   �{ �
�{ 
cSrc � m    �z�z  � m      ' �  � � � l     �y�x�y  �x   �  � � � i   0 3 � � � I      �w�v�u�w ,0 itunesincreasevolume iTunesIncreaseVolume�v  �u   � O      � � � r     � � � [    	 � � � 1    �t
�t 
pVol � m    �s�s 
 � 1   	 �r
�r 
pVol � m      ' �  � � � l     �q�p�q  �p   �  ��o � i   4 7 � � � I      �n�m�l�n ,0 itunesdecreasevolume iTunesDecreaseVolume�m  �l   � O      � � � r     � � � \    	 � � � 1    �k
�k 
pVol � m    �j�j 
 � 1   	 �i
�i 
pVol � m      '�o       �h � � � � � � � � � � � � � � ��h   � �g�f�e�d�c�b�a�`�_�^�]�\�[�Z
�g .aevtoappnull  �   � ****�f .0 itunestoggleplaypause iTunesTogglePlayPause�e 0 
itunesstop 
iTunesStop�d 0 itunesrewind iTunesRewind�c &0 itunesfastforward iTunesFastForward�b 0 itunespause iTunesPause�a "0 itunesnexttrack iTunesNextTrack�` "0 itunesbacktrack iTunesBackTrack�_ .0 itunesplayrandomtrack iTunesPlayRandomTrack�^ F0 !itunesplayrandomtrackfromplaylist !iTunesPlayRandomTrackFromPlaylist�] "0 itunesplaytrack iTunesPlayTrack�\ (0 itunesplayplaylist iTunesPlayPlayList�[ ,0 itunesincreasevolume iTunesIncreaseVolume�Z ,0 itunesdecreasevolume iTunesDecreaseVolume � �Y �X�W � ��V
�Y .aevtoappnull  �   � ****�X  �W   �   �  �U
�U .sysodlogaskr        TEXT�V �j  � �T $�S�R � ��Q�T .0 itunestoggleplaypause iTunesTogglePlayPause�S  �R   �   �  '�P
�P .hookPlPs****      � ****�Q � *j U � �O -�N�M � ��L�O 0 
itunesstop 
iTunesStop�N  �M   �   �  '�K
�K .hookStop****      � ****�L � *j U � �J 5�I�H � ��G�J 0 itunesrewind iTunesRewind�I  �H   �   �  '�F
�F .hookRwnd****      � ****�G � *j U � �E =�D�C � ��B�E &0 itunesfastforward iTunesFastForward�D  �C   �   �  '�A
�A .hookFast****      � ****�B � *j U � �@ E�?�> � ��=�@ 0 itunespause iTunesPause�?  �>   �   �  '�<
�< .hookPaus****      � ****�= � *j U � �; M�:�9 � ��8�; "0 itunesnexttrack iTunesNextTrack�:  �9   �   �  '�7
�7 .hookNextnull        null�8 � *j U � �6 U�5�4 � ��3�6 "0 itunesbacktrack iTunesBackTrack�5  �4   �   �  '�2
�2 .hookBack****      � ****�3 � *j U � �1 ]�0�/ � ��.�1 .0 itunesplayrandomtrack iTunesPlayRandomTrack�0  �/   � �-�- *0 libraryplaylistname libraryPlayListName �  '�,�+�*�)
�, 
cSrc
�+ 
cPly
�* 
pnam�) F0 !itunesplayrandomtrackfromplaylist !iTunesPlayRandomTrackFromPlaylist�. � *�k/�k/�,E�UO)�k+  � �( {�'�& � ��%�( F0 !itunesplayrandomtrackfromplaylist !iTunesPlayRandomTrackFromPlaylist�' �$ ��$  �  �#�#  0 inplaylistname inPlayListName�&   � �"�"  0 inplaylistname inPlayListName �  '�!� ��
�! 
cSrc
�  
cPly
� 
cTrk
� .hookPlay****      � ****�% � *�k/ *�/ 	*�.j UUU � � ��� � ��� "0 itunesplaytrack iTunesPlayTrack� � ��  �  �� 0 intrackname inTrackName�   � �� 0 intrackname inTrackName �  '����
� 
cSrc
� 
cPly
� 
cTrk
� .hookPlay****      � ****� � *�k/ *�k/ 
*�/j UUU � � ��� � ��� (0 itunesplayplaylist iTunesPlayPlayList� � ��  �  ��  0 inplaylistname inPlayListName�   � ��  0 inplaylistname inPlayListName �  '��
�	
� 
cSrc
�
 
cPly
�	 .hookPlay****      � ****� � *�k/ 
*�/j UU � � ��� � ��� ,0 itunesincreasevolume iTunesIncreaseVolume�  �   �   �  '��
� 
pVol� 
� � *�,�*�,FU � � ���  � ���� ,0 itunesdecreasevolume iTunesDecreaseVolume�  �    �   �  '����
�� 
pVol�� 
�� � *�,�*�,FU ascr  ��ޭ