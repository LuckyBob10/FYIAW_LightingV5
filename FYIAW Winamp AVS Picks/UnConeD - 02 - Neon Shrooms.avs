Nullsoft AVS Preset 0.2   �  �  Whacko AVS II - Neon Shrooms
---------------------------------------------------

This basically a bunch of my own 3D superscopes... the mushroom is a profile spun around a central axis. The profile is defined by two functions, check the code if you want to know how. They're blended onto the background by using themselves as a buffer, so you get a black-outline around them. Pretty neat!

Mushrooms wouldn't be complete without more psychedelic stuff, so that's what the kaleidoscopic background is for.

Just remember, drugs use isn't bad, drug abuse is! :)


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)

 ����_  �   $�   �                           @  AVS 2.8+ Effect List Config                                                 �   +   �   -   x=cos(r+ra)*(d*1.50);y=sin(r+ra)*(d*1.50);
 +   t=t+0.05;
diff=ra-rat;
ra=(ra*31+rat)/32 !   rat=ra+(rand(100)/100-0.5)*3.14;    t=0;ra=0;rat=0;                            &         � h            +     h   x=cos(r+ra)*d;y=sin(r+ra)*d;
yy=y*.5;xx=x*.5;sf=sqr(cos(t)*.25+0.5);
x=x/(sf+yy*yy);y=y/(sf+xx*xx);
    t=t+0.05;
