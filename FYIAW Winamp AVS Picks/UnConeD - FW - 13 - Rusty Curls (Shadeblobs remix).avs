Nullsoft AVS Preset 0.2    )  %    _________                                           
 (        _____)                                                  
  \     ( inal                  __                               Rusty Curls
    \    ����\     _      /    )                        (Shadeblobs remix)
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
This was originally a preset by Atero which was based on a particle screensaver. I liked it, but the particle movement was a bit too constant. So I rewrote the particle movement and added two layered DM's.

The result was still a bit boring visually, so this preset went through a lot of changes. Finally when playing with XOR I got a nice rusty feel... I added the additive horizontal bands to break the gray.
  ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen.
 ����'.  �  $�   �                           @  AVS 2.8+ Effect List Config                                 !                    �         (       �P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
P��Acko.net: Texer II              �      fwhack02.bmp                                                                                                                                                                                                                                                                      z   n=1; bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;cx=rand(200)*.01-1;cy=rand(200)*.01-1;
r=rand(628)*.01;�  bs2=bs2*.95;bs3=bs3*.95+bs2*.05;
bs1=bs1*.97;
a1=a1+bs1*.1;a2=sin(a1)*.2;
r=r+if(fc,sin(atan2(-cy,-cx)-r)*.15,sqr(bs3)*sign(bs3)*2-sqr(a2)*sign(a2));
fc=if(fc,above(sqr(cx)+sqr(cy),.008),0);

lx=cx;ly=cy;cx=cx+cos(r)*0.05;cy=cy+sin(r)*0.05;
ofv=ofv*.7+getspec(0.3,0.6,0)*.3;
off=if(above(max(abs(cx),abs(cy)),1),0,ofv);
cx=if(above(abs(cx),1),-sign(cx),cx);
cy=if(above(abs(cy),1),-sign(cy),cy);
n=7
   bs1=(rand(200)*.01-1)*getspec(0,0,0)*4;
bs2=rand(200)*.01-1;
fc=if(fc,1,above(sin((getosc(.31,0,0)+getosc(.65,0,0))*50),.9));=   x=lx+i*(lx-cx);y=ly+i*(ly-cy);
red=off;green=off;blue=off;
                  �   +     �   x=x*afx*zm;y=y*afy*zm;
xx=x*cr-y*sr;
yy=x*sr+y*cr;
x=xx+dx;y=yy+dy;
x=x+sin(yy*1.5+t)*.4;
y=y+cos(xx*.7-t*1.14)*.2-sin(yy+cos(yy*.45))*.2; �   t=t+.02;
afy=min(1,h/w);
afx=min(1,w/h);
ra=ra+sin(rt-ra)*.1;
rd=rd*.8+ra*.2;
cr=cos(rd);sr=sin(rd);
cx=cx*.9+tx*.1;cy=cy*.9+ty*.1;
dx=dx*.9+cx*.1;dy=dy*.9+cy*.1;
t=t+.01;
zm=zm*.9+zmt*.1; s   rt=ra+(rand(628)*.01-3.14)*min(1,getspec(0,.4,0)*2);
tx=rand(200)*.01-1;ty=rand(200)*.01-1;
zmt=.8+rand(20)*.01;    zm=.7;zmt=zm;                           �����  �  $�   �                           @  AVS 2.8+ Effect List Config                                     �   +     �   x=x*afx*zm;y=y*afy*zm;
xx=x*cr-y*sr;
yy=x*sr+y*cr;
x=xx+dx;y=yy+dy;
x=x+sin(yy*1.5+t)*.4;
y=y+cos(xx*.7-t*1.14)*.2-sin(yy+cos(yy*.45))*.2; �   t=t+.02;
afy=min(1,h/w);
afx=min(1,w/h);
ra=ra+sin(rt-ra)*.1;
rd=rd*.8+ra*.2;
cr=cos(rd);sr=sin(rd);
cx=cx*.9+tx*.1;cy=cy*.9+ty*.1;
dx=dx*.9+cx*.1;dy=dy*.9+cy*.1;
t=t+.01;
zm=zm*.9+zmt*.1; s   rt=ra+(rand(628)*.01-3.14)*min(1,getspec(0,.4,0)*2);
tx=rand(200)*.01-1;ty=rand(200)*.01-1;
zmt=.5+rand(50)*.01;    zm=.7;zmt=zm;                            �q�Color Map                       �                      `�                                                       @�                                                       ��                                                       ��                                                       ��                                                       `�                                                       @�                                                        �                                                �   ��� +E  �   ��� da              �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    ����-  �  $�   �                           @  AVS 2.8+ Effect List Config                    (        �$   �   ?   x=0;y=i*2-1;
red=sin(i*$pi*2+yd)*.125+.13;green=red;blue=red;    yd=yd+yt*.1;yt=yt*.99    yt=rand(200)*.01-1;    n=h+1;yt=1;       ���       "   �     x=0;                      �                                          <   ��    `��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            