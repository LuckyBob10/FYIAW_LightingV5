Nullsoft AVS Preset 0.2        I remember judging presets for the Dream AVS contest at deviantart.com & just being amazed how El-vis could use his abilities to create something so appropiate.  Before DRUG DRIVE, a lot of his stuff had a very hard-egde to it.  There wasn't a lot of flowing and smooth blending stuff.  Looking at those presets, I was against convinced that El-vis could do anything imaginiable.  Looking through those visualizations, I'm still amazed that some of the stuff he was doing is still being copied today.  The Dreamtime presets are a perfect example of this.  Using the Unique tone to make sense of crazy flowing colors is technique that has been used by Duo, Alt III, avs-king, & myself included.

Try turning on the invert inside the effect list & turning off the fast brite.

-  NemoOrange    �  |  dreamtime2  by el-vis 2001

Featuring a solid fullscreen-SSC:

The screen is filled by several SSC (lines) each with a height 
of 20 pix.

Each SSC draws a line made up of 20x20 px squares where 
the color of each square depends on unique music values. The values are spread over the screen like this:

0--------------------->
<--------------------
---------------------->1

They are res-sensitive, so they're working correct on all res as long as there are enough lines setup. Lines not needed in a certain res are set inactive automatically by setting n=0.

To make changes:
Kill all lines except line 1. Make your changes. Duplicate line 1 about 30 times. Give each line the correct line number by setting line=1..30 in init. (30x20pix => 600 pix max y-res without pix-doubling)

Things you may wish to change:

in Frame:
dir=1-2*line%2  ---> dir=1 leads to

0--------------------->
----------------------->
----------------------->1

in point vv=vv*b  -> deleting leads to;

permanent lasting SSC

in point use  vv together with red, green, blue to setup your color scheme.

change getspec to getosc...

EL  �����&  �   $�   �                           @  AVS 2.8+ Effect List Config                             ����   ��������               ���            (       �$   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=1              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=2              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=3              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=4              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=5              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=6              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=7              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=8              $   /  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=9              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=10              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=11              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=12              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=13              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=14              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=15              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=16              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=17              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=18              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=19              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=20              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=21              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=22              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=23              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=24              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=25              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=26              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=27              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=28              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=29              $   0  �   x=dir*2*i-dir*1;y=-1-step/2+line*step;
vv=getosc((i/lines+line/(lines+1)),1/(20+lines),0);
vv=if(above(vv,0),0.5,0)*b;
red=vv;
blue=vv*2;
green=vv;
 E   step=40/h;lines=h/20+1;n=if(above(line,lines),0,w/20);dir=1-2*line%2    bc=if(equal(bc,2),0,bc+1);    pi=acos(-1);line=30              +   c  !   d=bd*d+bx*x+by*y;
r=br1*r+br;
 �   fr1=fr1+bfr1;br=0.02*sin(fr1);
fr2=fr2+bfr2;br1=1+0.01*sin(fr2);
fr3=fr3+bfr3;by=0.01*sin(fr3);
fr4=fr4+bfr4;bx=0.01*sin(fr4);
fr5=fr5+bfr5;bd=1+0.01*sin(fr5); m   bfr1=rand(10)/100-0.05;
bfr2=rand(10)/100-0.05;
bfr3=rand(10)/400;
bfr4=rand(10)/400;
bfr5=rand(10)/400;                                              &         ���            ,          �����   �  $n   �                           @  AVS 2.8+ Effect List Config                       :   �     r=r+3.14/3;
d=sin(d*1.8)*.5                    %                       %         ,             �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            