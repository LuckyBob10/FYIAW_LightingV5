Nullsoft AVS Preset 0.2    ¸  ´  Whacko AVS II - Space Rave
------------------------------------------------

This is yet another application of my random generator... constant light beams. The main idea in this preset is to imitate scanners... not the pc-equipment, but the multidirectional, multicolored spotlight used on e.g. parties and shows.

There are 8 scanners on the corners of a cube, each with slightly different movement parameters... that way, they start off even, but go into a more random movement after a few seconds.

The cube itself is drawn as well, because else the positions of the lights wouldn't be very obvious.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)
 ,            $      ˙˙˙        A=
      =
ĞA   (       $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*1.05);th=sin(th)/2+cos(t*1.03);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
x1=x1-2.82;y1=y1+2;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y);     t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=21132+sv;sd2=8541;sd3=39292;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) U   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*1.13);th=sin(th)/2+cos(t*1.16);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
x1=x1+2.82;y1=y1+2;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y);    t=t+0.09;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=23239;sd2=6541;sd3=49292;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) O   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*1.06);th=sin(th)/2+cos(t*1.03);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
x1=x1-2.82;y1=y1-2;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y);    t=t+0.08;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=35239;sd2=18522;sd3=7829;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) O   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*1.21);th=sin(th)/2+cos(t*0.92);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
x1=x1+2.82;y1=y1-2;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y);    t=t+0.073;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=8223;sd2=8756;sd3=33988;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) O   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*0.85);th=sin(th)/2+cos(t*1.36);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y1=y1-2;pz=pz+2.82;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y); Ħ   t=t+0.088;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=54122+sv;sd2=8121;sd3=39252;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) U   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*0.77);th=sin(th)/2+cos(t*0.93);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y1=y1+2;pz=pz+2.82;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y); ˘   t=t+0.063;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=46132+sv;sd2=10818;sd3=56499;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) U   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*1.29);th=sin(th)/2+cos(t*0.73);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y1=y1+2;pz=pz-2.82;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y);    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=9941+sv;sd2=41771;sd3=351;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) U   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $     v  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;
rad=10-rad;ph=sd3/65536*6.28;th=sd2/65536*6.28;
ph=sin(ph)/2+sin(t*0.89);th=sin(th)/2+cos(t*1.19);
px=sin(th)*rad;py=cos(th)*cos(ph)*rad;pz=cos(th)*sin(ph)*rad;
hu=sd1/65536*3+sv;
red=(sin(hu)*.02+.02)*zm;green=(sin(hu+2.09)*.02+.02)*zm;blue=(sin(hu+4.09)*.02+.02)*zm;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y1=y1-2;pz=pz-2.82;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=abs(z2*cy-x1*sy+7.5);
x=x3/z3;y=y2/z3;
x=x;y=y*1.333;
lr=sqrt(x*x+y*y)*0.707;
x=if(rad,x/lr,x);
y=if(rad,y/lr,y); Ħ   t=t+0.107;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);sd1=9654;sv;sd2=15920;sd3=42319;hu=hu+0.01;zm=zm*.7+.3    rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=rand(20)/10+2;sv=sv+rand(1000) U   n=50;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    (      Ê$   {    px=cos(i*6.28);pz=sin(i*6.28);py=2;px=px*abs(px)*2.82;pz=pz*abs(pz)*2.82;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=5;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $   |    px=cos(i*6.28);pz=sin(i*6.28);py=-2;px=px*abs(px)*2.82;pz=pz*abs(pz)*2.82;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=5;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $   H  Ŝ   px=0;py=i*4-2;pz=2.82;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=2;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $   I  ß   px=0;py=i*4-2;pz=-2.82;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=2;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $   H  Ŝ   px=2.82;py=i*4-2;pz=0;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=2;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙    $   I  ß   px=-2.82;py=i*4-2;pz=0;
red=(sin(hu)*.1+.1)*zm;green=(sin(hu+2.09)*.1+.1)*zm;blue=(sin(hu+4.09)*.1+.1)*zm;
x1=px;y1=py;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy+7.5;
x=x3/z3;y=y2/z3;
x=x;y=y*1.333    t=t+0.078;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);hu=hu+0.01;zm=zm*.7+.3 t   rxo=getosc(0,0,0)*.2;ryo=getosc(0.1,0,0)*.2;rzo=getosc(0.2,0,0)*.1;sf=1-sf;hu=hu+rand(100)/50;zm=3;sv=sv+rand(1000) T   n=2;ry=-0.12;rx=-0.13;rz=0.18;rxo=0.019;ryo=-0.03;rzo=-0.023;zm=1;hu=0;rad=10;sv=0;       ˙˙˙       Ĉ                                          <   Ĝh    h<   A ˙˙˙                     `          ĝ˙˙˙                 ˙1Terminal                           Ü                               Ĉ      ˙˙˙                                <   Ĝh    À<   A ˙˙˙                     `          ĝ˙˙˙                 ˙1Terminal                           Ü                            