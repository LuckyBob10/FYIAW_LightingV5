Nullsoft AVS Preset 0.2    �  �    _________                                           
 (        _____)                                                
  \     ( inal                  __                              VJ Chmutov
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
Jheriko got the idea for a quartic Chmutov surface, but had a couple of problems moving the camera. I looked at his preset and started toying with it until it was 7am and it finally looked okay from all angles :). The surface is evaluated using good ol' Whittaker iteration (the stupidest/simplest of all root-finding algorithms) and works like a charm.

I did recode almost the entire of the DM and Texture (and added the complicated camera code), but it's still a conceptual remix really... you don't always have to be too strict when remixing after all.

One touch that helps a lot is the white falloff when the surface becomes parallel to the viewing direction (done by evaluating the derivative for alpha). It helps remove the ugly edges a lot and looks cool as well.

For more Jheriko stuff, visit: http://jheriko.deviantart.com/
____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen. ����H  �  $�   �                           @  AVS 2.8+ Effect List Config                    (        
�$   �   9   r=(i+.125)*tpi;d=.3*rd;
x=cos(r)*d+px; y=sin(r)*d+py;
 
   rd=rd*.5; :   px=rand(200)*.01-1;py=rand(200)*.01-1;rd=1+rand(100)*.01;    n=5;tpi=acos(-1)*2              $   �   S   r=(i+.125)*tpi;d=.3*rd;
x=cos(r)*d+px; y=sin(r)*d+py;
red=.5;green=.15;blue=.15; 
   rd=rd*.5; :   px=rand(200)*.01-1;py=rand(200)*.01-1;rd=1+rand(100)*.01;    n=5;tpi=acos(-1)*2              (        �$     a   x=i*2-1;
red=if(equal(ti,1),1,ti);
green=if(equal(ti,1),1,0);
blue=if(equal(ti,1),1,ti*.2);
 L   ti=ti*.9+getspec(0,.1,0)*.2+.01;y=y+dr;y=if(above(abs(y),1),y-sign(y)*2,y); (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2;ti=.5;dr=.11       ���    $     c   y=i*2-1;
red=if(equal(ti,1),1,ti);
green=if(equal(ti,1),1,ti*.4);
blue=if(equal(ti,1),1,ti*.5); _   ti=ti*.9+(getspec(0,.1,0)+getspec(.2,.4,0))*.2+.02;x=x+dr;x=if(above(abs(x),1),x-sign(x)*2,x); (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2;ti=.5;dr=.29       ���                      �            ���             +      �  x1=x;y1=y*asp;f=1/sqrt(sqr(x1)+sqr(y1)+1);
x2=x1*crz-y1*srz;y2=x1*srz+y1*crz;
y1=y2*crx-srx;z2=y2*srx+crx;
x1=x2*cry-z2*sry;z1=x2*sry+z2*cry;

�Quartic Coefficients for ax^4+bx^3+cx^2+dx+e=0;
�(Chmutov Surface);
x2=sqr(x1);y2=sqr(y1);z2=sqr(z1);
va=sqr(x2)+sqr(y2)+sqr(z2);
vb=4*(x2*x1*gx+y2*y1*gy+z2*z1*gz);
vc=sqr(x1)*(6*sqr(gx)-1)+sqr(y1)*(6*sqr(gy)-1)+sqr(z1)*(6*sqr(gz)-1);
vd=x1*gx*(4*sqr(gx)-2)+y1*gy*(4*sqr(gy)-2)+z1*gz*(4*sqr(gz)-2);
ve=(sqr(gx)*(sqr(gx)-1))+(sqr(gy)*(sqr(gy)-1))+(sqr(gz)*(sqr(gz)-1))+.375;

k=f*.6;wh=-.15;
� Whittaker Iteration;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
wh=-.5;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
wh=-.5;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
wh=-.5;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
wh=-2;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;
k=k-((((va*k+vb)*k+vc)*k+vd)*k+ve)*wh;

x=asin(sin(atan2(y1*k+gy,z1*k+gz)));y=x1*k+gx;

fk0=min(0,((4*va*k+3*vb)*k+2*vc)*k+vd);
alpha=sqr(fk0)*.5+exp(-k)*.5;
 �  tm=tm+.05;
� Phase 0, leave center, go towards (tx,ty,tz);
x=equal(ph,0);y=spd*.5;
ox=if(x,ox+if(above(abs(tx-ox),y),sign(tx-ox)*y,0),ox);
oy=if(x,oy+if(above(abs(ty-oy),y),sign(ty-oy)*y,0),oy);
oz=if(x,oz+if(above(abs(tz-oz),y),sign(tz-oz)*y,0),oz);
ph=if(band(x,above(max(max(abs(ox),abs(oy)),abs(oz)),1.7+rand(70)*.01)),1,ph);
x=band(x,equal(ph,1));
dt=if(x,rand(3),0);
dr=if(x,sqrt(sqr(ox)+sqr(oy)+sqr(oz)),dr);
tx=if(x,if(equal(dt,0),dr*(rand(2)*2-1),0),tx);
ty=if(x,if(equal(dt,1),dr*(rand(2)*2-1),0),ty);
tz=if(x,if(equal(dt,2),dr*(rand(2)*2-1),0),tz);
x=below(tx*ox+ty*oy+tz*oz,-.1);
tx=if(x,-tx,tx);ty=if(x,-ty,ty);tz=if(x,-tz,tz);

� Phase 1, rotate outside;
x=equal(ph,1);
ox=if(x,ox+if(above(abs(tx-ox),spd),sign(tx-ox)*spd,0),ox);
oy=if(x,oy+if(above(abs(ty-oy),spd),sign(ty-oy)*spd,0),oy);
oz=if(x,oz+if(above(abs(tz-oz),spd),sign(tz-oz)*spd,0),oz);
y=dr/sqrt(sqr(ox)+sqr(oy)+sqr(oz));
ox=if(x,ox*y,ox);oy=if(x,oy*y,oy);oz=if(x,oz*y,oz);
x=band(below(sqr(lx-ox)+sqr(ly-oy)+sqr(lz-oz),.00001),equal(ph,1));
ph=if(x,if(equal(rand(5),0),2,1),ph);
x=band(x,equal(ph,1));
dt=if(x,(dt+rand(3))%3,0);
dr=if(x,sqrt(sqr(ox)+sqr(oy)+sqr(oz)),dr);
tx=if(x,if(equal(dt,0),dr*(rand(2)*2-1),0),tx);
ty=if(x,if(equal(dt,1),dr*(rand(2)*2-1),0),ty);
tz=if(x,if(equal(dt,2),dr*(rand(2)*2-1),0),tz);
x=below(tx*ox+ty*oy+tz*oz,-.1);
tx=if(x,-tx,tx);ty=if(x,-ty,ty);tz=if(x,-tz,tz);

� Phase 2 enter center;
x=equal(ph,2);
tx=if(x,tx*(.7-spd*3),tx);ty=if(x,ty*(.7-spd*3),ty);tz=if(x,tz*(.7-spd*3),tz);
ox=if(x,ox*.9+tx*.1,ox);oy=if(x,oy*.9+ty*.1,oy);oz=if(x,oz*.9+tz*.1,oz);
x=band(below(sqr(ox)+sqr(oy)+sqr(oz),.5),equal(ph,2));
ph=if(x,0,ph);
tx=if(x,if(equal(dt,0),2.3*(rand(2)*2-1),0),tx);
ty=if(x,if(equal(dt,1),2.3*(rand(2)*2-1),0),ty);
tz=if(x,if(equal(dt,2),2.3*(rand(2)*2-1),0),tz);

gx=gx*.7+(ox+cos(tm)*.06)*.3;
gy=gy*.7+(oy+sin(tm)*.06*0)*.3;
gz=gz*.7+(oz+cos(tm*.13+sin(tm)*.2)*.06)*.3;
x=atan2(gy,sqrt(sqr(gx)+sqr(gz)));y=3.14-atan2(gx,gz);
rx=rx+sin(sin(x-rx));ry=ry+sin(y-ry)*.1;rz=rz+sin(qt-rz)*spd;

crz=cos(rz);srz=sin(rz);
cry=cos(ry);sry=sin(ry);
crx=cos(rx);srx=sin(rx);
asp=h/w;

lx=ox;ly=oy;lz=oz;

spd=spd*.5+min(getspec(0,.05,0)*1.3+.1,1.5)*.05; $   qt=qt+(rand(3)-1)*acos(-1)*.5;ti=1; '   ox=0.2;oy=0;oz=0;ph=0;tx=2.3;ty=0;tz=0                            (       �$   �      x=i*2-1;

 P   ti=ti*.9+getspec(0,.1,0)*.1;y=y+dr;y=if(above(abs(y),1),y-sign(y)*2,y);dr=dr*.9 (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2       ���    (       �$   �      x=i*2-1;

 P   ti=ti*.9+getspec(0,.1,0)*.1;y=y+dr;y=if(above(abs(y),1),y-sign(y)*2,y);dr=dr*.9 (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2       ���    $   �      y=i*2-1;

 P   ti=ti*.9+getspec(0,.1,0)*.1;x=x+dr;x=if(above(abs(x),1),x-sign(x)*2,x);dr=dr*.9 (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2       ���    (       �$   �      x=i*2-1;

 P   ti=ti*.9+getspec(0,.1,0)*.1;y=y+dr;y=if(above(abs(y),1),y-sign(y)*2,y);dr=dr*.9 (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2       ���    (      f(�$   �      x=i*2-1;

 P   ti=ti*.9+getspec(0,.1,0)*.1;y=y+dr;y=if(above(abs(y),1),y-sign(y)*2,y);dr=dr*.9 (   ti=1;dr=(rand(2)*2-1)*(rand(20)*.01+.1)    n=2       ���       �                                          <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            