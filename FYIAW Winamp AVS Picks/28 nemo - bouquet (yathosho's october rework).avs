Nullsoft AVS Preset 0.2   D  @  

          __
          bouquet (yathosho's october rework)
     

                    __
                    vienna, 11th october 2006


         __
         original preset 'bouquet' by nemo
         remixed by yathosho

                              __
                              http://visbot.net (       �$   �      x=i*2-1;
y=ym+s/(h*2); M   s=40;
linesize=1;

ym=1-(s/(h*2))*2;
red=reg60; blue=reg60; green=reg60;        n=2       ���    $   �      x=i*2-1;
y=ym-s/(h*2); M   s=40;
linesize=1;

ym=1-(s/(h*2))*2;
red=reg60; blue=reg60; green=reg60;        n=2       ���    $   �     x=(i-.5)*(15/w)+xm;
y=ym; �  s=40;
linesize=s/2;

gg1=getkbmouse(1);
gg2=getkbmouse(2);
ym=1-(s/(h*2))*2;
e1=below(abs(gg2-ym),s/(h*2));
e2=below(abs(gg1),1);
e3=getkbmouse(3)+getkbmouse(4);
xm=if(e1*e2*e3,gg1,xm);
reg90=xm*2+2.5;
reg91=((1-reg90)*50+10)|0;
reg92=30/reg91;


gg=0;
p=-1;
loop(20,exec2(
        assign(p,p+1),
        assign(gg,gg+getspec(p/20,1/20,0)/20 )  ));
reg10=gg;

reg70=1;


c=min(1,(2.5-abs(gg1)*1.5))-abs(gg2-.85)*1;
reg60=c;
red=reg60; blue=reg60; green=reg60; c   reg70=rand(6);
reg71=(rand(200)-100)*.007;
reg72=(rand(200)-100)*.007;
reg73=rand(628)*.01;

 h   n=2; xm=-.5; 
reg70=0;
reg71=(rand(200)-100)*.007;
reg72=(rand(200)-100)*.007;
reg73=rand(628)*.01;       ���    P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=50/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=70/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=90/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=110/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=130/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=150/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;P��Acko.net: Texer II                    avsres_texer_circle_slightblur_23x23.bmp                                                                                                                                                                                                                                             rs=(rand(20)-10)*.01;

  n=170/reg90;

g=reg10;

rt2=rt2+rs;
rt1=rt1+sin(rt2)*.2;

rt1=if(reg70,rt1,reg73);

xt=sin(rt1)*(40/w)*g*reg90;
yt=cos(rt1)*(40/h)*g*reg90;




x1=if(above(abs(x1),1),-1*sign(x1),x1+xt);
y1=if(above(abs(y1),1),-1*sign(y1),y1+yt);

x1=if(reg70,x1,reg71);
y1=if(reg70,y1,reg72);



assign(megabuf(1000),x1);
assign(megabuf(2000),y1);


p=n+1;
loop(n,exec3(
           assign(p,p-1),
           assign(megabuf(p+1000),megabuf(p+999) ),
           assign(megabuf(p+2000),megabuf(p+1999) ) ))    rs=(rand(20)-10)*.01;
�   ii=i*(n-1);

x=megabuf(ii+1000);
y=megabuf(ii+2000); 

size1=min((1-abs(i-.5)*2)*2,.5);
sizex=(cos(i*2*$PI)*.5-.5)*1;
sizey=sizex;
c=(-sizex*(1-reg80))+(reg80);
red=c;green=c;blue=c;����  � $�   G                           @  AVS 2.8+ Effect List Config                    $   W   0   y=i*-2+1;x=0; 
c=i;
red=c;
blue=c;
green=c;            n=800       ���        !   �     x=0                      '   �  
   d=d*(2/3)                       '   �  
   d=d*(2/3)                    �q�Color Map                       �                     0b�                                                       0��                                                       ��                                                       ���                                                       p��                                                       ��                                                       ���                                                       ���                                                    ���     p   ��� >  �   ) Q CT  �   @ �    �   ��� 4[              �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    ����e   �$�   3                           @  AVS 2.8+ Effect List Config                             �qHolden04: Video Delay                        l��Holden03: Convolution Filter                                                                                           ����                      ����                   ��������                                                                       C:\Program Files\Winamp\Plugins\avs\convolution cff examples\�����   � $�                              @  AVS 2.8+ Effect List Config                    !                    �         �qChannel Shift                      �     l��Holden03: Convolution Filter                                                                                                                                                                                                                           C:\Program Files\Winamp\Plugins\avs\convolution cff examples\&         � �              �                                          <   ��     ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��     h��<   A ���                     `          ����            �     �1Terminal                           �                            