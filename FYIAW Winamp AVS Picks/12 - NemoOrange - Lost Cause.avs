Nullsoft AVS Preset 0.2   i  e  ______________________________________________________

  Whacko Revisited
  Lost Cause
  Remix by: NemoOrange

  Original: Elevation
______________________________________________________
������������������������������������������������������
Design stolen from MTV News.

-  NemoOrange
______________________________________________________
 $   6      x=0;
y=(i-.5)*2            n=2       �      $   [   6   x=0;
y=(i-.5);
blue=1;
red=1-i*.75;
green=1-i*.75            n=5       ���    �����  �  $�   �                           @  AVS 2.8+ Effect List Config                    (       �             $   �      x=0;
y=(i-.5)*g+ym;
 P   g=getspec(rand(70)*.01,.01,0)*.5;
ym=(rand(h)-h/2)*.003;
red=b;green=b;blue=b        n=2       ���    $   �      x=0;
y=(i-.5)*g+ym;
 P   g=getspec(rand(70)*.01,.01,0)*.5;
ym=(rand(h)-h/2)*.003;
red=b;green=b;blue=b        n=2       ���    $   �      x=0;
y=(i-.5)*g+ym;
 P   g=getspec(rand(70)*.01,.01,0)*.5;
ym=(rand(h)-h/2)*.003;
red=b;green=b;blue=b        n=2       ���    $   p      x=0;
y=(i-.5)*s+ym;
 -   ym=(rand(h)-h/2)*.004;
red=b;green=b;blue=b        n=2; s=2/h       ���    +   2   	  dx=x*cy-sy;dz=x*sy+cy;dy=y*af+yo;
ry=1/dx;d=1/dz;

�CR1 L;
k1=-ox*ry;
k1=if(below(k1,0),1000,k1);
k1=if(above(k1*dz+oz,0),1000,k1);
�CR1 R;
k2=(1-ox)*ry;
k2=if(below(k2,0),1000,k2);
k2=if(above(k2*dz+oz,0),1000,k2);
�CR1;
k1=min(k1,k2);

�BW;
k2=(6-fo-oz)*d;
k2=if(below(k2,0),1000,k2);
k2=if(above(abs(k2*dx+ox-.5),1.5),1000,k2);
�FW;
k3=-oz*d;
k3=if(below(k3,0),1000,k3);
k3=if(below(abs(k3*dx+ox-.5),.5),1000,k3);
�FWBW;
k2=min(k2,k3);
�Clipnear;
k3=(-24-oz)*d;
k3=if(below(k3,0),1000,k3);
k3=if(above(abs(k3*dx+ox-.5),1.5),1000,k3);
k2=min(k2,k3);

�LW;
k3=(-ox-1)*ry;
r=k3*dz+oz;
k3=if(below(k3,0),1000,k3);
k3=if(below(r,0),1000,k3);
k3=if(fp,if(below(abs(r-4.5),.49),1000,k3),k3);
k3=if(fq,if(below(abs(r-3.01),if(fp,1.01,0.95)),1000,k3),k3);
�RW;
k4=(2-ox)*ry;
k4=if(below(k4,0),1000,k4);
r=k4*dz+oz;
k4=if(below(r,0),1000,k4);
k4=if(fp-1,if(below(abs(r-4.5),.49),1000,k4),k4);
k4=if(fr,if(below(abs(r-1.51),1.49),1000,k4),k4);
�LRW;
k3=min(k3,k4);
�LW ink;
k4=(-ox-2)*ry;
k4=if(below(k4,0),1000,k4);
r=k4*dz+oz;
k4=if(below(r,0),1000,k4);
k4=if(above(abs(r-3),if(fp,1.01,0.99)),1000,k4);
k3=min(k3,k4);
�RW ink;
k4=(3-ox)*ry;
k4=if(below(k4,0),1000,k4);
k4=if(above(k4*dz+oz,3.5),100,k4);
k3=min(k3,k4);

k3=if(above(k3,1000),1000,k3);


�CR2 B;
k4=(5-oz)*d;
k4=if(below(k4,0),1000,k4);
r=abs(k4*dx+ox-.5);
k4=if(below(r,1.5),1000,k4);
k4=if(above(r,10),1000,k4);
�CR2 F;
k5=(4-oz)*d;
k5=if(below(k5,0),1000,k5);
r=k5*dx+ox-.5;
k5=if(above(abs(r),10),1000,k5);
x=if(band(fp,fq),.51,0);
k5=if(below(abs(r+x),1.51+x),1000,k5);
�CR2;
k4=min(k4,k5);
�LW ink;
k5=(2-oz)*d;
k5=if(below(k5,0),100,k5);
k5=if(fq,if(below(k5*dx+ox,-.995),k5,100),100);
k4=min(k4,k5);
�RW ink;
k5=(3-oz)*d;
k5=if(below(k5,0),100,k5);
k5=if(fr,if(above(k5*dx+ox-.99,.998),k5,100),100);


k4=min(k4,k5);

�LFW;
k5=(-ox-13.5)*ry;
k5=if(below(k5,0),1000,k5);
k5=if(below(k5*dz+oz,0),1000,k5);
�RFW;
k6=(14.5-ox)*ry;
k6=if(below(k6,0),1000,k6);
k6=if(below(k6*dz+oz,0),1000,k6);
�LRFW;
k5=min(k5,k6);
k5=min(1000,k5);

k6=min(min(min(k1,k2),min(k3,k4)),k5);


dx=dx*k6;dy=dy*k6;dz=dz*k6+oz;


x=if(equal(k6,k4),abs(dx),if(bor(equal(k6,k4),equal(k6,k2)),dx,dz));
y=dy*.3;x=x*.5;d=sqr(dx-ox)+sqr(dy-oy)+sqr(dz-oz);
x=0   t=t-0.0025;spd=spd*.9+getspec(0,0,0)*.03;
bb=bb+ps;
ry=pa;

�ph1 accel cr1;
x=equal(ph,0);
ps=if(band(x,below(ps,.05+spd*.06)),ps+.01,ps);
ph=if(band(x,bor(above(oz,3.7),above(oz,2+min(2,rand(5)*2)))),1+rand(2),ph);
phc=if(band(x,equal(ph,1)),0,phc);
phv=if(band(x,equal(ph,1)),rand(2)*2-1,phv);
�ph2 decel mn;
x=equal(ph,1);
ps=if(x,ps*.8,ps);
phc=if(x,phc+(.06+spd*.07)*phv,phc);
phc=if(band(x,above(phc,pi)),phc-pi*2,phc);
phc=if(band(x,below(phc,-pi)),phc+pi*2,phc);
ry=if(x,ry+phc,ry);
y=1.57+atan2(-5+oz,ox-2+fpt*3);
ph=if(band(x,band(1,below(abs(ry-y),0.05))),2,ph);
pa=if(band(x,equal(ph,2)),ry,pa);
�ph3 mn conti;
x=equal(ph,2);
ps=if(band(x,below(ps,(.05+spd*.06))),ps+.005,ps);
y=1.57+atan2(-5+oz,ox-2+fpt*3);
y=sin(pa-y);y=min(abs(y),.06+spd*.07)*sign(y);
pa=if(x,pa-y,pa);
ph=if(band(x,bor(above(abs(ox-.5),1.3),above(oz,3.85))),3,ph);

�ph4 align;
x=equal(ph,3);
ps=if(band(x,below(ps,.05+spd*.06)),ps+.0006125,ps);
y=sin(pa+(fpt-.5)*pi);y=min(abs(y),.06+spd*.07)*sign(y);
pa=if(x,pa+y,pa);
oz=if(x,oz*.9+.45,oz);
ph=if(band(band(x,above(abs(ox-.5),2.5)),band(below(abs(y),.025),below(abs(oz-4.5),.025))),0,ph);
�reset;
y=equal(ph,0);
x=band(x,y);
oz=if(x,(if(fpt,.025,.03)-.5+abs(ox-.5)-9),oz);
ox=if(x,.5,ox);
pa=if(x,0,pa);
ry=if(x,0,ry);
fo=if(x,rand(2),fo);
fp=if(x,rand(3),fp);
fpt=if(x,if(equal(fp,2),rand(2),fp),fpt);
fq=if(x,rand(2),fq);
fr=if(x,rand(2),fr);

cy=cos(ry+.001);sy=sin(ry+.001);
ox=ox-ps*sin(pa)*2;oz=oz+ps*cos(pa)*2;
oz=min(4.9,oz);
yo=50/h;

af=w/h; B   phv=if(equal(ph,1),if(rand(10),phv,-phv),phv);
ob=rand(20)*.1-1; �   t=0;spd=0;pi=acos(-1);ph=0;ph=0;fo=rand(2);ox=.5;oy=-.2;oz=-4;r=0;k1=0;k2=0;k3=0;k4=0;k5=0;k6=0;fp=rand(3);fpt=if(equal(fp,2),rand(2),fp);fq=rand(2);fr=rand(2);ps=0.0;pa=0;phc=0;phv=0;       0   	                      �                                          <   ($     ���<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ($     p��<   A ���                     `          ����            �     �1Terminal                           �                            