Nullsoft AVS Preset 0.2   =  9   Whacko AVS VI - Radiant
---------------------------------------------

Another awesome texer preset :). The particle scope consists of outward rays of points that are distributed evenly across the sphere's surface. Each separate ray shimmers with the sound, while the color is defined by the distance to the center using some neat color-coding.
To finish it off, the particles radiate outwards every 4 beats.

The 'bubble' texture for the Texer really makes a huge difference: combined with the outward-beaming movement it makes the preset look crystal clear as opposed to most texer presets which are blurry.


Steven Wittens / UnConeD
steven@acko.net - www.acko.net

(If you wish to use any part of this preset in your own packs you are free to do so, on the condition that you include my contact information) (        �$       y=equal(pp,0);
pp=(pp+1)%93;
cr=if(y,sin(hu*2.1+i*1.17)*.5+.7+sin(hu*.177+2)*.3,cr);
cg=if(y,sin(sin(hu+3.11+i)*6.28*3)*.5+.5+abs(sin(hu*1.1+1)*.3),cg);
cb=if(y,sin(sin(hu+4.18+i*.5)*6.28*2)*.5+.7,cb);
x=abs(sin(gy*id1*3.14))*10;
gx=if(y,-1,gx);
gy=if(y,-1,gy);
gx=if(below(gx,x),gx+1,0);
gy=if(equal(gx,0),gy+1,gy);
gz=if(equal(pp,0),gz+1,gz);
x1=gx/x*6.28;y2=gy*id1*3.14;z2=gz*.1;
sv=abs(getosc((x1+y2)*10%100*.01,0,0));
px=cos(x1)*sin(y2)*z2;py=sin(x1)*sin(y2)*z2;pz=cos(y2)*z2;
x1=px*cz+py*sz;py=px*sz-py*cz;
y2=py*cx+pz*sx+yo*.3;z2=py*sx-pz*cx;
x3=x1*cy+z2*sy+xo*.3;z2=x1*sy-z2*cy+dt;
x1=if(above(z2,.1),1/z2,0);
x=x3*x1;y=y2*x1*af;
x3=max(0,.7-abs(gz*.1-bd)*8)*.2;
x1=min(1,bnot(equal(gx,0))*x1*(sv*.45+.025+x3*5));
red=x1*cr+x3;green=x1*cg+x3;blue=x1*cb+x3 �  t=t-.05;ryt=ryt+sin(t*.0991)*.007;ryt=if(above(ryt,6.28),ryt-6.28,ryt);rxt=rxt+sin(t*.1)*.01;rxt=if(above(rxt,6.28),rxt-6.28,rxt);dt=sin(t)*sin(t*.411+1)*cos(sin(t*.117))*.25+1;rx=rx*.95+rxt*.05;ry=ry*.95+ryt*.05;rz=rz*.95+rzt*.05;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h;xo=sin(t*.741)*sin(t*.114)*cos(sin(t*.41));yo=sin(t*.574)*sin(t*.319)*cos(sin(t*.33));gx=-1;gy=-1;gz=0;pp=0;bd=bd+.035;hu=hu+hut*.5-.02;hut=hut*.6;    bc=(bc+1)%4;bd=if(bc,bd,if(below(bd,1.05),bd,.1));rxt=(abs((getosc(.55,0,0)+getosc(.91,0,0))*2000)%628)*.01;ryt=(abs((getosc(.12,0,0)+getosc(.41,0,0))*2000)%628)*.01;rzt=(abs((getosc(.55,0,0)+getosc(.91,0,0))*2000)%628)*.01;hut=rand(100)*.01*(rand(2)*2-1) "   dx=13;id=2/dx;id1=1/(dx-1);n=930;       ���     T@�Texer                                            �?whacko6-08.bmp                                                                                                                                                                                                                                                      	   �         5   �     d=d*(0.9-sin(r*100)*.1)                             ^               �                                          <   �    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �    h��<   A ���                     `          ����            �     �1Terminal                           �                            