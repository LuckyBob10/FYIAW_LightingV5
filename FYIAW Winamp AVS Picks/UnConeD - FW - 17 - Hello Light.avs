Nullsoft AVS Preset 0.2    V  R    _________                                           
 (        _____)                                                 
  \     ( inal                  __                               Hello Light
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
It doesn't really show, but this is a remix of Seismogrid. I started out with colorful neon-shading for the grid, and thought it would be cool if I could make the light radiate away volumetrically from the surface. A bunch of perspective outward movements fixed that, and this result looked great on its own.
Most of the effect is drawn in one frame without flowy feedback, so the 3d feel of the grid is still present.

Tip for beam effects: keep squaring the zoom-out factor per iteration and you get smooth beams. Try changing the r-statement in one of the movements and the beams will get chunky.

Very dreamy and relaxing...

Enable the two effect lists to see the floor. I don't really like it, but it's a cool effect too.
 ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen. ,         $   �  	   x=0;y=0; G  ti=ti*.9;t=t-.010-ti*.02;
oy=abs(sin(t*.91)*cos(-t*1.71+md)*.75)*2+.9;
ryd=ryd+sin(rt-ryd)*dr;
ry=ry*.7+ryd*.3;
rt=rt+(sin(t)*cos(t+.42)+cos(t*.171))*.03;
ot=sin(md+t)*cos(t*.135)+cos(t*.321);
rd=(sin(ot)+cos(ot*.31))*.8+1.2;
ox=-sin(ry)*rd;oz=cos(ry)*rd;
ot=.15+.75/sqrt(sqr(ox)+sqr(oy)+sqr(oz));
ox=ox*ot;oy=oy*ot;oz=oz*ot;
rx=-atan2(oy,sqrt(sqr(ox)+sqr(oz)));

rx=rx+cos(t*.91)*.1;cx=cos(rx);sx=sin(rx);
x=ry+sin(t)*.1;cy=cos(x);sy=sin(x);

reg30=ox;
reg31=oy;
reg32=oz;

reg40=cx;
reg41=sx;
reg42=cy;
reg43=sy;

reg50=w/h;
reg51=h/w;

reg99=reg99+.05; -   ti=1;rt=rand(628)*.01;dr=rand(100)*.0005+.1; >   /* Camera code */
n=0;md=rand(200)*.01-1;t=-rand(100);dr=.1;       ���     $   �      �  reg02=reg02*decay;reg03=reg03+expand;
reg06=reg06*decay;reg07=reg07+expand;
reg10=reg10*decay;reg11=reg11+expand;
reg14=reg14*decay*decay;reg15=reg15+expand;

tc=tc+1;
x=below(reg14,.012);tc=if(x,0,tc);
reg12=if(x,reg08,reg12);reg13=if(x,reg09,reg13);reg14=if(x,reg10,reg14);reg15=if(x,reg11,reg15);
reg08=if(x,reg04,reg08);reg09=if(x,reg05,reg09);reg10=if(x,reg06,reg10);reg11=if(x,reg07,reg11);
reg04=if(x,reg00,reg04);reg05=if(x,reg01,reg05);reg06=if(x,reg02,reg06);reg07=if(x,reg03,reg07);
reg00=if(x,rand(180)*.01-.9,reg00);reg01=if(x,rand(180)*.01-.9,reg01);reg02=if(x,getspec(0,.25,0)*4+.3,reg02);reg03=if(x,0,reg03);
reg60=glow;
reg90=spd; �  x=below(reg14,.03);tc=0;
reg12=if(x,reg08,reg12);reg13=if(x,reg09,reg13);reg14=if(x,reg10,reg14);reg15=if(x,reg11,reg15);
reg08=if(x,reg04,reg08);reg09=if(x,reg05,reg09);reg10=if(x,reg06,reg10);reg11=if(x,reg07,reg11);
reg04=if(x,reg00,reg04);reg05=if(x,reg01,reg05);reg06=if(x,reg02,reg06);reg07=if(x,reg03,reg07);
reg00=if(x,rand(180)*.01-.9,reg00);reg01=if(x,rand(180)*.01-.9,reg01);reg02=if(x,min(5,getspec(0,.15,0)*8),reg02);reg03=if(x,0,reg03);
 <   n=0;/* ripple code */
decay=.94;expand=.04;glow=5;spd=3.5;       ���     (       �$   [  �  hx=gx*ig*2-1;hy=gy*ig*2-1;

py=.4;
d=.75*(sqr(hx-v00)+sqr(hy-v01));py=py-sin(d*10-v03*spd)*v02*min(1,max(0,v03-d))*.5;
d=.75*(sqr(hx-v04)+sqr(hy-v05));py=py-sin(d*10-v07*spd)*v06*min(1,max(0,v07-d))*.5;
d=.75*(sqr(hx-v08)+sqr(hy-v09));py=py-sin(d*10-v11*spd)*v10*min(1,max(0,v11-d))*.5;
d=.75*(sqr(hx-v12)+sqr(hy-v13));py=py-sin(d*10-v15*spd)*v14*min(1,max(0,v15-d))*.5;
red=bnot(equal(gx,0))*atan(ly-py)*li;
ly=py;
px=hx+ox;py=py+oy;pz=hy+oz;
x1=px*cy+pz*sy;z1=-px*sy+pz*cy;
y2=py*cx+z1*sx;z2=-py*sx+z1*cx;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x1*dt,x);y=if(dt,y2*dt*af-.4,y);

linesize=min(60,dt*12*sfz);
slx=x;sly=y;
green=red*1.5;blue=red*1.7;red=-red*2;
gx=if(below(gx,g-1),gx+1,0);
gy=if(equal(gx,0),gy+1,gy);
 B  gx=0;gy=0;
af=reg50;ly=0;
glow=reg60;
li=cos(reg99)*glow;
v00=reg00;v01=reg01;v02=reg02;v03=reg03;
v04=reg04;v05=reg05;v06=reg06;v07=reg07;
v08=reg08;v09=reg09;v10=reg10;v11=reg11;
v12=reg12;v13=reg13;v14=reg14;v15=reg15;

ox=reg30;oy=reg31;oz=reg32;
cx=reg40;sx=reg41;cy=reg42;sy=reg43;
spd=reg90;
sfz=w/320;        g=22;n=g*g;ig=1/(g-1);       ���    $   Y  �  hx=gy*ig*2-1;hy=gx*ig*2-1;

py=.4;
d=.75*(sqr(hx-v00)+sqr(hy-v01));py=py-sin(d*10-v03*spd)*v02*min(1,max(0,v03-d))*.5;
d=.75*(sqr(hx-v04)+sqr(hy-v05));py=py-sin(d*10-v07*spd)*v06*min(1,max(0,v07-d))*.5;
d=.75*(sqr(hx-v08)+sqr(hy-v09));py=py-sin(d*10-v11*spd)*v10*min(1,max(0,v11-d))*.5;
d=.75*(sqr(hx-v12)+sqr(hy-v13));py=py-sin(d*10-v15*spd)*v14*min(1,max(0,v15-d))*.5;
red=bnot(equal(gx,0))*atan(ly-py)*li;
ly=py;
px=hx+ox;py=py+oy;pz=hy+oz;
x1=px*cy+pz*sy;z1=-px*sy+pz*cy;
y2=py*cx+z1*sx;z2=-py*sx+z1*cx;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x1*dt,x);y=if(dt,y2*dt*af-.4,y);

linesize=min(60,dt*12*sfz);
slx=x;sly=y;
green=red*2;blue=red*1.4;red=-green;
gx=if(below(gx,g-1),gx+1,0);
gy=if(equal(gx,0),gy+1,gy);
 B  gx=0;gy=0;
af=reg50;ly=0;
glow=reg60;
li=sin(reg99)*glow;
v00=reg00;v01=reg01;v02=reg02;v03=reg03;
v04=reg04;v05=reg05;v06=reg06;v07=reg07;
v08=reg08;v09=reg09;v10=reg10;v11=reg11;
v12=reg12;v13=reg13;v14=reg14;v15=reg15;

ox=reg30;oy=reg31;oz=reg32;
cx=reg40;sx=reg41;cy=reg42;sy=reg43;
spd=reg90;
sfz=w/320;        g=22;n=g*g;ig=1/(g-1);       ���    ����q   �$�   �                           @  AVS 2.8+ Effect List Config                                      �      b   �  E   reg70=0.98;
af=sh/sw;
y=y*af-1;r=reg70;
x=x*r;y=y*r;
y=(y+1)/af;                     Z   �  =   af=sh/sw;
y=y*af-1;r=sqr(reg70);
x=x*r;y=y*r;
y=(y+1)/af;                      _   �  B   af=sh/sw;
y=y*af-1;r=sqr(sqr(reg70));
x=x*r;y=y*r;
y=(y+1)/af;                     d   �  G   af=sh/sw;
y=y*af-1;r=sqr(sqr(sqr(reg70)));
x=x*r;y=y*r;
y=(y+1)/af;                  ����q   � $�   �                           @  AVS 2.8+ Effect List Config                                     �      �                                          <   ��    `��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            