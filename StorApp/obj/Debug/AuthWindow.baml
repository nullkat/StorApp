   M S B A M L   `   `   `  ����B  >StorApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:StorAppStorApp  5   	       StorApp.AuthWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:StorApp     5   	     � Title$  
AuthWindow��5   	   $	��400��6   $	��250��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $��24 �6   �� 5      $��* �6   .+�5   
   �� $��0��6   ���#FEFFB7$��Center=�67   $��Stretch=�6R   $��24��6p    �� Orientation$ 
Horizontal=�6|   .+�5      �� $��/img/logo.png��6   $��Uniform=�6+    �� StretchDirection$
 Both=�6=   6W   �� 5      $��Authorization��6   $��Serifiqo 4F Free Capitals)�6-   $
��Bold"�6T   $��14(�6f   $��Center=�6t   $��0,4,0,0q�6�   5      �� 5   
   $��1��6   $ Vertical=�6"   $��Center=�69   $��Stretch=�6T   .+�5      �� $��/img/logo.png��6   $��Uniform=�6+   $
 Both=�6=   6W   �� 5      $��Login��6   $��12(�6%   $��Center=�63   $��Serifiqo 4F Free Capitals)�6N   $
��Bold"�6u   $��Center=�6�   6�   �� 5      -   5        $��LoginBox��5      $��	25,0,25,5q�6&   ���#FEFFB7��6N   Z� .��6f    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         RenderingBias$ Performance=�6'      Opacity$	 0.2Q�6C   .��5   "   5      �� 5      $��Password��6   $��12(�6(   $��Center=�66   $��Serifiqo 4F Free Capitals)�6Q   $
��Bold"�6x   $��Center=�6�   6�   G� 5      -   5        $��PasswordBox��5      ���#FEFFB7$��	25,0,25,0q�6B   ��6U   Z�  5        5      $ Performance=�6'   $	 0.2Q�6C   5      �� 5       -   5        $��
50,40,50,0q�5       $��Authorization��6)   ���#03DAC5��6p   Z�  � 	Resources 5!       �� 
TargetType	 �� Property
 �� Value��%_   '��       �� 5"      " ��6   .�5#      �� 	 �@��CornerRadius$
 10��69   5$      5%       5&        5'      $ Performance=�6'   $	 0.2Q�6C   5)      5*      5+      5,      