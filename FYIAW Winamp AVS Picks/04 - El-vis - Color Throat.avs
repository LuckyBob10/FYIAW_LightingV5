Nullsoft AVS Preset 0.2     	  ______________________________________________________

  Whacko Revisited
  Color Throat
  Remix by: EL-vis (c)2004

  Original: Fiber Optics
______________________________________________________
������������������������������������������������������

 ����T  �  $�   �                           @  AVS 2.8+ Effect List Config                    $   (  �  vt=vt+1;vd=vd+1;
assign(gmegabuf(vd),if(bor(equal(fct,0),b),(getosc(abs(x),0.1,0)-gmegabuf(vt))/5,init*gmegabuf(vd)));
assign(gmegabuf(vt),init*gmegabuf(vt)+gmegabuf(vd));
linesize=4;
x=2*i-1;y=-1;
col=gmegabuf(vt);col1=0.3-col;col2=col*2;
green=equal(bcol1,0)*col+equal(bcol1,1)*col1+equal(bcol1,2)*col2-bc;
red=equal(bcol2,0)*col1+equal(bcol2,1)*col2+equal(bcol2,2)*col-bc;
blue=equal(bcol3,0)*col2+equal(bcol3,1)*col+equal(bcol3,2)*col1-bc;
init=1;
 X   n=w*(nb*0.5+(1-nb)*0.03);
vt=1000;vd=3000;
fct=if(equal(fct,5),0,fct+1);
bc=bc*0.7
 �   bt=if(equal(bt,13),0,bt+1);
bcol1=if(equal(bt,0),rand(3),bcol1);
bcol2=if(equal(bt,0),rand(3),bcol2);
bcol3=if(equal(bt,0),rand(3),bcol3);
nb=if(equal(bt,0),bnot(nb),nb);
bc=if(equal(bt,0),1,bc);    n=w;pt=1;init=0;nb=0.5              (       �$   q  b   
linesize=4;
x=0.5*i-0.25;y=-1;col=0.5*sin(i*$PI*6)-bc;
green=col*gr;red=col*rd;blue=col*bl;
    n=w*0.1;
bc=bc*0.7
 �   bt=if(equal(bt,13),0,bt+1);
rd=if(equal(bt,0),0.5+rand(15)/10,rd);
gr=if(equal(bt,0),0.5+rand(15)/10,gr);
bl=if(equal(bt,0),0.5+rand(15)/10,bl);
bc=if(equal(bt,0),1,bc); *   n=w*0.1;pt=1;init=0;nb=0.5;rd=1;gr=1;bl=1                                �      &   �  	   y=y-0.02                    +   $  f  dy=y*af;
dx1=x*cz-dy*sz;dy1=x*sz+dy*cz;
dy=dy1*cx-1.2*sx;dz2=dy1*sx+1.2*cx;
dx=dx1*cy-dz2*sy;dz=dx1*sy+dz2*cy;

k=.1;wh=0.8;

x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
wh=.5;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
wh=1;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
wh=.2;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;
wh=1;
x=(k*dz+oz)*sc;x=sqr(k*dx+ox + sin(x*.51+sin(x*.127)*.8)*bend) + sqr(k*dy+oy + sin(x*.41+cos(x*.213)*.9)*bend) - 1;k=k-x*wh;

ix=ox+dx*k;iy=oy+dy*k;iz=dz*k;
x=(iz+oz)*sc;
ix=ix+sin(x*.51+sin(x*.127)*.8)*bend;
iy=iy+sin(x*.41+cos(x*.213)*.9)*bend;
x=asin(sin(atan2(iy,ix)))*1.272+1;y=-iz*0.2+0.3;
alpha=exp(-abs(iz))*40;x=min(2.97,x); ^  rry=2*atan2(lx-ox,spd);rrx=2*-atan2(oy-ly,sqrt(sqr(ox-lx)+sqr(spd)));
rz=rz+(rx+ry)*0.1+bt*0.2;
ry=ry+sin(rry-ry)*.3;
rx=rx+sin(rrx-rx)*.3;
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
af=h/w;
bt=bt*0.9;
oz=oz+spd*0.3;

lx=ox;ly=oy;
x=oz*sc;
ox=-sin(x*.51+sin(x*.127)*.8)*bend;
oy=-sin(x*.41+cos(x*.213)*.9)*bend;
    bt=rand(20)/100-0.1;    t=0;sc=1;spd=.4;bend=.65;                               �                                          <   ��     �C�<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��     (۾<   A ���                     `          ����            �     �1Terminal                           �                            