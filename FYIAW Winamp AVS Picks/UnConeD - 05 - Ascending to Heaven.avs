Nullsoft AVS Preset 0.2        Whacko AVS II - Ascending to Heaven
--------------------------------------------------------------

This the result of playing around with the canvas filter/movement (in Impressionist) and an improved tunnel-filter from pack 1. The camera is a lot smoother and because of the constantly swirling pattern, it's a lot more fluid.

It's also pointed slightly more upwards to enhance the ascending-movement. Great on ambient music.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)

 ����_  �   $�   �                           @  AVS 2.8+ Effect List Config                                 +   �   E   dd=(d+cos(t+r*3)/30)*0.95;
rr=r+sin(t)*cos(2*d)/10;
d=dd;
r=rr;
 
   t=t+0.05;        t=0;t                             �����  �  $�   �                           @  AVS 2.8+ Effect List Config                             $   T  r   py=if(equal(px,1),py+.1,py);px=if(equal(px,1),-1,px+.1);
x=px+getosc(i,0.01,1);y=py+getosc(i,0.01,2);
cl=t;

 S   px=-1.1;py=-1;t=t+0.02;red=sin(t+ro)/2+.5;green=sin(t+go)/2+.5;blue=sin(t+bo)/2+.5 O   ro=rand(100)/100-0.5;go=rand(100)/100-0.5+2.09;bo=rand(100)/100-0.5+4.18;t=t+2    n=484;t=0;ro=0;go=2.09;bo=4.18       ���                     �   �  j   dc=rand(2);rs=rand(2)*2-1;rt=rand(2)*2-1;
x=if(dc,x,x+rs*rand(50)/2000);
y=if(dc,y+rt*rand(50)/2000,y);                                     �            ���             +   #  $  x=sin(r)*d;y=-cos(r)*d;dz=0.85;
dy2=y*cx-dz*sx;
dz2=y*sx+dz*cx;
dx3=x*cy-dz2*sy;
dz3=x*sy+dz2*cy;
e=sqr(dx3)+sqr(dy2);
k=-.5*sqrt(8*e)/e;
iz=dz3*k;
x=asin(sin((oz+iz)*.1))*.5;y=atan2(dy2*k,dx3*k)*.954;
alpha=(30-aa*20)/sqr(iz);
alpha=if(above(alpha,1),1,if(below(alpha,0),0,alpha)) �   oz=oz+0.5+getosc(0,0.1,0)/10;
rx=rx-rxo;ry=ry+0.03;
cx=cos(sin(rx)/2-3.3);sx=sin(sin(rx)/2-3.3);
cy=cos(sin(ry)/2);sy=sin(sin(ry)/2);
aa=aa*0.8;    rxo=rand(100)/500-0.1;
aa=1;    oza=0;rx=0;ry=4.0;rxo=0.1;                             �                                          <   �>    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �>    ��<   A ���                     `          ����            �     �1Terminal                           �                            