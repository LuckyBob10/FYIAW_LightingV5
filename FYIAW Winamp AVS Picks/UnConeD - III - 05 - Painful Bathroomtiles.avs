Nullsoft AVS Preset 0.2    �  �  Whacko AVS III - Painful Bathroomtiles
-------------------------------------------------------------
Another improvement in the 3D DM. Using the messed up backface behaviour I made the shifting cubes. A mosaic-like movement provides the tile texture and motion blur does the rest :)

The original title was 'Trying to reach the toilet after too much booze', but that would be slightly too obvious :)


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)
 �����  �  $�   �                           @  AVS 2.8+ Effect List Config                    ����*  �   $�   �                           @  AVS 2.8+ Effect List Config                                 (       �   $      ���        )\O?�        �@      $      ���        ��@�        �@      U   �  8   x=x+(x*100%10/100-0.05)*.1;
y=y+(y*100%10/100-0.05)*.1                   &         �
                             �                ,         +   �    x=sin(r)*d;y=-cos(r)*d;
dx=x;dy=y;dz=0.6;
dx1=dx*cz-dy*sz;
dy1=dx*sz+dy*cz;
dy2=dy1*cx-dz*sx;
dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k1=abs((-1-oy)/dy2);
k1=if(below(k1*dy2,0),abs((1-oy)/dy2),k1);
k2=abs((-1-ox)/dx3);
k2=if(below(k2*dx3,0),abs((1-ox)/dx3),k2);
k3=abs((-1-oz)/dz3);
k3=if(below(k3*dz3,0),abs((1-oz)/dz3),k3);
k=max(max(k1,k2),k3);
ix=dx3*k-ox;iy=dy2*k-oy;iz=dz3*k-oz;
x=if(equal(k,k1),-ix,if(equal(k,k2),-iy,-ix));
y=if(equal(k,k1),iz,if(equal(k,k2),iz,iy));
ix=ix+ox;iy=iy+oy;iz=iz+oz;
d=sqrt(ix*ix+iy*iy+iz*iz);
alpha=10/d-0.4;
x=asin(sin(x*2.7*.1))*.5;
y=asin(sin(y*2.7*.1))*.5;
alpha=if(above(alpha,1),1,if(below(alpha,0),0,alpha));
d1=max(max(abs(ix)-abs(ox),abs(iy)-abs(oy)),abs(iz)-abs(oz));
alpha=if(above(d1,8),0,alpha);
 �   t=t+0.2;rx=rx+rxo;ry=ry+ryo-0.01;rz=rz+rzo+0.01;
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);

rxo=-(rx-rxt)*.02;
ryo=-(ry-ryt)*.02;
rzo=-(rz-rzt)*.02;

ox=sin(t*.41)*3;oy=sin(t*.37)*3;oz=sin(t*.31)*3; b   rxt=rx+rand(100)*.01*6.28-3.14;
ryt=ry+rand(100)*.01*6.28-3.14;
rzt=rz+rand(100)*.01*6.28-3.14; H   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rz=0;rxo=0;ryo=0;rzo=0;rxt=0;ryt=0;rzt=0;       $   $                   �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            