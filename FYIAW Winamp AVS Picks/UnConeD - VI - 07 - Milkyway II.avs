Nullsoft AVS Preset 0.2   C  ?   Whacko AVS VI - Milkyway II
-------------------------------------------------

I know re-doing old presets is kind of lame, but I just wanted to make a Texer'ed milkyway. The superscope for the particles is a modifed version of the original, but of course with a lower density and better movement (because it's now the focus of the preset).

Still neat though :)

Steven Wittens / UnConeD
steven@acko.net - www.acko.net

(If you wish to use any part of this preset in your own packs you are free to do so, on the condition that you include my contact information) (       �$   �  m  sd1=(sd1*147.1+sd3*11+977)%10000;
sd2=(sd2*639+3411)%10000;
sd3=(sd3*127+6431)%10000;
rd=sqrt(sd2*.0001)*.7;h=(sd3*.0002-1)/(sqr(rd*3)+1);
x1=sd1*.000628;
x1=x1-pp*pow(abs(rd-.4),.7)*sign(rd-.4);
px=cos(x1)*rd*1.8;py=sin(x1)*rd*1.8;pz=h*.2;
px=px+ox;py=py+oy;pz=pz+oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x3*dt,-1);y=if(dt,y3*dt*af,-1);
x1=abs(getosc(rd,0,0));
z1=dt*.3-.03;
dt=min(dt*.3+x1,3-rd*3)*4.5;
red=(sin(hu)*dt+dt+x1*.2)*z1;
green=(sin(hu+2.09)*dt+dt+x1*.2)*z1;
blue=(sin(hu+4.18)*dt+dt+x1*.2)*z1;
 �  pp=pp+dr*.2;dr=dr*.8+drt*.2;hu=hu+.002;t=t+0.05;pt=pt+0.05+ti*.4;rd=1.3+sin(t*.0158)*cos(t*0.0211)*.5;ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.3;ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.3;ry=atan2(ox,oz)-ryo;rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)))-rxo;rz=-sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;sd1=1213;sd2=14;sd3=44;ti=ti*.9 K   bc=(bc+1)%8;ti=1;hu=if(bc,hu,rand(628)*.01);drt=getosc(.44,0,0)*100%2*2-1; D   n=60;tpi=acos(-1)*2;pt=getosc(0.4,0,0)*1000;hu=rand(628)*.01;drt=1;       ���     $   �  n  sd1=(sd1*147.1+sd3*11+977)%10000;
sd2=(sd2*639+3411)%10000;
sd3=(sd3*127+6431)%10000;
rd=(sd2*.0001)*.66;h=(sd3*.0002-1)/(sqr(rd*3)+1);
x1=sd1*.000628;
x1=x1-pp*pow(abs(rd-.4),.7)*sign(rd-.4);
px=cos(x1)*rd*1.8;py=sin(x1)*rd*1.8;pz=h*.2;
px=px+ox;py=py+oy;pz=pz+oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x3*dt,-1);y=if(dt,y3*dt*af,-1);
x1=abs(getosc(rd,0,0))*5;
z1=dt*.3-.03;
dt=min(dt*.2+x1,2-rd)*4;
red=(sin(hu+i)*dt+dt+x1*.3)*z1;
green=(sin(hu+i+2.09)*dt+dt+x1*.3)*z1;
blue=(sin(hu+i+4.18)*dt+dt+x1*.3)*z1;
 �  pp=pp+dr*.2;dr=dr*.8+drt*.2;hu=hu+.002;t=t+0.05;pt=pt+0.05+ti*.4;rd=1.3+sin(t*.0158)*cos(t*0.0211)*.5;ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.3;ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.3;ry=atan2(ox,oz)-ryo;rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)))-rxo;rz=-sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;sd1=1213;sd2=14;sd3=44;ti=ti*.9 K   bc=(bc+1)%8;ti=1;hu=if(bc,hu,rand(628)*.01);drt=getosc(.44,0,0)*100%2*2-1; D   n=60;tpi=acos(-1)*2;pt=getosc(0.4,0,0)*1000;hu=rand(628)*.01;drt=1;       ���     $   �  m  sd1=(sd1*147.1+sd3*11+977)%10000;
