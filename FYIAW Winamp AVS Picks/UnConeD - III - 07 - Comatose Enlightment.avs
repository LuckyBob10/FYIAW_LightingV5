Nullsoft AVS Preset 0.2    Q  M  Whacko AVS III - Comatose Enlightment
----------------------------------------------------------------

A totally different direction in Whacko AVS? No fancy 3D, but a mesmerising ever-changing experience in color and movement. Or so it seems...

Behind this dreamy preset is a complex DM that simulates two swirling opposite vortexes pushing around the pixels. I combined that with a slowly changing superscope, a zooming DM and a static scattering movement to enhance the dreamy feeling. Finally, the previous frame is blended in slightly, resulting in a layered effect. Takes a while to get started, but looks *great* especially on low-beat music.

Don't go braindead watching this one... :) Looks trippy even without music on.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. A clear copyright message should also be included in your preset, along with contact information.)

 ,         �����  �  $�   �                           @  AVS 2.8+ Effect List Config                    (       �!                    �         $     �   d=v*0.2+.9+sin(t+bo)*.4; r=t+i*fpi;x=sin(cos(r)*d*2); y=sin(sin(r)*d*2);
red=sin(hu+i)*.5+.5;green=sin(hu+2.09+i)*.5+.5;blue=sin(hu+4.09+i)*.5+.5;    t=t-0.05;hu=hu+0.015 '   bo=bo+rand(100)/100;hu=hu+rand(100)/50 +   n=800;bo=0;fpi=acos(-1)*4;hu=rand(100)/10;       ���     +     ?  xx=x;yy=y;
x1=x-cx-xo;y1=y-cy-yo;
r1=atan2(y1,x1);d1=sqrt(sqr(x1)+sqr(y1));
r1=r1+.1/d1;x1=cos(r1)*d1+cx+cos(ro)*.1;y1=sin(r1)*d1+cy+sin(ro)*.1;

x2=x-cx+xo;y2=y-cy+yo;
r2=atan2(y2,x2);d2=sqrt(sqr(x2)+sqr(y2));
r2=r2-.1/d2;x2=cos(r2)*d2+cx-cos(ro)*.1;y2=sin(r2)*d2+cy-sin(ro)*.1;

x=(x1+x2)*.5;y=(y1+y2)*.5;
 �   t=t-0.015;
cx=cos(t*.97)*.5;
cy=sin(t*.77)*cos(t*1.03)*.5;
ro=ro+sin(t*0.71)*cos(t*0.453)*sin(cos(t*.391))*.1;
xo=cos(ro)*.3;yo=sin(ro)*.3;        t=rand(100)/50;                            +   �   e   x=x-xc;y=y-yc;
d=sqrt(sqr(x)+sqr(y));r=atan2(y,x);
d=d*df;
r=r+rt;
x=cos(r)*d+xc;y=sin(r)*d+yc
 X   df=sin(dt)*.2+.6;
dt=dt+0.015;
rt=rt+0.02;
xc=cos(dt)*.7*(1-df);yc=sin(rt)*.7*(1-df)        dt=rand(100)/40                               Q   �  4   x=x+rand(100)/2000-0.025;
y=y+rand(100)/2000-0.025                      �                                          <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            