Nullsoft AVS Preset 0.2   ]  Y  Whacko AVS IV - Hypernet
-------------------------------------------

After Energy Ball, I played some more with the intersecting planes idea. I created this neat network-like texture with a superscope, and made it look 3D'ish by mapping it onto the same 3 right-angled planes as in E.Ball. The difference here is that the planes move in order to further improve the 3D-object illusion.

The camera is a lot more beat-responsive too and jumps around a lot.

It looks really neat if you right-click on the AVS window (to pause the sound-input) and see one frozen frame of the object.

UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.)

 ����  �  $�   �                           @  AVS 2.8+ Effect List Config                    (        �             $   w  $  x=getosc(i*.5,0,0)*.5+.5;y=getosc(i*.5+.5,0,0)*.5+.5;
x=x*mf%mf/mf;x=x*4-2;
y=y*mf%mf/mf;y=y*4-2;
ac=above(getosc(0.2,0,0),0);
x=if(1-ac,if(equal(y,py),x,px),x);
y=if(ac,if(equal(x,px),y,py),y);
px=x;py=y;
red=sin(hu+i*2)*.5+.5;green=sin(hu+i*2+2.09)*.5+.5;blue=sin(hu+i*2+4.18)*.5+.5    t=t-0.05;px=0;py=0;    hu=rand(100)/50+hu    n=40;mf=30       ���                                   �   +   �  �  x=cos(r)*d;y=sin(r)*d;
dx=x;dy=y;dz=.7;
dx1=dx*cz-dy*sz;
dy1=dx*sz+dy*cz;
dy2=dy1*cx-dz*sx;
dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k=((oz+mo)/dz3)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
x=-(ix-ox)*.3;y=(iy-oy)*.3;
d=max(abs(x),abs(y));
cf=max(0,1-sqrt(sqr(ox)+sqr(oy)+sqr(oz-mo))*3);
alpha=if(above(d,.9),0,min(1,abs(oz*2.5+cf))); 	  t=t+0.2;pt=pt+0.2;
sf=sin(t*.291)*cos(t*0.161)*sin(cos(t*.3631))*2.9;
rd=1.2+sin(t*.0158)*cos(t*0.0211)*.5;
ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;
rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.5;
ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.5;
ry=-atan2(ox,oz)+ryo;
rx=-atan2(oy,sqrt(sqr(ox)+sqr(oz)))+rxo;
rz=sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
mo=mo*.8+mmo*.2;
bt=bt+0.01;
mmo=if(above(bt,1),mmo*.95,mmo); a   t=t+100;pt=pt+50;
mmo=abs(getspec(0,0.1,0))*(rand(2)*2-1);
mmo=mmo*mf%mf/mf;mmo=mmo*2-1;
bt=0 `   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rxo=0.01;ryo=0.1;rycf=23;rz=0;rzo=0.02;pt=0;mf=15;mo=0;mmo=0;bt=0                            ����9  � $�   �                           @  AVS 2.8+ Effect List Config                    +   �  �  x=cos(r)*d;y=sin(r)*d;
dx=x;dy=y;dz=.7;
dx1=dx*cz-dy*sz;
dy1=dx*sz+dy*cz;
dy2=dy1*cx-dz*sx;
dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k=((oy+mo)/dy2)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
ix=if(kw,0,ix);iy=if(kw,0,iy);iz=if(kw,1000,iz);
x=-(iz-oz)*.3;y=(ix-ox)*.3;
d=max(abs(x),abs(y));
cf=max(0,1-sqrt(sqr(ox)+sqr(oy-mo)+sqr(oz))*3);
alpha=if(above(d,.9),0,min(1,abs(oy*2.5+cf))); 	  t=t+0.2;pt=pt+0.2;
sf=sin(t*.291)*cos(t*0.161)*sin(cos(t*.3631))*2.9;
rd=1.2+sin(t*.0158)*cos(t*0.0211)*.5;
ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;
rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.5;
ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.5;
ry=-atan2(ox,oz)+ryo;
rx=-atan2(oy,sqrt(sqr(ox)+sqr(oz)))+rxo;
rz=sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
mo=mo*.8+mmo*.2;
bt=bt+0.01;
mmo=if(above(bt,1),mmo*.95,mmo); a   t=t+100;pt=pt+50;
mmo=abs(getspec(0,0.1,0))*(rand(2)*2-1);
mmo=mmo*mf%mf/mf;mmo=mmo*2-1;
bt=0 `   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rxo=0.01;ryo=0.1;rycf=23;rz=0;rzo=0.02;pt=0;mf=15;mo=0;mmo=0;bt=0                            ����9  � $�   �                           @  AVS 2.8+ Effect List Config                    +   �  �  x=cos(r)*d;y=sin(r)*d;
dx=x;dy=y;dz=.7;
dx1=dx*cz-dy*sz;
dy1=dx*sz+dy*cz;
dy2=dy1*cx-dz*sx;
dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k=((ox+mo)/dx3)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
ix=if(kw,0,ix);iy=if(kw,1000,iy);iz=if(kw,0,iz);
x=-(iy-oy)*.3;y=(iz-oz)*.3;
d=max(abs(x),abs(y));
cf=max(0,1-sqrt(sqr(ox)+sqr(oy)+sqr(oz-mo))*3);
alpha=if(above(d,.9),0,min(1,abs(ox*2.5+cf))); 	  t=t+0.2;pt=pt+0.2;
sf=sin(t*.291)*cos(t*0.161)*sin(cos(t*.3631))*2.9;
rd=1.2+sin(t*.0158)*cos(t*0.0211)*.5;
ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;
rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.5;
ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.5;
ry=-atan2(ox,oz)+ryo;
rx=-atan2(oy,sqrt(sqr(ox)+sqr(oz)))+rxo;
rz=sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
mo=mo*.8+mmo*.2;
bt=bt+0.01;
mmo=if(above(bt,1),mmo*.95,mmo); a   t=t+100;pt=pt+50;
mmo=abs(getspec(0,0.1,0))*(rand(2)*2-1);
mmo=mmo*mf%mf/mf;mmo=mmo*2-1;
bt=0 `   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rxo=0.01;ryo=0.1;rycf=23;rz=0;rzo=0.02;pt=0;mf=15;mo=0;mmo=0;bt=0                               �                                          <   �L    ���<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �L    h��<   A ���                     `          ����            �     �1Terminal                           �                            