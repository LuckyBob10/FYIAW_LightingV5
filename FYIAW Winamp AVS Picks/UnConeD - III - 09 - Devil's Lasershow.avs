Nullsoft AVS Preset 0.2    K  G  Whacko AVS III - Devil's Lasershow
---------------------------------------------------------

I improved the volumetric light code from Space Rave and changed the projectors from random beams into 'spirograph' lasers. Then I situated five of them evenly on a circle and completed the whole with a five-pointed star.

What's cool is that few of the image is recycled in the next frame, yet you still get a smoothly coloured result.

Just figured it's neat, not that I'm a satanist or anything :)


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)
 ,         (       �$   ,  �  rad=1-rad;th=i*tpi;mth=th*lfa;
px=(cos(th)+cos(mth+t)*.4)*rad;py=(sin(th)+sin(mth+t)*.4)*rad;pz=rad*2;
x1=px*cz+py*sz;y1=py*cz-px*sz;
py=y1*ca+pz*sa;pz=pz*ca-y1*sa;x1=x1+ox;y1=py+oy;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
xdi=x-gx;xdi=if(equal(xdi,0),1,xdi);
lk=(y-gy)/xdi;sf=sign(xdi);sf=sf*min(1-x*sf,3);
x=if(rad,x+sf,x);y=if(rad,y+lk*sf,y);
x=if(above(abs(x),2),x*.1,x);
y=if(above(abs(y),2),y*.1,y);
gx=x;gy=y;
   t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;ra=ra+rao;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);ca=cos(ra);sa=sin(ra);hu=hu+0.01;af=w/h;ox=cos(0*tpi*.2)*3;oy=sin(0*tpi*.2)*3;rad=1;gx=0;gy=0;red=sin(hu)*.04+.04;green=sin(hu+2.09)*.04+.04;blue=sin(hu+4.09)*.04+.04 �   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;rao=getosc(0.5,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5 d   n=230;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;ra=0.1;rao=0.02;hu=0;tpi=acos(-1)*2;       ���    $   .  �  rad=1-rad;th=i*tpi;mth=th*lfa;
px=(cos(th)+cos(mth+t)*.4)*rad;py=(sin(th)+sin(mth+t)*.4)*rad;pz=rad*2;
x1=px*cz+py*sz;y1=py*cz-px*sz;
py=y1*ca+pz*sa;pz=pz*ca-y1*sa;x1=x1+ox;y1=py+oy;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
xdi=x-gx;xdi=if(equal(xdi,0),1,xdi);
lk=(y-gy)/xdi;sf=sign(xdi);sf=sf*min(1-x*sf,3);
x=if(rad,x+sf,x);y=if(rad,y+lk*sf,y);
x=if(above(abs(x),2),x*.1,x);
y=if(above(abs(y),2),y*.1,y);
gx=x;gy=y;

   t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;ra=ra+rao;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);ca=cos(ra);sa=sin(ra);hu=hu+0.01;af=w/h;ox=cos(1*tpi*.2)*3;oy=sin(1*tpi*.2)*3;rad=1;gx=0;gy=0;red=sin(hu)*.04+.04;green=sin(hu+2.09)*.04+.04;blue=sin(hu+4.09)*.04+.04 �   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;rao=getosc(0.4,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5 d   n=230;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;ra=0.1;rao=0.02;hu=0;tpi=acos(-1)*2;       ���    $   ,  �  rad=1-rad;th=i*tpi;mth=th*lfa;
px=(cos(th)+cos(mth+t)*.4)*rad;py=(sin(th)+sin(mth+t)*.4)*rad;pz=rad*2;
x1=px*cz+py*sz;y1=py*cz-px*sz;
py=y1*ca+pz*sa;pz=pz*ca-y1*sa;x1=x1+ox;y1=py+oy;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
xdi=x-gx;xdi=if(equal(xdi,0),1,xdi);
lk=(y-gy)/xdi;sf=sign(xdi);sf=sf*min(1-x*sf,3);
x=if(rad,x+sf,x);y=if(rad,y+lk*sf,y);
x=if(above(abs(x),2),x*.1,x);
y=if(above(abs(y),2),y*.1,y);
gx=x;gy=y;
   t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;ra=ra+rao;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);ca=cos(ra);sa=sin(ra);hu=hu+0.01;af=w/h;ox=cos(2*tpi*.2)*3;oy=sin(2*tpi*.2)*3;rad=1;gx=0;gy=0;red=sin(hu)*.04+.04;green=sin(hu+2.09)*.04+.04;blue=sin(hu+4.18)*.04+.04 �   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;rao=getosc(0.3,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5 d   n=230;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;ra=0.1;rao=0.02;hu=0;tpi=acos(-1)*2;       ���    $   .  �  rad=1-rad;th=i*tpi;mth=th*lfa;
px=(cos(th)+cos(mth+t)*.4)*rad;py=(sin(th)+sin(mth+t)*.4)*rad;pz=rad*2;
x1=px*cz+py*sz;y1=py*cz-px*sz;
py=y1*ca+pz*sa;pz=pz*ca-y1*sa;x1=x1+ox;y1=py+oy;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
xdi=x-gx;xdi=if(equal(xdi,0),1,xdi);
lk=(y-gy)/xdi;sf=sign(xdi);sf=sf*min(1-x*sf,3);
x=if(rad,x+sf,x);y=if(rad,y+lk*sf,y);
x=if(above(abs(x),2),x*.1,x);
y=if(above(abs(y),2),y*.1,y);
gx=x;gy=y;

   t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;ra=ra+rao;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);ca=cos(ra);sa=sin(ra);hu=hu+0.01;af=w/h;ox=cos(3*tpi*.2)*3;oy=sin(3*tpi*.2)*3;rad=1;gx=0;gy=0;red=sin(hu)*.04+.04;green=sin(hu+2.09)*.04+.04;blue=sin(hu+4.09)*.04+.04 �   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;rao=getosc(0.6,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5 d   n=230;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;ra=0.1;rao=0.02;hu=0;tpi=acos(-1)*2;       ���    $   ,  �  rad=1-rad;th=i*tpi;mth=th*lfa;
px=(cos(th)+cos(mth+t)*.4)*rad;py=(sin(th)+sin(mth+t)*.4)*rad;pz=rad*2;
x1=px*cz+py*sz;y1=py*cz-px*sz;
py=y1*ca+pz*sa;pz=pz*ca-y1*sa;x1=x1+ox;y1=py+oy;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
xdi=x-gx;xdi=if(equal(xdi,0),1,xdi);
lk=(y-gy)/xdi;sf=sign(xdi);sf=sf*min(1-x*sf,3);
x=if(rad,x+sf,x);y=if(rad,y+lk*sf,y);
x=if(above(abs(x),2),x*.1,x);
y=if(above(abs(y),2),y*.1,y);
gx=x;gy=y;
   t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;ra=ra+rao;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);ca=cos(ra);sa=sin(ra);hu=hu+0.01;af=w/h;ox=cos(4*tpi*.2)*3;oy=sin(4*tpi*.2)*3;rad=1;gx=0;gy=0;red=sin(hu)*.04+.04;green=sin(hu+2.09)*.04+.04;blue=sin(hu+4.09)*.04+.04 �   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;rao=getosc(0.7,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5 d   n=230;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;ra=0.1;rao=0.02;hu=0;tpi=acos(-1)*2;       ���    (       �$   F  �   th=i*tpi*8+getosc(i,0,0)*.2;
px=cos(th)*3;py=sin(th)*3;pz=0;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;iz3=1/abs(z2*cy-x1*sy+7.5);
x=x3*iz3;y=y2*iz3*af;
 �   t=t+0.08;rx=rx+rxo;ry=ry+ryo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);hu=hu+0.01;af=w/h;red=(sin(hu)*.1+.1)*cv;green=(sin(hu+2.09)*.1+.1)*cv;blue=(sin(hu+4.09)*.1+.1)*cv;cv=cv*.95 }   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;hu=hu+rand(100)/50;lfa=(rand(6)+2)*sign(rand(2)-1)-1;t=t+getosc(0.4,0,0)*.5;cv=1 @   n=21;ry=-0.12;rx=-0.13;rxo=0.019;ryo=-0.03;hu=0;tpi=acos(-1)*2;       ���       �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            