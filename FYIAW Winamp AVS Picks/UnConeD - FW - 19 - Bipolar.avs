Nullsoft AVS Preset 0.2          _________                                           
 (        _____)                                                 
  \     ( inal                  __                                 Bipolar
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
This one's been sitting around unfinished on my harddisk for a long time. I created it to see if you could create nicely lit spheres using a textured DM. This is possible for up to 2 lights per sphere, because you can use bilinear filtering to blend between the two. It's not very obvious, because I limited the shades per ball.

To make it more interesting I added crude depth-sorting (thanks to global vars). The first DM always draws the sphere at the back, the second the one in front.

To avoid the well-known ugly edges, I blurred the sphere-edges, added an interleaving-like movement and a convolution filter. Not perfect, and very blurry. But I still like it :).
  ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen.    9   �     f=(y*sh*.5)%4;f=f*.5-1;x=f;                    ����  �  $�   �                           @  AVS 2.8+ Effect List Config                    $   �       [   reg01=reg01+.01;reg02=reg02+.011;
reg03=reg03+.012;reg04=reg04+.013;
reg00=reg00*.7+.18; _   reg01=rand(628)*.01;reg02=rand(628)*.01;
reg03=rand(628)*.01;reg04=rand(628)*.01;
reg00=1.3;    n=0;// Color control       ���     $   �   U   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00; a   n=.2*h;
x=sin(reg01)+4;
cr=sin(x)*.5+.5;
cg=sin(x+2.09)*.5+.5;
cb=sin(x+4.18)*.5+.5;
px=0/w               ���     $     W   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00;
 �   n=.2*h;
x=sin(reg01)+4;y=sin(reg02)+6.5;
cr=sin(x)*.5+sin(y)*.5+1;
cg=sin(x+2.09)*.5+sin(y+2.09)*.5+1;
cb=sin(x+4.18)*.5+sin(y+4.18)*.5+1;
px=2/w               ���     $   �   W   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00;
 `   n=.2*h;
x=sin(reg02)+6.5;
cr=sin(x)*.5+.5;cg=sin(x+2.09)*.5+.5;cb=sin(x+4.18)*.5+.5;
px=4/w;               ���     $   �   U   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00; a   n=.2*h;
x=sin(reg03)+2;
cr=sin(x)*.5+.5;
cg=sin(x+2.09)*.5+.5;
cb=sin(x+4.18)*.5+.5;
px=6/w               ���     $     W   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00;
 �   n=.2*h;
x=sin(reg03)+2;y=sin(reg04)+2.5;
cr=sin(x)*.5+sin(y)*.5+1;
cg=sin(x+2.09)*.5+sin(y+2.09)*.5+1;
cb=sin(x+4.18)*.5+sin(y+4.18)*.5+1;
px=8/w               ���     $   �   W   x=px+.001;y=i*.2-.1;
u=i*1.2;
red=cr*u*reg00;
green=cg*u*reg00;
blue=cb*u*reg00;
 a   n=.2*h;
x=sin(reg04)+2.5;
cr=sin(x)*.5+.5;cg=sin(x+2.09)*.5+.5;cb=sin(x+4.18)*.5+.5;
px=10/w;               ���                       �   $   �      �  // Light cycles
reg10=reg10*.9+lx1*.1;reg11=reg11*.9+ly1*.1;reg12=reg12*.9+lz1*.1;
reg13=reg13*.9+lx2*.1;reg14=reg14*.9+ly2*.1;reg15=reg15*.9+lz2*.1;

// Sphere cycles
ti=ti*.7+tt*.3;pi=pi*.7+pt*.3;tt=tt*.7;pt=pt*.7;t=t+spd;
spd=spd*.5+getspec(0,0,0)*.15+.002;
rt=rt*.9+(min(2,max(.55,.3+(getspec(0,.05,0)+getspec(0,.25,0))*.5)))*.1;rd=rd*.9+rt*.1;
ox1=cos(t)*rd;oy1=sin(t)*rd;
th=th+sin(t*.091)*.1+ti;ph=ph+pi;
ct=cos(th);st=sin(th);cp=cos(ph);sp=sin(ph);
ox2=ox1*ct;oz2=ox1*st;
ox3=ox2*cp-oy1*sp;oy3=ox2*sp+oy1*cp;
reg20=ox3;reg21=oy3;reg22=oz2+1.65;
reg23=-ox3;reg24=-oy3;reg25=-oz2+1.65;

// Optimizations
reg07=sqr(reg20)+sqr(reg21)+sqr(reg22)-1;
reg08=sqr(reg23)+sqr(reg24)+sqr(reg25)-1; �  // Light target positions
lx1=rand(200)*.02-2;ly1=rand(200)*.02-2;lz1=rand(200)*.01-3;
x=3/sqrt(sqr(lx1)+sqr(ly1)+sqr(lz1));
lx1=lx1*x;ly1=ly1*x;lz1=lz1*x-.3;
lx2=rand(200)*.02-2;ly2=rand(200)*.02-2;lz2=rand(200)*.01-3;
x=3/sqrt(sqr(lx2)+sqr(ly2)+sqr(lz2));
lx2=lx2*x;ly2=ly2*x;lz2=lz2*x-.3;

// Orbit change
tt=sqrt(rand(110)*.01);tt=tt*.4*(rand(2)*2-1);
pt=sqrt(rand(110)*.01);pt=pt*.4*(rand(2)*2-1);
rt=rt*.9+(rand(100)*.01+.15)*.1; N  n=0;// Sphere control

// Light target positions
lx1=rand(200)*.02-2;ly1=rand(200)*.02-2;lz1=rand(200)*.01-3;
x=5/sqrt(sqr(lx1)+sqr(ly1)+sqr(lz1));
lx1=lx1*x;ly1=ly1*x;lz1=lz1*x+.25;
lx2=rand(200)*.02-2;ly2=rand(200)*.02-2;lz2=rand(200)*.01-3;
x=5/sqrt(sqr(lx2)+sqr(ly2)+sqr(lz2));
lx2=lx2*x;ly2=ly2*x;lz2=lz2*x+.25;
rd=.55;       ���     +   �  �  f=above(reg22,reg25);
dx=x;dy=y*af;

vb=-2*if(f,reg20*dx+reg21*dy+reg22,reg23*dx+reg24*dy+reg25);
va=sqr(dx)+sqr(dy)+1;
k=sqr(vb)-4*va*if(f,reg07,reg08);alpha=above(k,0);
k=.5*(-vb-sqrt(k))/va;

ix=dx*k-if(f,reg20,reg23);
iy=dy*k-if(f,reg21,reg24);
iz=k-if(f,reg22,reg25);

x=reg10-ix;j=reg11-iy;k=reg12-iz;
dy=(x*ix+j*iy+k*iz)/sqrt(sqr(x)+sqr(j)+sqr(k));
dy=max(0,dy);

x=reg13-ix;j=reg14-iy;k=reg15-iz;
y=(x*ix+j*iy+k*iz)/sqrt(sqr(x)+sqr(j)+sqr(k));
y=max(0,y);

j=max(y,dy);x=min(y,dy)/j*.5;
x=(if(above(y,dy),1-x,x)*2+3*f)*iw;

j=min(2,dy*2);k=min(2,y*2);y=min(1,j+k-3)*.1;
alpha=if(alpha,2.75-sqrt(sqr(ix)+sqr(iy))*4,0);
y=min(.09,max(-.1,y));    af=h/w;iw=2/w;
                                  +   �  �  f=bnot(above(reg22,reg25));
dx=x;dy=y*af;

vb=-2*if(f,reg20*dx+reg21*dy+reg22,reg23*dx+reg24*dy+reg25);
va=sqr(dx)+sqr(dy)+1;
k=sqr(vb)-4*va*if(f,reg07,reg08);alpha=above(k,0);
k=.5*(-vb-sqrt(k))/va;

ix=dx*k-if(f,reg20,reg23);
iy=dy*k-if(f,reg21,reg24);
iz=k-if(f,reg22,reg25);

x=reg10-ix;j=reg11-iy;k=reg12-iz;
dy=(x*ix+j*iy+k*iz)/sqrt(sqr(x)+sqr(j)+sqr(k));
dy=max(0,dy);

x=reg13-ix;j=reg14-iy;k=reg15-iz;
y=(x*ix+j*iy+k*iz)/sqrt(sqr(x)+sqr(j)+sqr(k));
y=max(0,y);

j=max(y,dy);x=min(y,dy)/j*.5;
x=(if(above(y,dy),1-x,x)*2+3*f)*iw;

j=min(2,dy*2);k=min(2,y*2);y=min(1,j+k-3)*.1;
alpha=if(alpha,3.25-sqrt(sqr(ix)+sqr(iy))*4.5,0);
y=min(.09,max(-.1,y));    af=h/w;iw=2/w;
                                  l��Holden03: Convolution Filter    �                                                                                                                                                                                                                          �                                          <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            