sd2=(sd2*639+3411)%10000;
sd3=(sd3*127+6431)%10000;
rd=(sd2*.0001)*.3;h=(sd3*.0002-1)/(sqr(rd*3)+1);
x1=sd1*.000628;
x1=x1-pp*pow(abs(rd-.4),.7)*sign(rd-.4);
px=cos(x1)*rd*1.8;py=sin(x1)*rd*1.8;pz=h*.2;
px=px+ox;py=py+oy;pz=pz+oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x3*dt,-1);y=if(dt,y3*dt*af,-1);
x1=abs(getosc(rd,0,0))*5;
z1=dt*.3-.03;
dt=min(dt*.2+x1,2-rd)*4;
red=(sin(hu+i)*dt+dt+x1*.3)*z1;
green=(sin(hu+i+2.09)*dt+dt+x1*.3)*z1;
blue=(sin(hu+i+4.18)*dt+dt+x1*.3)*z1;
 �  pp=pp+dr*.2;dr=dr*.8+drt*.2;hu=hu+.002;t=t+0.05;pt=pt+0.05+ti*.4;rd=1.3+sin(t*.0158)*cos(t*0.0211)*.5;ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.3;ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.3;ry=atan2(ox,oz)-ryo;rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)))-rxo;rz=-sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;sd1=1213;sd2=14;sd3=44;ti=ti*.9 K   bc=(bc+1)%8;ti=1;hu=if(bc,hu,rand(628)*.01);drt=getosc(.44,0,0)*100%2*2-1; D   n=20;tpi=acos(-1)*2;pt=getosc(0.4,0,0)*1000;hu=rand(628)*.01;drt=1;       ���     T@�Texer                                            �?whacko6-01.bmp p                                                                                                                                                                                                                                                    	   �       �����  � $�   �                           @  AVS 2.8+ Effect List Config                    $   �  n  sd1=(sd1*147.1+sd3*11+977)%10000;
sd2=(sd2*639+3411)%10000;
sd3=(sd3*127+6431)%10000;
rd=(sd2*.0001)*.66;h=(sd3*.0002-1)/(sqr(rd*3)+1);
x1=sd1*.000628;
x1=x1-pp*pow(abs(rd-.4),.7)*sign(rd-.4);
px=cos(x1)*rd*1.8;py=sin(x1)*rd*1.8;pz=h*.2;
px=px+ox;py=py+oy;pz=pz+oz;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x3*dt,-1);y=if(dt,y3*dt*af,-1);
x1=abs(getosc(rd,0,0))*5;
z1=dt*.3-.03;
dt=min(dt*.2+x1,2-rd)*4;
red=(sin(hu+i)*dt+dt+x1*.3)*z1;
green=(sin(hu+i+2.09)*dt+dt+x1*.3)*z1;
blue=(sin(hu+i+4.18)*dt+dt+x1*.3)*z1;
 �  pp=pp+dr*.2;dr=dr*.8+drt*.2;hu=hu+.002;t=t+0.05;pt=pt+0.05+ti*.4;rd=1.3+sin(t*.0158)*cos(t*0.0211)*.5;ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.3;ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.3;ry=atan2(ox,oz)-ryo;rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)))-rxo;rz=-sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;sd1=1213;sd2=14;sd3=44;ti=ti*.9 K   bc=(bc+1)%8;ti=1;hu=if(bc,hu,rand(628)*.01);drt=getosc(.44,0,0)*100%2*2-1; D   n=30;tpi=acos(-1)*2;pt=getosc(0.4,0,0)*1000;hu=rand(628)*.01;drt=1;       ���     T@�Texer                                            �?whacko6-05.bmp                                                                                                                                                                                                                                                      	          $   �  `  sd1=(sd1*147.1+sd3*11+977)%10000;
sd2=(sd2*639+3411)%10000;
sd3=(sd3*127+6431)%10000;
px=sd1*.0002-1;py=sd2*.0002-1;pz=sd3*.0002-1;
x1=px*cy-pz*sy;z1=px*sy+pz*cy;
y2=py*cx-z1*sx;z2=py*sx+z1*cx;
x3=x1*cz-y2*sz;y3=x1*sz+y2*cz;
dt=if(above(z2,.05),1/z2,0);
x=if(dt,x3*dt,-1);y=if(dt,y3*dt*af,-1);
dt=min(1,dt*.3);
red=dt;
green=dt;
blue=dt;
 �  hu=hu+.001;t=t+0.05;pt=pt+0.05+ti*.4;rd=1.3+sin(t*.0158)*cos(t*0.0211)*.5;ox=sin(pt*.1231)*rd;oy=sin(pt*.1)*rd;oz=cos(pt*.0913)*rd;rxo=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0631))*.3;ryo=sin(t*.0511)*cos(t*0.071)*sin(cos(t*.0415))*.3;ry=atan2(ox,oz)-ryo;rx=atan2(oy,sqrt(sqr(ox)+sqr(oz)))-rxo;rz=-sin(t*.053)*cos(t*.117)*sin(cos(t*.0651));cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;sd1=1213;sd2=14;sd3=44;ti=ti*.9 -   bc=(bc+1)%8;ti=1;hu=if(bc,hu,rand(628)*.01);    n=300;tpi=acos(-1)*2;pt=-203;       ���        �                                          <   �    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �    ��<   A ���                     `          ����            �     �1Terminal                           �                            