ra=(ra*7+rat)/8 [   rat=ra+(rand(100)/100-0.5)*3.14;
rat=if(below(abs(ra-rat),0.3),rat+0.7*(rand(2)*2-1),rat)    t=0;ra=0;rat=0;                            �����  � $�   �                          @  AVS 2.8+ Effect List Config                    (       �$   F  *  u=i*2-1;rf=30;
shc=1-u*u;
cf=below(i,0.45);
u=if(cf,sqrt(shc)*(-u/2+0.5),if(below(i,0.55),(i-0.45)*15+0.1,pow(shc,0.7)*1.5));
u=u+v/8;
px=cos(i*tpi*rf)*u/2+cos(hu)+1.5;py=i*2-1;pz=sin(i*tpi*rf)*u/2+2.9;
y1=py*cx+pz*sx;
z1=pz*cx-py*sx;
x2=px*cy+z1*sy;
z2=z1*cy-px*sy+5;
x=x2/z2;y=y1/z2;
 �   hu=(hut+hu*5)/6;rx=rx+0.03;ry=ry-0.05;cy=cos(ry);sy=sin(ry);cx=-cos(cos(rx));sx=sin(cos(rx));sf=getspec(0,0.01,0);red=abs(sin(hu))/5;green=abs(sin(hu+2.0))/5;blue=abs(sin(hu+4.0))/5;    hut=rand(100)/100*tpi .   n=300;rx=0;ry=0;tpi=6.2831;c=1;hu=-10;hut=-10       ���    $   5  *  u=i*2-1;rf=30;
shc=1-u*u;
cf=below(i,0.45);
u=if(cf,sqrt(shc)*(-u/2+0.5),if(below(i,0.55),(i-0.45)*15+0.1,pow(shc,0.7)*1.5));
u=u+v/8;
px=cos(i*tpi*rf)*u/2+cos(hu)-1.5;py=i*2-1;pz=sin(i*tpi*rf)*u/2+1.9;
y1=py*cx+pz*sx;
z1=pz*cx-py*sx;
x2=px*cy+z1*sy;
z2=z1*cy-px*sy+6;
x=x2/z2;y=y1/z2;
 �   hu=(hut+hu*5)/6;rx=rx-0.03;ry=ry-0.03;cy=cos(ry);sy=sin(ry);cx=-cos(cos(rx));sx=sin(cos(rx));red=abs(sin(hu+1.5))/5;green=abs(sin(hu+3.0))/5;blue=abs(sin(hu+4.0))/5;    hut=rand(100)/100*tpi .   n=300;rx=0;ry=0;tpi=6.2831;c=1;hu=-10;hut=-10       ���    $   /  )  u=i*2-1;rf=30;
shc=1-u*u;
cf=below(i,0.45);
u=if(cf,sqrt(shc)*(-u/2+0.5),if(below(i,0.55),(i-0.45)*15+0.1,pow(shc,0.7)*1.5));
u=u+v/8;
px=cos(i*tpi*rf)*u/2+cos(hu)-2.0;py=i*2-1;pz=sin(i*tpi*rf)*u/2+3.2;
y1=py*cx+pz*sx;
z1=pz*cx-py*sx;
x2=px*cy+z1*sy;
z2=z1*cy-px*sy+5.5;
x=x2/z2;y=y1/z2 �   hu=(hut+hu*5)/6;rx=rx+0.05;ry=ry-0.02;cy=cos(ry);sy=sin(ry);cx=-cos(cos(rx));sx=sin(cos(rx));red=abs(sin(hu))/5;green=abs(sin(hu+2.8))/5;blue=abs(sin(hu+3.5))/5    hut=rand(100)/100*tpi .   n=300;rx=0;ry=0;tpi=6.2831;c=1;hu=-10;hut=-10       ���    $   z  '  u=i*2-1;rf=30;
shc=1-u*u;
cf=below(i,0.45);
u=if(cf,sqrt(shc)*(-u/2+0.5),if(below(i,0.55),(i-0.45)*15+0.1,pow(shc,0.7)*1.5));
u=u+v/8;
px=cos(i*tpi*rf)*u/2+cos(hu)+1.5;py=i*2-1;pz=sin(i*tpi*rf)*u/2+2.2;
y1=py*cx+pz*sx;
z1=pz*cx-py*sx;
x2=px*cy+z1*sy;
z2=z1*cy-px*sy+5;
x=x2/z2;y=y1/z2 �   hu=(hut+hu*5)/6;rx=rx+0.04;ry=ry+0.025;cy=cos(ry);sy=sin(ry);cx=-cos(cos(rx));sx=sin(cos(rx));red=abs(sin(hu+2.0))/5;green=abs(sin(hu+4.0))/5;blue=abs(sin(hu+1.5))/5;red=abs(sin(hu+1.0))/5;green=abs(sin(hu+2.0))/5;blue=abs(sin(hu+5.0))/5    hut=rand(100)/100*tpi .   n=300;rx=0;ry=0;tpi=6.2831;c=1;hu=-10;hut=-10       ���    $   1  '  u=i*2-1;rf=30;
shc=1-u*u;
cf=below(i,0.45);
u=if(cf,sqrt(shc)*(-u/2+0.5),if(below(i,0.55),(i-0.45)*15+0.1,pow(shc,0.7)*1.5));
u=u+v/8;
px=cos(i*tpi*rf)*u/2+cos(hu)+1.8;py=i*2-1;pz=sin(i*tpi*rf)*u/2+2.6;
y1=py*cx+pz*sx;
z1=pz*cx-py*sx;
x2=px*cy+z1*sy;
z2=z1*cy-px*sy+5;
x=x2/z2;y=y1/z2 �   hu=(hut+hu*5)/6;rx=rx-0.04;ry=ry-0.025;cy=cos(ry);sy=sin(ry);cx=-cos(cos(rx));sx=sin(cos(rx));red=abs(sin(hu+.5))/5;green=abs(sin(hu+4.2))/5;blue=abs(sin(hu+2.0))/5    hut=rand(100)/100*tpi .   n=300;rx=0;ry=0;tpi=6.2831;c=1;hu=-10;hut=-10       ���                      �   �����   � $�   �                           @  AVS 2.8+ Effect List Config                                 ,          ,                           �      �                                          <   �7    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �7    `��<   A ���                     `          ����            �     �1Terminal                           �                            