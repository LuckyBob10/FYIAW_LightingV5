Nullsoft AVS Preset 0.2   i  e  ______________________________________________________

  Whacko Revisited
  Energy Crystal
  Remix by: Tuggummi

  Original: Energy Ball
______________________________________________________
������������������������������������������������������
A lot of frames was lost during this mix, but i hope their sacrifices were worth it :)
As in Alien Alloy mix, this too was only a effect mix unless we count the same "volume detection" i added to the dm & the scopes.
Anyway, not a very complicated mix, but looks pretty good imo.

- Tuggummi
______________________________________________________

 ����V  �   $�   �                           @  AVS 2.8+ Effect List Config                       &   �  	   d=d*0.95                      &   �  	   d=d*0.95                   (       �$     s   g=getosc(i,0,0.5)*sin(i*$pi)*0.12 ;
x=((i-0.5)*0.5-0.25)*0.6+g ;
y=((i-0.5)*0.5+0.25)*0.6-g;

x=x*1.3;y=y*1.3; t   vol=vol*0.9+getspec(0.5,1,0) ;
reg02=min(1.5,vol)*0.675 ;
n=(w+h)*0.2 ;
red=reg02 ;
green=reg02 ;
blue=reg02 ;        reg02=0       ���     $   �   r   g=getosc(i,0,1)*sin(i*$pi)*0.12 ;
x=((-i-0.5)*0.5+0.25)*0.6+g ;
y=((i-0.5)*0.5-0.25)*0.6+g;

x=x*1.3;y=y*1.3; 8   n=(w+h)*0.2 ;
red=reg02 ;
green=reg02 ;
blue=reg02 ;               ���     $   �   u   g=getosc(i,0,1.5)*sin(i*$pi)*0.12 ;
x=((-i-0.5)*0.5+0.75)*0.6+g ;
y=((-i-0.5)*0.5+0.25)*0.6-g;

x=x*1.3;y=y*1.3; 8   n=(w+h)*0.2 ;
red=reg02 ;
green=reg02 ;
blue=reg02 ;               ���     $   �   s   g=getosc(i,0,2)*sin(i*$pi)*0.12 ;
x=((i-0.5)*0.5+0.25)*0.6+g ;
y=((-i-0.5)*0.5+0.75)*0.6+g ;

x=x*1.3;y=y*1.3; 8   n=(w+h)*0.2 ;
red=reg02 ;
green=reg02 ;
blue=reg02 ;               ���        6   �     z=0.75 ;
x=x*z ;
y=y*z                  (        �$   �   8   r=i*$pi*2+$pi*0.25 ; d=1.05 ;
x=sin(r)*d ;
y=cos(r)*d .   n=5 ;
red=reg02 ;
green=reg02 ;
blue=reg02               ���                      �                            $          }  p=p*0.8;
reg00=min(1.5,reg02)*0.2+p;
t=t+reg00;pt=pt+reg00;
sf=sin(t*.291)*cos(t*0.161)*sin(cos(t*.3631))*2.9;
ox=sin(pt*.1231)*1.5/(zm+1);oy=sin(pt*.1)*1.5/(zm+1);oz=cos(pt*.0913)*1.5/(zm+1);
rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.5;
ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.5;
ry=-atan2(ox,oz)+ryo;
rx=-atan2(oy,sqrt(sqr(ox)+sqr(oz)))+rxo;
rz=sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
zm=zm*.8;
af=h/w;
p=reg02*0.6;

reg10=ox;reg11=oy;reg12=oz;reg13=cx;reg14=sx;reg15=cy;reg16=sy;reg17=cz;reg18=sz;reg19=t;reg20=pt;reg21=p;reg22=af;     �   n=0;// Global
reg00=0 ; t=rand(2000)*.01;pt=rand(1000)*.01;rx=1.57;ry=1.57;rx=0;ry=0;rxo=0.01;ryo=0.1;rycf=23;rz=0;rzo=0.02;pt=0       ���     +     S  dy=y*af;dz=.7;
dx1=x*cz-dy*sz;dy1=x*sz+dy*cz;
dy2=dy1*cx-dz*sx;dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;dz3=dx1*sy+dz2*cy;
k=((oz)/dz3)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
x=-(iy-oy)*.3;y=(ix-ox)*.3;
d=max(abs(x),abs(y));
alpha=if(above(d,.95),0,min(1,abs(oz*2.5))); ~   ox=reg10;oy=reg11;oz=reg12;
cx=reg13;sx=reg14;
cy=reg15;sy=reg16;
cz=reg17;sz=reg18;
t=reg19;pt=reg20;p=reg21;af=reg22;
                                   �����  � $�   �                           @  AVS 2.8+ Effect List Config                    +   4  �  dy=y*af;dz=.7;
dx1=x*cz-dy*sz;dy1=x*sz+dy*cz;
dy2=dy1*cx-dz*sx;dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;dz3=dx1*sy+dz2*cy;
k=((oy)/dy2)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
ix=if(kw,0,ix);iy=if(kw,0,iy);iz=if(kw,1000,iz);
x=-(ix-ox)*.3;y=(iz-oz)*.3;
d=max(abs(x),abs(y));
alpha=if(above(d,.95),0,min(1,abs(oy*2.5))); ~   ox=reg10;oy=reg11;oz=reg12;
cx=reg13;sx=reg14;
cy=reg15;sy=reg16;
cz=reg17;sz=reg18;
t=reg19;pt=reg20;p=reg21;af=reg22;
                                   �����  � $�   �                           @  AVS 2.8+ Effect List Config                    +   4  �  dy=y*af;dz=.7;
dx1=x*cz-dy*sz;dy1=x*sz+dy*cz;
dy2=dy1*cx-dz*sx;dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;dz3=dx1*sy+dz2*cy;
k=((ox)/dx3)*2;
k=if(below(k,0),-100,k);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz+dz3*k;
kw=equal(k,-100);alpha=if(kw,0,1);
ix=if(kw,0,ix);iy=if(kw,1000,iy);iz=if(kw,0,iz);
x=-(iz-oz)*.3;y=(iy-oy)*.3;
d=max(abs(x),abs(y));
alpha=if(above(d,.95),0,min(1,abs(ox*2.5))); ~   ox=reg10;oy=reg11;oz=reg12;
cx=reg13;sx=reg14;
cy=reg15;sy=reg16;
cz=reg17;sz=reg18;
t=reg19;pt=reg20;p=reg21;af=reg22;
                                   (       �$   �  �  q=q+1;
px=equal(q,1)-equal(q,3)+equal(q,5)-equal(q,7)+equal(q,9);
py=equal(q,2)-equal(q,4)+equal(q,11)-equal(q,13);
pz=equal(q,6)-equal(q,8)+equal(q,10)-equal(q,12)+equal(q,14);

px=px*.481+ox;py=py*.481+oy;pz=pz*.481+oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
ldt=dt;
dt=if(above(z2,.01),1/z2,0);
x=if(dt,x3*dt*psf,x);y=if(dt,y3*dt*af*psf,y);
skip=bnot(dt)+bnot(ldt)+equal(q,6);
red=.3*reg02*2;green=red;blue=red;
linesize=lsz*dt; �   ox=reg10;oy=reg11;oz=reg12;
cx=reg13;sx=-reg14;
cy=reg15;sy=-reg16;
cz=reg17;sz=-reg18;
t=reg19;pt=reg20;p=reg21;af=1/reg22;
psf=.7;q=0;dt=1;
lsz=w/320;        n=14;       ���    �q�Color Map                       �                        �                                                       ��                                                       ���                                                       p��                                                       ���                                                       ���                                                       ���                                                       0��                                                            E   v@ �"  �   ٨W �*  �   �� w*  �   ��� �r              �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���       �                                          <   �w     ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �w     h��<   A ���                     `          ����            �     �1Terminal                           �                            