Nullsoft AVS Preset 0.2   .  *   Whacko AVS VI - Space Rings
----------------------------------------------------

The basis for this preset are three rotating rings with spokes. The rings themselves are texered, resulting in a superbright glow. While the rings are always icey-blue, the spokes themselves are multi-colored, resulting in a subtle color gradient to the center.

Steven Wittens / UnConeD
steven@acko.net - www.acko.net

(If you wish to use any part of this preset in your own packs you are free to do so, on the condition that you include my contact information) $   �  �  x1=.9+getosc(i,0,0)*.2;
px=cos(i*tpi)*x1+ox;pz=sin(i*tpi)*x1+oz;py=oy;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
dt=min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
blue=dt-.1;green=blue*.5;red=blue*.25;
x1=if(above(sin(th*2+i+hu*5+pz-px*.5+py+t*10),.98),1,red);
red=red+x1;green=green+x1;blue=blue+x1 �  t=t+0.02+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h; $   t=t+((getosc(0.22,0,0)*100%10)*.1); )   n=31;tpi=acos(-1)*2;t=5+getosc(0,0,0)*10       ���     $   �  �  x1=.8+getosc(i*.5,0,0)*.2;
py=cos(i*tpi)*x1+oy;pz=sin(i*tpi)*x1+oz;px=ox;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
dt=min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
blue=dt-.1;green=blue*.5;red=blue*.25;
x1=if(above(sin(th*2+hu*5+pz-px*.5+i*2+py-t*9),.98),1,red);
red=red+x1;green=green+x1;blue=blue+x1 �  t=t+0.021+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h; $   t=t+((getosc(0.55,0,0)*100%10)*.1); ,   n=27;tpi=acos(-1)*2;t=5+getosc(0.11,0,0)*10       ��      $   �  �  x1=.7+getosc(i*.5+.5,0,0)*.2;
px=cos(i*tpi)*x1+ox;py=sin(i*tpi)*x1+oy;pz=oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
blue=dt-.1;green=blue*.5;red=blue*.25;
dt=min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
x1=if(above(sin(th*2+hu*5+pz-px*.5+py+t*10),.98),1,red);
red=red+x1;green=green+x1;blue=blue+x1 �  t=t+0.02061+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h; $   t=t+((getosc(0.42,0,0)*100%10)*.1); ,   n=24;tpi=acos(-1)*2;t=5+getosc(0.66,0,0)*10       ��      T@�Texer                                            �?whacko6-04.bmp                                                                                                                                                                                                                                                      	   R          8   �     x=sin(r)*.75;y=-cos(r)*.75                 ,          (       �$   N  +  ip=bnot(ip);x1=.9+getosc(i,0,0)*.2;
px=cos(i*tpi)*x1*ip+ox;pz=sin(i*tpi)*x1*ip+oz;py=oy;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
pz=hu+v3*.0001;
cr=sin(pz)*.5+.5;cg=sin(pz+2.09)*.5+.5;cb=sin(pz+4.18)*.5+.5;
dt=dt*min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
red=cr*dt-.1;green=cg*dt-.1;blue=cb*dt-.1;
x1=if(above(sin(th*2+i+hu*5+pz-px*.5+py+t*10),.98),1,red);
red=(red+x1)*.1;green=(green+x1)*.1;blue=(blue+x1)*.1 �  t=t+0.02+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h;ip=0 H   t=t+((getosc(0.22,0,0)*100%10)*.1);hu=hu+((getosc(0.51,0,0)*100%10)*.1) )   n=61;tpi=acos(-1)*2;t=5+getosc(0,0,0)*10       ��     $   V  /  ip=bnot(ip);x1=.8+getosc(i*.5,0,0)*.2;
py=cos(i*tpi)*x1*ip+oy;pz=sin(i*tpi)*x1*ip+oz;px=ox;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
pz=hu+v3*.0001;
cr=sin(pz)*.5+.5;cg=sin(pz+2.09)*.5+.5;cb=sin(pz+4.18)*.5+.5;
dt=dt*min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
red=cr*dt-.1;green=cg*dt-.1;blue=cb*dt-.1;
x1=if(above(sin(th*2+hu*5+pz-px*.5+i*2+py-t*9),.98),1,red);
red=(red+x1)*.1;green=(green+x1)*.1;blue=(blue+x1)*.1 �  t=t+0.021+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h;ip=0 H   t=t+((getosc(0.55,0,0)*100%10)*.1);hu=hu+((getosc(0.67,0,0)*100%10)*.1) ,   n=53;tpi=acos(-1)*2;t=5+getosc(0.11,0,0)*10       ��     $   Y  /  ip=bnot(ip);x1=.7+getosc(i*.5+.5,0,0)*.2;
px=cos(i*tpi)*x1*ip+ox;py=sin(i*tpi)*x1*ip+oy;pz=oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt,x);y=if(dt,y3*dt*af,y);
dt=dt*0.8+.2;
pz=hu+v3*.0001;
cr=sin(pz)*.5+.5;cg=sin(pz+2.09)*.5+.5;cb=sin(pz+4.18)*.5+.5;
dt=dt*min(1.5,abs(getosc(i,0,0)*7)+.85)*.35;
red=cr*dt-.1;green=cg*dt-.1;blue=cb*dt-.1;
x1=if(above(sin(th*2+hu*5+pz-px*.5+py+t*10),.98),1,red);
red=(red+x1)*.1;green=(green+x1)*.1;blue=(blue+x1)*.1 �  t=t+0.02061+getspec(0,0,0)*.03;ox=cos(t*.97)*cos(t*.679)*cos(sin(t*.119+1));oy=sin(-t*.31)*cos(t*.191)*.5;oz=-sin(t*.741)*cos(-t*.91)*sin(cos(t*.131));ot=1.2/sqrt(sqr(ox)+sqr(oy)+sqr(oz));ox=ox*ot;oy=oy*ot;oz=oz*ot;rz=cos(t*.0791)*cos(t*.123)*cos(sin(t*.0631+2))*3;ry=-atan2(-ox,oz);rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);x=0;y=0;af=w/h;ip=0; H   t=t+((getosc(0.42,0,0)*100%10)*.1);hu=hu+((getosc(0.21,0,0)*100%10)*.1) ,   n=47;tpi=acos(-1)*2;t=5+getosc(0.66,0,0)*10       ��        �                                          <   �    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �    ��<   A ���                     `          ����            �     �1Terminal                           �                            