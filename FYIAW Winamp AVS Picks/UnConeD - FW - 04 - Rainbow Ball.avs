Nullsoft AVS Preset 0.2    $       _________                                           
 (        _____)                                                Rainbow
  \     ( inal                  __                                   Ball
    \    ����\     _      /    )                         
      \   |�\    \_/  \_/    /                           
        \/    \                 /                            by Steven Wittens
                 \__/^\__/ hack                        aka UnConeD
______________________________________________________
  ����������������������������������������������������
This is a basic metaball DM spiced up with some smart positional coding and texturing.

Firstly, there's a small detail in the ball positions that makes it seem a lot more organic: by shifting the view's center to the center of mass, you get a feeling that the law of conservation of energy is being respected. This makes it seem more organic: when one blob moves away from the whole, the rest seem to perform the opposite movement.

Secondly, the texturing. By calculating the normal of the surface at each point and tweaking it, I get a nice and continuous shape around the balls, with only minimal ugly edges.

The texture is a shifting color coded timescope, which moves around the balls. The scope's R,G,B tints all map to the same colormap index. This is done so I don't have to use Buffer Saves or a second DM to make the ring around the whole, but can use a simple additive colormap.

Just colorful metaballs really :-).
  ____________________________________________________
������������������������������������������������������
(c) Steven Wittens / UnConeD
steven @ acko dot net - www.acko.net

If you wish to use any part (or the whole) of this preset in your own presets, packs or in another medium, you must include my name as a clear credit reference. Including my contact information/website address is not required, but appreciated.
Exception to the above: you may display these presets as a projection at parties, raves or clubs without credit reference on-screen. �����  �   $�   �                           @  AVS 2.8+ Effect List Config                    *             x=1;y=0             $   b  �   x=-1;y=i*2-1;u=0;
u=u+getosc(i,0.3,0);

cv=i;cw=max(0,i*3-2);
i=hu+i*5+u;
cr=sin(i)*.5+.5;cg=sin(i+2.09)*.5+.5;cb=sin(i+4.18)*.5+.5;
i=1/max(cr,max(cg,cb));
cr=cr*i;cg=cg*i;cb=cb*i;
red=cv*cr+cw;
green=cv*cg+cw;
blue=cv*cb+cw; &   hu=hu+1.045/cyc;lt=lt+1;cyc=cyc*1.005    cyc=cyc*.5+lt*.5;lt=0;    n=h+2;cyc=30;lt=0;hu=2       ���                       �   +   �  x  x=sin(r)*d*1.2+cx;y=-cos(r)*d*1.2+cy;
p=0;px=0;py=0;
xo=x-fx1;yo=y-fy1;p=p+1/sqrt(sqr(xo)+sqr(yo));r=1/(sqr(xo)+sqr(yo));r=r+sqr(r);px=px+xo*r;py=py+yo*r;
xo=x-fx2;yo=y-fy2;p=p+1/sqrt(sqr(xo)+sqr(yo));r=1/(sqr(xo)+sqr(yo));r=r+sqr(r);px=px+xo*r;py=py+yo*r;
xo=x-fx3;yo=y-fy3;p=p+1/sqrt(sqr(xo)+sqr(yo));r=1/(sqr(xo)+sqr(yo));r=r+sqr(r);px=px+xo*r;py=py+yo*r;
xo=x-fx4;yo=y-fy4;p=p+1/sqrt(sqr(xo)+sqr(yo));r=1/(sqr(xo)+sqr(yo));r=r+sqr(r);px=px+xo*r;py=py+yo*r;
xo=x-fx5;yo=y-fy5;p=p+1/sqrt(sqr(xo)+sqr(yo));r=1/sqr(sqr(xo)+sqr(yo));px=px+xo*r;py=py+yo*r;
ra=atan2(py,px);

x=-1+abs(asin(sin(ra*.5+t*.1)))*.3*bt;y=2-14/p;
 �  t=t-.01;bt=min(1,bt+3.3/w);
gx1=gx1*.9+hx1*.1;gy1=gy1*.9+hy1*.1;
gx2=gx2*.9+hx2*.1;gy2=gy2*.9+hy2*.1;
gx3=gx3*.9+hx3*.1;gy3=gy3*.9+hy3*.1;
gx4=gx4*.9+hx4*.1;gy4=gy4*.9+hy4*.1;
gx5=gx5*.9+hx5*.1;gy5=gy5*.9+hy5*.1;
fx1=fx1*.9+gx1*.1;fy1=fy1*.9+gy1*.1;
fx2=fx2*.9+gx2*.1;fy2=fy2*.9+gy2*.1;
fx3=fx3*.9+gx3*.1;fy3=fy3*.9+gy3*.1;
fx4=fx4*.9+gx4*.1;fy4=fy4*.9+gy4*.1;
fx5=fx5*.9+gx5*.1;fy5=fy5*.9+gy5*.1;
cx=(fx1+fx2+fx3+fx4+fx5)*.2;
cy=(fy1+fy2+fy3+fy4+fx5)*.2;
ra=0;
   f=1+getspec(0,0.01,0)*.3;
hx1=(rand(200)*.012-1.1)*f;hy1=(rand(200)*.01-1);
hx2=(rand(200)*.012-1.1);hy2=(rand(200)*.01-1)*f;
hx3=(rand(200)*.012-1.1)*f;hy3=(rand(200)*.01-1);
hx4=(rand(200)*.012-1.1);hy4=(rand(200)*.01-1)*f;
hx5=(rand(200)*.012-1.1)*f;hy5=(rand(200)*.01-1);
 9  fx1=0.01;fy1=0;gx1=.03;gy1=.4;� Metaballs;f=1+getspec(0,0.01,0)*.3;fx1=(rand(200)*.012-1.1)*f;gy1=(rand(200)*.01-1);gx2=(rand(200)*.012-1.1);gy2=(rand(200)*.01-1)*f;hx3=(rand(200)*.012-1.1)*f;hy3=(rand(200)*.01-1);hx4=(rand(200)*.012-1.1);hy4=(rand(200)*.01-1)*f;hx5=(rand(200)*.012-1.1)*f;hy5=(rand(200)*.01-1);                              ����1  � 
$�   �                           @  AVS 2.8+ Effect List Config                    �q�Color Map                       �                       �                                                       @�                                                       `�                                                       ��                                                       ��                                                       ��                                                       ��                                                        �                                                �   ���    �                       �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    �q�Color Map                       �                     �k�                                                       ��                                                       ��                                                       `�                                                       ��                                                       @�                                                       I�                                                        ]�                                                r           �   ���    �       Td              �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���    l��Holden03: Convolution Filter    �                              ��������                ����                    ����                   ����                      ����                                                                                   �q�Color Map                       �                      ^�                                                        ^�                                                       �]�                                                       �]�                                                       �]�                                                       �]�                                                       `]�                                                       @]�                                                Z   ���    �                       �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���       �                                          <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            