   M S B A M L   `   `   `  ���� B  >StorApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:StorAppStorApp      StorApp.AuthWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:StorApp       � Title$  
AuthWindow��$	��400��$	��250��.���  � RowDefinitions �� $��24 ��� $��* �.+��� $��0�����#FEFFB7$��Center=�$��Stretch=�$��24�� �� Orientation$ 
Horizontal=�.+��� $��/img/logo.png��$��Uniform=� �� StretchDirection$
 Both=��� $��Authorization��$��Serifiqo 4F Free Capitals)�$
��Bold"�$��14(�$��Center=�$��0,4,0,0q��� $��1��$ Vertical=�$��Center=�$��Stretch=�.+��� $��/img/logo.png��$��Uniform=�$
 Both=��� $��Login��$��12(�$��Center=�$��Serifiqo 4F Free Capitals)�$
��Bold"�$��Center=��� -   $��LoginBox��$��	25,0,25,5q����#FEFFB7��Z� .�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     RenderingBias$ Performance=�   Opacity$	 0.2Q�.���� $��Password��$��12(�$��Center=�$��Serifiqo 4F Free Capitals)�$
��Bold"�$��Center=�G� -   $��PasswordBox�����#FEFFB7$��	25,0,25,0q���Z�    $ Performance=�$	 0.2Q��� -   $��
50,40,50,0q�$��Authorization�����#03DAC5��Z�  � 	Resources  �� 
TargetType	 �� Property
 �� Value��%:   '��       �� " ��.��� 	 �@��CornerRadius$
 10��   $ Performance=�$	 0.2Q