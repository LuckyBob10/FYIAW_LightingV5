Nullsoft AVS Preset 0.2    �  �    _________                                           
 (        _____)                                                
  \     ( inal                  __                              Isometrica
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
This is the orginal Isometrica... I still like the glassy effect of the subtle shading. The colors aren't bad either.
  ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen. ����  �   $�   �                           @  AVS 2.8+ Effect List Config                                 (       �$   *  �   ip=bnot(ip);
x=xo+if(ip,sin(mr2)*md2,0)+i*sin(mr1)*md1;
y=yo+if(ip,cos(mr2)*md2,0)+i*cos(mr1)*md1;
u=(i*.5+.5)*bi;red=cr*u;green=cg*u;blue=cb*u; N  bi=min(1,getspec(0,.2,0)*4);m=((getosc(.37,0,0)*100)%2);yo=(((abs(getosc(.31,0,0))+abs(getosc(.64,0,0))+abs(getosc(.67,0,0)))*71)%11)*.1*(((getosc(.77,0,0)*100)%2)*2-1)+if(m,.05,0);xo=((((abs(getosc(.44,0,0))+abs(getosc(.87,0,0))+abs(getosc(.55,0,0)))*71)%11)*.2*(((getosc(.62,0,0)*100)%2)*2-1)+if(m,.1,0))*rt;mr1=(((abs(getosc(.11,0,0))+abs(getosc(.97,0,0)))*35)%6)*.16666666*pi*2;mr2=(((abs(getosc(.32,0,0))+abs(getosc(.04,0,0)))*35)%6)*.16666666*pi*2;mr2=if(equal(mr1,mr2),mr2+pi*.333333,mr2);md1=(((abs(getosc(.82,0,0))+abs(getosc(.24,0,0)))*45)%8)*.1;md2=(((abs(getosc(.58,0,0))+abs(getosc(.96,0,0)))*45)%8)*.1;ip=0;hu=((getosc(.79,0,0)+getosc(.48,0,0)+getosc(.99,0,0)*.14+4)*141%62)*.1;x=sin(hu)-1.7;cr=sin(x)*.5+.5+getspec(.75,.5,0);cg=sin(x+2.09)*.5+.2;cb=sin(x+4.18)*.5+.2+getspec(0,.5,0);m=1/max(cr,max(cg,cb));cr=cr*m;cg=cg*m;cb=cb*m;     '   n=100;rt=sqrt(3)*.5;pi=acos(-1);irt=rt         �    $   J  �   ip=bnot(ip);
x=xo+if(ip,sin(mr2)*md2,0)+i*sin(mr1)*md1;
y=yo+if(ip,cos(mr2)*md2,0)+i*cos(mr1)*md1;
u=(i*.5+.5)*bi;red=cr*u;green=cg*u;blue=cb*u;
x=x-sign(xo)*2;y=y-sign(yo)*2; N  bi=min(1,getspec(0,.2,0)*4);m=((getosc(.37,0,0)*100)%2);yo=(((abs(getosc(.31,0,0))+abs(getosc(.64,0,0))+abs(getosc(.67,0,0)))*71)%11)*.1*(((getosc(.77,0,0)*100)%2)*2-1)+if(m,.05,0);xo=((((abs(getosc(.44,0,0))+abs(getosc(.87,0,0))+abs(getosc(.55,0,0)))*71)%11)*.2*(((getosc(.62,0,0)*100)%2)*2-1)+if(m,.1,0))*rt;mr1=(((abs(getosc(.11,0,0))+abs(getosc(.97,0,0)))*35)%6)*.16666666*pi*2;mr2=(((abs(getosc(.32,0,0))+abs(getosc(.04,0,0)))*35)%6)*.16666666*pi*2;mr2=if(equal(mr1,mr2),mr2+pi*.333333,mr2);md1=(((abs(getosc(.82,0,0))+abs(getosc(.24,0,0)))*45)%8)*.1;md2=(((abs(getosc(.58,0,0))+abs(getosc(.96,0,0)))*45)%8)*.1;ip=0;hu=((getosc(.79,0,0)+getosc(.48,0,0)+getosc(.99,0,0)*.14+4)*141%62)*.1;x=sin(hu)-1.7;cr=sin(x)*.5+.5+getspec(.75,.5,0);cg=sin(x+2.09)*.5+.2;cb=sin(x+4.18)*.5+.2+getspec(0,.5,0);m=1/max(cr,max(cg,cb));cr=cr*m;cg=cg*m;cb=cb*m;     '   n=100;rt=sqrt(3)*.5;pi=acos(-1);irt=rt         �    $   ;  �   ip=bnot(ip);
x=xo+if(ip,sin(mr2)*md2,0)+i*sin(mr1)*md1;
y=yo+if(ip,cos(mr2)*md2,0)+i*cos(mr1)*md1;
u=(i*.5+.5)*bi;red=cr*u;green=cg*u;blue=cb*u;
y=y-sign(yo)*2; N  bi=min(1,getspec(0,.2,0)*4);m=((getosc(.37,0,0)*100)%2);yo=(((abs(getosc(.31,0,0))+abs(getosc(.64,0,0))+abs(getosc(.67,0,0)))*71)%11)*.1*(((getosc(.77,0,0)*100)%2)*2-1)+if(m,.05,0);xo=((((abs(getosc(.44,0,0))+abs(getosc(.87,0,0))+abs(getosc(.55,0,0)))*71)%11)*.2*(((getosc(.62,0,0)*100)%2)*2-1)+if(m,.1,0))*rt;mr1=(((abs(getosc(.11,0,0))+abs(getosc(.97,0,0)))*35)%6)*.16666666*pi*2;mr2=(((abs(getosc(.32,0,0))+abs(getosc(.04,0,0)))*35)%6)*.16666666*pi*2;mr2=if(equal(mr1,mr2),mr2+pi*.333333,mr2);md1=(((abs(getosc(.82,0,0))+abs(getosc(.24,0,0)))*45)%8)*.1;md2=(((abs(getosc(.58,0,0))+abs(getosc(.96,0,0)))*45)%8)*.1;ip=0;hu=((getosc(.79,0,0)+getosc(.48,0,0)+getosc(.99,0,0)*.14+4)*141%62)*.1;x=sin(hu)-1.7;cr=sin(x)*.5+.5+getspec(.75,.5,0);cg=sin(x+2.09)*.5+.2;cb=sin(x+4.18)*.5+.2+getspec(0,.5,0);m=1/max(cr,max(cg,cb));cr=cr*m;cg=cg*m;cb=cb*m;     '   n=100;rt=sqrt(3)*.5;pi=acos(-1);irt=rt         �    $   ;  �   ip=bnot(ip);
x=xo+if(ip,sin(mr2)*md2,0)+i*sin(mr1)*md1;
y=yo+if(ip,cos(mr2)*md2,0)+i*cos(mr1)*md1;
u=(i*.5+.5)*bi;red=cr*u;green=cg*u;blue=cb*u;
x=x-sign(xo)*2; N  bi=min(1,getspec(0,.2,0)*4);m=((getosc(.37,0,0)*100)%2);yo=(((abs(getosc(.31,0,0))+abs(getosc(.64,0,0))+abs(getosc(.67,0,0)))*71)%11)*.1*(((getosc(.77,0,0)*100)%2)*2-1)+if(m,.05,0);xo=((((abs(getosc(.44,0,0))+abs(getosc(.87,0,0))+abs(getosc(.55,0,0)))*71)%11)*.2*(((getosc(.62,0,0)*100)%2)*2-1)+if(m,.1,0))*rt;mr1=(((abs(getosc(.11,0,0))+abs(getosc(.97,0,0)))*35)%6)*.16666666*pi*2;mr2=(((abs(getosc(.32,0,0))+abs(getosc(.04,0,0)))*35)%6)*.16666666*pi*2;mr2=if(equal(mr1,mr2),mr2+pi*.333333,mr2);md1=(((abs(getosc(.82,0,0))+abs(getosc(.24,0,0)))*45)%8)*.1;md2=(((abs(getosc(.58,0,0))+abs(getosc(.96,0,0)))*45)%8)*.1;ip=0;hu=((getosc(.79,0,0)+getosc(.48,0,0)+getosc(.99,0,0)*.14+4)*141%62)*.1;x=sin(hu)-1.7;cr=sin(x)*.5+.5+getspec(.75,.5,0);cg=sin(x+2.09)*.5+.2;cb=sin(x+4.18)*.5+.2+getspec(0,.5,0);m=1/max(cr,max(cg,cb));cr=cr*m;cg=cg*m;cb=cb*m;     '   n=100;rt=sqrt(3)*.5;pi=acos(-1);irt=rt         �       9   �     x=if(equal(x,-1),x+.005,x);                    +   �  g   y=y*afy*zm;x=x*afx*zm;
d=sqrt(sqr(x)+sqr(y));
r=atan2(y,x);
r=r+rd;
x=cos(r)*d+xo;y=sin(r)*d+yo;
 �   rd=rd*.8+ra*.2;
ra=ra+sin(rtg-ra)*.4;
rt=sqrt(3)*.5;
afy=max(1,h/w);afx=max(1,w/h);
sf=sf+sin(sd-sf)*.3;
xo=xo+cos(sf+ra)*.05*zm;
yo=yo+sin(sf+ra)*.05*zm;
zm=zm*.99+zmt*.01; j   rtg=if(rand(3),rtg,(rand(6))*.3333*pi);
sd=if(rand(3),sd,(rand(6)+.5)*.3333*pi);
zmt=rand(100)*.01+.75;    pi=acos(-1);zmt=1;zm=zmt;                            ����e   � $�   �                           @  AVS 2.8+ Effect List Config                             �q�Color Map                       �                      �H�                                                       XH�                                                       �H�                                                       �H�                                                       XI�                                                       xH�                                                       �I�                                                       �H�                                                            �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    �q�Color Map                       �                     J�                                                       �I�                                                       8I�                                                       �I�                                                       xI�                                                       �I�                                                        �                                                        �                                                            �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���       �                                          <   �}    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �}    h��<   A ���                     `          ����            �     �1Terminal                           �                            