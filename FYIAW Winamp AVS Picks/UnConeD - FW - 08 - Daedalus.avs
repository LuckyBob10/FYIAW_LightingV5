Nullsoft AVS Preset 0.2    F	  B	    _________                                           
 (        _____)                                                
  \     ( inal                  __                                Daedalus
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
This was a preset for the Flow Contest held on the Winamp.com AVS forums. There were limitations on what you could use, and the preset had to be flowy of course. This version is heavily modified from the one in the contest.

I got the idea for this swirling and twisting scope. It's based on a Julia fractal actually: you take a grid of points and distort it with a couple of Julia fractal iterations. Because of the 'strange' maths of the complex plane, this results in really cool curves. I did add a sine and a cosine here and there to make it more bendy though.
After this, I tried a quaternion version, that would do the same except in quaternion-hyperspace (and project the end result into 3D). But that didn't work out good, I suppose I'd have to use at least a 3D block of points then.

The name comes from the greek legend of Daedalus and Icarus, because the original scope reminded me of a bird's wings... the legend goes that Daedalus and Icarus created wings from feathers and wax to fly away from an island. Despite warnings by Daedalus, Icarus flew too close to the sun and the wax in his wings melted, causing him to fall to his death.

If you're a fan of neon presets, you can toggle the Trans / Invert off.
  ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen.
 ����M  �   $�   �                           @  AVS 2.8+ Effect List Config                    �����H  � $�   �                           @  AVS 2.8+ Effect List Config                    (       �$   v    sd1=(sd1*11+71)%1000;sd2=(sd2*27+155+abs(cos(sd3))*500)%1000;sd3=(sd3*13+708)%1000;
x=sd1*.002-1+xo;y=sd2*.002-1+yo;
x=if(above(abs(x),1),x-sign(x)*2,x);y=if(above(abs(y),1),y-sign(y)*2,y);
d=sqrt(sqr(x)+sqr(y));d=sqr(d/sin(d));x=x*d;y=y*d;
red=sin(i*pi);green=red;blue=red;   sd1=ssd1;sd2=ssd2;sd3=ssd3;ssd1=(ssd1*11+71)%1000;ssd2=(ssd2*27+155+abs(cos(ssd3))*500)%1000;ssd3=(ssd3*13+708)%1000;dd=dd+sin(dr-dd)*.03;xo=xo+cos(dd)*.03;yo=yo+sin(dd)*.03;xo=if(above(abs(xo),1),xo-sign(xo)*2,xo);yo=if(above(abs(yo),1),yo-sign(yo)*2,yo);    dr=rand(628)*.01 ,   n=30;ssd1=123;ssd2=44;ssd3=771;pi=acos(-1);       ���     $   �  �  px=(gx*ig*2-1)*.8;py=(gy*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;py=2*px*py+mhy;px=x;
x=px*px-py*py+sin(px)+mhx;py=2*px*py+mhy;px=x;
x=px*px-py*py+sin(px);py=.6*px*py;px=x*.3;
x=px*cr-py*sr;y=px*sr+py*cr;
d=sqrt(sqr(x)+sqr(y));d=sin(d)/d;
x=x*d*.2+.7;y=y*d*.2*af-.65;
cv=if(equal(gx,0),0,abs(getosc(i,0,0))*5);
gx=if(equal(gx,g-1),0,gx+1);
gy=if(equal(gx,0),gy+1,gy);
red=cv;green=cv;blue=cv;   af=w/h;gx=0;gy=0;t=t+d;
tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
 �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25; j  g=10;n=g*g;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���     l��Holden03: Convolution Filter    %                                                                                                                                                                                                                   C:\Program Files\Winamp\Plugins\avs\convolution cff examples\mean 3x3.cff$   �  u  px=(gx*ig*2-1)*.8;py=(gy*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;py=2*px*py+mhy;px=x;
x=px*px-py*py+sin(px)+mhx;py=2*px*py-cos(py)*.5+mhy;px=x;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
cv=if(equal(gx,0),0,abs(sin(if(md,gy,gx)*7+t)*.5+.5));
gx=if(equal(gx,g-1),0,gx+1);
gy=if(equal(gx,0),gy+1,gy);
red=cv;green=cv;blue=cv;
 �  gx=0;gy=0;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;

�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25; j  g=23;n=g*g;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���    $   �  s  px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;py=2*px*py+mhy;px=x;
x=px*px-py*py+sin(px)+mhx;py=2*px*py-cos(py)*.5+mhy;px=x;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
cv=if(equal(gx,0),0,abs(sin(if(md,gx,gy)*7+t)*.5+.5));
gx=if(equal(gx,g-1),0,gx+1);
gy=if(equal(gx,0),gy+1,gy);
red=cv;green=cv;blue=cv; �  gx=0;gy=0;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;

�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25; j  g=23;n=g*g;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���    (       �$   �  [  px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
i=(i+.125)*pi*2;px=ti*.05+.1;
x=x+cos(i)*px;y=y+sin(i)*px*af;
red=sin(jk)*.125+.575;green=red;blue=red;
 �  ti=ti*.8;
gx=5;gy=20;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=5;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���    $   �  [  px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
i=(i+.125)*pi*2;px=ti*.05+.1;
x=x+cos(i)*px;y=y+sin(i)*px*af;
red=sin(jk)*.125+.575;green=red;blue=red;
 �  ti=ti*.8;
gx=12;gy=2;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=5;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���    $   �  [  px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
i=(i+.125)*pi*2;px=ti*.05+.1;
x=x+cos(i)*px;y=y+sin(i)*px*af;
red=sin(jk)*.125+.575;green=red;blue=red;
 �  ti=ti*.8;
gx=3;gy=2;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=5;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;       ���    $   Z    px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
px=(ti*.05+.1)*4;
i=equal(ph,0)+if(equal(ph,1),px,0)-equal(ph,4)-if(equal(ph,5),px,0);
px=equal(ph,2)+if(equal(ph,3),px,0)-equal(ph,6)-if(equal(ph,7),px,0);
x=x+i*.23;y=y+px*af*.23;
red=if(bnot(equal(ph,2)+equal(ph,4)+equal(ph,6)),sin(jk)*.125+.875,0);green=red;blue=red;
ph=ph+1;
 �  ti=ti*.8;ph=0;
gx=5;gy=20;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=8;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;           $   Z    px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
px=(ti*.05+.1)*4;
i=equal(ph,0)+if(equal(ph,1),px,0)-equal(ph,4)-if(equal(ph,5),px,0);
px=equal(ph,2)+if(equal(ph,3),px,0)-equal(ph,6)-if(equal(ph,7),px,0);
x=x+i*.23;y=y+px*af*.23;
red=if(bnot(equal(ph,2)+equal(ph,4)+equal(ph,6)),sin(jk)*.125+.875,0);green=red;blue=red;
ph=ph+1;
 �  ti=ti*.8;ph=0;
gx=12;gy=2;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=8;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;           $   W    px=(gy*ig*2-1)*.8;py=(gx*ig*1.2-.2)*.8;
x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;
x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;
x=px*px-py*py+sin(px);py=.3*px*py-esy;px=x*.15-esx;
x=px*cr-py*sr;y=px*sr+py*cr;
px=(ti*.05+.1)*4;
i=equal(ph,0)+if(equal(ph,1),px,0)-equal(ph,4)-if(equal(ph,5),px,0);
px=equal(ph,2)+if(equal(ph,3),px,0)-equal(ph,6)-if(equal(ph,7),px,0);
x=x+i*.23;y=y+px*af*.23;
red=if(bnot(equal(ph,2)+equal(ph,4)+equal(ph,6)),sin(jk)*.125+.875,0);green=red;blue=red;
ph=ph+1; �  ti=ti*.8;ph=0;
gx=3;gy=2;t=t+d;tm=gettime(0);
dec=pow(0.95,30*(tm-lasttime));
lasttime=tm;
rgz=rfz+(rgz-rfz)*dec;
rhz=rgz+(rhz-rgz)*dec;
cr=cos(rhz);sr=sin(rhz);
mgx=mfx+(mgx-mfx)*dec;
mgy=mfy+(mgy-mfy)*dec;
mhx=mgx+(mhx-mgx)*dec;
mhy=mgy+(mhy-mgy)*dec;
jk=jk+.1;af=w/h;
�XXXXXXXXXXXXXXXXXXXX;px=.5;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=x;esy=y;px=.3;py=.5;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.5;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=esx+x;esy=esy+y;px=.3;py=.14;x=px*px-py*py+sin(px)+mhx;y=2*px*py+mhy;px=x;py=y;x=px*px-py*py+sin(px)+mhx;y=2*px*py-cos(py)*.5+mhy;px=x;py=y;x=px*px-py*py+sin(px);y=2*px*py;esx=(esx+x)*.0125;esy=(esy+y)*.0125; �   md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;ti=1; t  n=8;g=23;ig=1/(g-1);mhx=getosc(.41,0,0)*2;mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5);mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5);d=.4;pi=acos(-1);
md=bnot(md);d=-d;rfz=rfz+sin(getosc(.41,0,0)+getosc(.74,0,0)+getosc(.55,0,0));mfx=sin((getosc(0.41,0,0)+getosc(0.78,0,0))*5)*2.2;mfy=sin((getosc(0.71,0,0)+getosc(.13,0,0))*5)*1.2-.25;
mgx=mfx;mgy=mfy;mhx=mfx;mhy=mfy;                             �   l��Holden03: Convolution Filter    %                                                                                                                                                                                                                      C:\Program Files\Winamp\Plugins\avs\convolution cff examples\mean 3x3.cff!                    �         �q�Color Map                       �                    �,�color1.clm                                            ,�color2.clm                                             xI� olor1.clm                                             �I� olor2.clm                                             �I�                                                       8I�                                                       �I�                                                       J�                                                ]   ���    e   �� �]              �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    �qChannel Shift                      �      %                         �      �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            