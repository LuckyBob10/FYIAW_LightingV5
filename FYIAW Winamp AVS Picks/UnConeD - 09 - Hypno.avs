Nullsoft AVS Preset 0.2    U  Q  Whacko AVS II - Hypno
--------------------------------------

This is a second particle-based preset. The swirlies are flows of particles that move around on the surface of a sphere (3D polar coordinates). They're duplicated mirrored around the center as well. Pretty hypnotising!

The zooming-out movement uses a different effect for even pixels and odd pixels... because the trans/movement only uses relative units (scale -1 to 1), I made it for 320x240. But it doesn't look too bad on other resolutions.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)
              ,         ����h  � $�   �                           @  AVS 2.8+ Effect List Config                    $   �    ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;u=sd2/65536*2+t/4;

ph=u*mf+sd3/65536;th=u*nf+t*3;rad=1;
px=cos(ph)*sin(th)*rad;py=sin(ph)*sin(th)*rad;pz=cos(th)*rad;

cf=sd2/65536;cf=cf*cf;
red=(sin(hu)*.5+.5)*cf;green=(sin(hu+2.09)*.5+.5)*cf;blue=(sin(hu+4.09)*.5+.5)*cf;

x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+1.5;
x=if(above(z3,0.1),x3/z3,x);y=if(above(z3,0.1),y2/z3,y);
y=y*1.333 �   rx=rx+rxo+.03;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);rp=0;mp=1;cv=0;sd1=45239;sd2=6541;sd3=49292;t=t+0.05;hu=hu+0.01; y   rxo=getosc(0,0,0)*.1;ryo=getosc(0.1,0,0)*.1;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;mf=rand(5)+2;nf=rand(5)+2; m   n=1000;t=0;ry=0.12;rx=0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;t=0;zm=1;hu=0;mf=2;nf=2;mft=mf;nft=nf;ip=0       ���                               ,          ,          ,             �   �  c   dd=pow(d,.3)*.05*.05+d*.95;
odd=(x*160+y*120)%2;
r=r+if(odd,0.01,-0.01);
d=if(odd,dd,d*1.02);
                                     �      "   �     d=-d                                     �      �                                          <   �a    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �a    h��<   A ���                     `          ����            �     �1Terminal                           �                            