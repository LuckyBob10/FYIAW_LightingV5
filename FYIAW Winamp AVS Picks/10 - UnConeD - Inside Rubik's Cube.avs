Nullsoft AVS Preset 0.2      {  This is a modified version of the Winamp Disco preset. Instead of 2 planes, I used 6 planes that form a cube.

The coloring effect is also mostly the same, except here it is applied to 3x3 grid.

The 'weird blobs' on some of the cubes edges are a side effect of the wrap function of the dynamic movement, just like the glitch in the 'Wormhole' preset. Nothing to do about it except increase the grid-resolution for that Dynamic Movement.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(You may use this preset partially or whole in your own presets or packs, as long as this message is included completely)
 ����w  �   $�   �                           @  AVS 2.8+ Effect List Config                                                 (       �   ^   �  A   x=x*x;
y=y*y;
x=if(above(x,0.9),1,x);
y=if(above(y,0.9),1,y);                   $   �   Z   d=(getspec(0,0.01,0)+getspec(0.1,0.01,0)+2)*v*0.04; r=i*3.14159*4; x=cos(r)*d; y=sin(r)*d            n=10       ***           "      ���    .   �     p=y;
y=x;
x=p;                          &      ���    /   �     x=-x*3+2;y=y*3+2;                   ����W	  � 
$�   �                           @  AVS 2.8+ Effect List Config                    (        �$   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 )   n=30;hu=0;pl=-1;pt=-1;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 +   n=30;hu=0;pl=-.33;pt=-1;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 *   n=30;hu=0;pl=.33;pt=-1;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 +   n=30;hu=0;pl=-1;pt=-.33;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 -   n=30;hu=0;pl=-.33;pt=-.33;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 ,   n=30;hu=0;pl=.33;pt=-.33;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 *   n=30;hu=0;pl=-1;pt=.33;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 ,   n=30;hu=0;pl=-.33;pt=.33;pw=2/3;ph=2/3;bf=0       ���    $   �   *   x=(i*pw+pl);y=(sin(i*31+.4)*.5+.5)*ph+pt; N   hu=hu-0.02;red=sin(hu)*.5+bf;green=sin(hu+2.09)*.5+bf;blue=sin(hu+4.18)*.5+bf )   hu=hu+rand(100)/50-1;bf=rand(50)/100+.25 +   n=30;hu=0;pl=.33;pt=.33;pw=2/3;ph=2/3;bf=0       ���                d                  "   )                    whacko-5.bmp         +   �  =  dr=sqrt(x*x+y*y+1);
dx=x;dy=y;dz=1.1;
dy2=dy*cx-dz*sx;
dz2=dy*sx+dz*cx;
dx3=dx*cy-dz2*sy;
dz3=dx*sy+dz2*cy;
k1=abs((-1)/dy2);
k2=abs((-1)/dx3);
k3=abs((-1)/dz3);
k=min(min(k1,k2),k3);
ix=dx3*k;iy=dy2*k;iz=dz3*k;
x=if(equal(k,k1),-ix,if(equal(k,k2),-iy,-ix));
y=if(equal(k,k1),iz,if(equal(k,k2),iz,iy));
 �   t=t+0.3;;
rx=rx+rxo-0.05*cos(t/11)*cos(t/20)*sin(sin(t/9));
ry=ry+ryo+0.05*sin(t/10)*cos(t/22)*sin(cos(t/31));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);
rxo=(rxo*3+rxt)/4;
ryo=(ryo*3+ryt)/4;
 3   rxt=(rand(80)/320)-0.10;
ryt=(rand(80)/320)-0.10; 7   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rxo=0;ryo=0;rxt=0;ryt=0;       *   *                     �                                          <   <     h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   <     ��<   A ���                     `          ����            �     �1Terminal                           �                            