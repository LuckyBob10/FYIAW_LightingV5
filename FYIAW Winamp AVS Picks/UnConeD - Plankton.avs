Nullsoft AVS Preset 0.2      {  Whacko AVS IV - Plankton
-------------------------------------------

Behind this preset are several distinct steps that combine into a great effect. There's a neat particle superscope which has flocking lines: I coded it so that each line points to the direction it's moving in, which makes it look like small organisms. Secondly, there's a cool wave-like movement. It alternatively flats out and rises, which causes the ghostly ripples. There's also a color-coded superscope which acts as a mask, and it ends with a cool distorted rotozoomer.

It's mostly beat responsive, so it's not so exciting on ambient music.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.)

 ����   �   $�   �                           @  AVS 2.8+ Effect List Config                    (       �$   '  �  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
th=(sd1%2 * 2-1)*(sd3/65536+1)*t*.2;
xx=sd1/32768-1;yy=sd2/32768-1;
xf=xx+cos(th)*.5;yf=yy+sin(th)*.5;
xf=if(above(abs(xf),1),xf+sign(-xf)*2,xf);
yf=if(above(abs(yf),1),yf+sign(-yf)*2,yf);
x=if(np,lx,xf);y=if(np,ly,yf);
lx=xf-sin(th)*(ti+0.07)*.4;ly=yf+cos(th)*(ti+0.07)*.4;
red=np;green=np;blue=np;
np=1-np; 7   ti=ti*.85;t=t-0.01+ti;sd1=1247;sd2=9941;sd3=6421;np=1;    ti=.5    n=100       ���    +   �  N  xx=x*mx*ms+y*my*(1-ms);
yy=y*my*ms+x*mx*(1-ms);
df1=sin(yy*4+cos(xx+yy*7+t1)+1)*(cos(sin(r+xx)))*tpi-xo;
df2=cos(xx*3+d+r*.9+t2+sin(xx-yy-t1*.71)-1)*(cos(sin(d-yy)))*tpi-yo;
x=xx+(sin(xx*16+df1)+1)*.03+0.01*(sin(t2)*.5+.5+.02);
y=yy+sin(yy*16+df2)*.005+0.01*sin(t1);
xx=(x*ms+y*(1-ms))*mx;
yy=(y*ms+x*(1-ms))*my;
x=xx;y=yy;
 u   t1=t1-0.05;
t2=t2-0.0613;
xo=xo-0.09;
yo=yo-0.09;
xo=if(below(xo,0),xo+tpi,xo);
yo=if(below(yo,0),yo+tpi,yo);
 Z   t1=t1+rand(100)/500;
t2=t2+rand(100)/500;
mx=rand(2)*2-1;
my=rand(2)*2-1;
ms=rand(2); 6   t1=0;t2=0;tpi=acos(-1)*2;xo=tpi;yo=tpi;mx=1;my=1;ms=1       $   $                 +   C  �   d=d-(d*.56-sin(d*.57))*13;
x=-sin(r)*d*1.4;y=cos(r)*d*1.4;
xx=x*cr-y*sr;yy=x*sr+y*cr;
x=xx+xm;y=yy+ym;
x=pow(abs(x),xp-y*.1)*sign(x);
y=pow(abs(y),yp-x*.1)*sign(y); �   t=t+0.02;
xt=xt+xo;yt=yt+yo;rt=rt+ro;
xm=sin(xt);ym=sin(yt);
xp=sin(xt+t)*.1+1;yp=sin(yt-rt+t*.71)*.1+1;
cr=cos(rt);sr=sin(rt);
 �   ro=(rand(100)/50-1)*.06;
xo=(rand(100)/50-1)*.06;
yo=(rand(100)/50-1)*.06;
bc=(bc+1)%4;
xt=if(bc,xt,xt+rand(100)/20);
yt=if(bc,yt,yt+rand(100)/20); I   xt=getosc(0,0,0)*10;yt=getosc(0.4,0,0)*10;xo=.04;yo=.05;ro=.05;bc=0;t=0;                            �����  �  $�   �                           @  AVS 2.8+ Effect List Config                    (        -�$   �  �   x=0;y=i*.2-.1;
red=pow((sin(t+ro+i*2*rf)*.4+.4)*ci, 1.3);
green=pow((sin(t+go+i*2*gf)*.4+.4)*ci, 1.3);
blue=pow((sin(t+bo+i*2*bf)*.4+.4)*ci, 1.3); Q   t=t-0.05;aa=aa*0.7;ro=ro*.8+rot*.2;go=go*.8+got*.2;bo=bo*.8+bot*.2;ci=ci*.95+.01 x   aa=0.0;rot=rand(100)/100*6.28;got=rand(100)/100*6.28;bot=rand(100)/100*6.28;ci=1;rf=rand(4)+1;gf=rand(4)+1;bf=rand(4)+1    n=50;ro=0;go=2.0;bo=4.0;rot=0;              (       (�$   �  �   y=0;x=i*.2-.1;
red=pow((sin(t+ro+i*2*rf)*.4+.4)*ci, 1.3);
green=pow((sin(t+go+i*2*gf)*.4+.4)*ci, 1.3);
blue=pow((sin(t+bo+i*2*bf)*.4+.4)*ci, 1.3); Q   t=t-0.05;aa=aa*0.7;ro=ro*.8+rot*.2;go=go*.8+got*.2;bo=bo*.8+bot*.2;ci=ci*.95+.01 x   aa=0.0;rot=rand(100)/100*6.28;got=rand(100)/100*6.28;bot=rand(100)/100*6.28;ci=1;rf=rand(4)+1;gf=rand(4)+1;bf=rand(4)+1    n=50;ro=0;go=2.0;bo=4.0;rot=0;                 -   �     x=x*.08;y=y*.08                   ,             �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            