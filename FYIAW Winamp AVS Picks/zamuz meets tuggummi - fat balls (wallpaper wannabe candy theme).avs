Nullsoft AVS Preset 0.2    �   �   >  fat balls  < wallpaper wannabe rmx >
>  original by tuggummi
>  remix by zamuz

>  i just had to remix this one. added some eye.candy of mine to the awesome fat balls by my pal tugg. i love em!                                                                        '-._ Extra Dimension _.-'

     Track #23 - Fat Balls (dedicated to zamuz)
_.-'                                                                    '-._

______________________________________________________


Well on we go with the Texer II presets :)
The idea for this came from "Molucule Blobs" that was in the "Breaking Myself" avs pack. The idea for the name came from Zamuz who so nicely commented on the pack :) Anyway, he said that molecule blobs had this lovely "fat" feeling, thus the name of this preset :)

It is pretty zamuz like otherwise too i reckon, the yummy colors, the shadow / border effect and overall just looks *almost* as good as his work.

Hmm... Might as well dedicate this one to zamuz...

*goes off to edit the file name*

...

Ok im back :)
Now then... Aah yes, ZAMUZ! Yes! His the man, i mean really THE man, when it comes to aesthethics in AVS. His presets just look incredibly smooth and his color work is beautiful. So i like to dedicate this to him, thanks for the aye-ey-caendi zamuz :)

Now everybody visit his devart page: http://zamuz.deviantart.com

______________________________________________________
All code written by Jukka Keskinarkaus (aka Tuggummi)
Feel free to modify or use parts of this preset to make your own  presets, but don't copy the whole preset and claim you did that  preset. (Hey, im giving you 100% FREE HOT STUFF!!! Just have the decency even TRY to make it look like YOU did it...) �����I  �  $�   �                           @  AVS 2.8+ Effect List Config                    (       �P��Acko.net: Texer II              H      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                             D   n=1 ;
reg03=0.25 ; // fade intesity
reg04=0.5 ; // fade brightness�  reg05=(h/280)*1.9 ; // particle size
reg06=h/w ; // aspectratio fix

volume=volume*0.9+getspec(0.5,1,0) ;
reg00=volume*0.005 ; // rotation speed

xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

zoom=zoom+zooms ;
reg01=4.5+abs(sin(zoom)) ; // camera range
reg02=1.5-abs(sin(zoom)) ; // range between particles

x1=1 ; y1=1 ; z1=1 ;

xr=xr+xrs ; yr=yr+yrs ; zr=zr+zrs ;

reg10=sin(xr) ; reg11=cos(xr) ;
reg20=sin(yr) ; reg21=cos(yr) ;
reg30=sin(zr) ; reg31=cos(zr)�   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00 ;
xrs=(rand(25)-12)*reg00 ;
yrs=(rand(25)-12)*reg00 ;
zrs=(rand(25)-12)*reg00 ;
zooms=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1A   zt=zt+zts ; zm=abs(sin(zt))*0.5 ;

x1=-1+zm ; y1=1-zm ; z1=1-zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1C   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=-1+zm ; y1=-1+zm ; z1=1-zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1D   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=-1+zm ; y1=-1+zm ; z1=-1+zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1C   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=1-zm ; y1=-1+zm ; z1=-1+zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1B   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=1-zm ; y1=1-zm ; z1=-1+zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1B   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=1-zm ; y1=-1+zm ; z1=1-zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1C   zt=zt+zts ; zm=abs(sin(zt))*0.75 ;

x1=-1+zm ; y1=1-zm ; z1=-1+zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1:   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=2-zm ; y1=0 ; z1=0   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1:   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=0 ; y1=2-zm ; z1=0   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1:   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=0 ; y1=0 ; z1=2-zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1;   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=0 ; y1=0 ; z1=-2+zm   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1;   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=0 ; y1=-2+zm ; z1=0   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              �      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1;   zt=zt+zts ; zm=abs(sin(zt))*1.5 ;

x1=-2+zm ; y1=0 ; z1=0   zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clrP��Acko.net: Texer II              !      tug_3dpack_texer4.bmp                                                                                                                                                                                                                                                                n=1]   xt=xt+xts ; yt=yt+yts ; zt=zt+zts ;

x1=sin(xt)*reg02 ; y1=sin(yt)*reg02 ; z1=sin(zt)*reg02M   xts=(rand(25)-12)*reg00 ;
yts=(rand(25)-12)*reg00 ;
zts=(rand(25)-12)*reg00L  �3D rotation ;

x2=x1*reg21-z1*reg20 ;
z2=x1*reg20+z1*reg21 ;
y2=y1*reg11-z2*reg10 ;
z2=y1*reg10+z2*reg11 ;
x3=x2*reg31-y2*reg30 ;
y3=x2*reg30+y2*reg31 ;

�Extras ;

z3=1/(z2+reg01) ;
sizex=z3*reg05 ;
sizey=z3*reg05 ;

�3D to 2D ;

x=x3*z3*reg06 ;
y=y3*z3 ;

clr=-z2*reg03+reg04 ;
red=clr ; green=clr ; blue=clr                 �   �q�Color Map                       �                     �j�                                                       ��                                                       `�                                                       @�                                                        �                                                        �                                                       ��                                                       ��                                                            S   T � �e  �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    �q�Color Map                       �                     ��                                                       ��                                                       ��                                                        �                                                       @�                                                       `�                                                       ��                                                       ��                                                    ���    6                       �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    �����  �  $�   �                           @  AVS 2.8+ Effect List Config                       '   �  
   d=d/1.02;                    ����I  �  $�   �                          @  AVS 2.8+ Effect List Config                                    �   �q�Color Map                       �                      ���                                                       ���                                                       `��                                                       @��                                                        ��                                                        ��                                                       ��                                                       ��                                                    ���    E                       �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���       .   �     x=x+0.3;y=y+0.3;                    (      �-�$   t   #   x=.1*sin(sx*3);
y=i*2-1;
x=x+0.6    sx=ax+sx;
sy=ay+sy;    ax=rand(10)/100-.1/2;    n=2;              (      �
�$   t   #   x=.2*sin(sx*3);
y=i*2-1;
x=x+0.7    sx=ax+sx;
sy=ay+sy;    ax=rand(10)/100-.1/2;    n=2;              (      ��$   t   #   x=.2*sin(sx*3);
y=i*2-1;
x=x+0.7    sx=ax+sx;
sy=ay+sy;    ax=rand(10)/100-.1/2;    n=2;              �����   �  $�   �                           @  AVS 2.8+ Effect List Config                                    �      (              ������������                  %   �     d=-d/5;                       �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    `��<   A ���                     `          ����            �     �1Terminal                           �                            