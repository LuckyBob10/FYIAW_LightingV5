Nullsoft AVS Preset 0.2 ,            A  =  Whacko AVS IV - All Neon-like
-------------------------------------------------

I'm not sure where the idea for this preset came from, but once I knew what I wanted to do, it was really not that hard. I simply created superscopes for every object and synchronized the camera movements and rotations. The neon-colouring of the buildings is based on the oscilloscope, but I filter out silent samples to enhance the neon-contrast.

What's cool is that the 'street' is composed of a standard set of buildings, but they are switched randomly to make it change all the time.

To make the background less dull, I added some stars... they are correctly obscured by the buildings through some buffer tricks.

I think this is one of my best 3D superscope presets yet! Looks insane on music that has a lot of bass :)


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.)

 (       �$   �  �  � Left building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25;
px=cos(ban)*(2-ac*i*1.7)+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*2+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg;   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 c   n=140;xp=-1;zi=0;zp=zi;snd=0;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $   �  �  � Left building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25;
px=cos(ban)*2+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*(2-ac*i*1.7)+ac*i*.85+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg;   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 d   n=120;xp=-1;zi=2;zp=zi;snd=.3;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $   �  �  � Left building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25;
px=cos(ban)*2+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*2+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg; �   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1 d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 d   n=100;xp=-1;zi=4;zp=zi;snd=.6;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $   �  �  � Right building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25-1.5;
px=cos(ban)*2+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*2+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg; �   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1 d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 a   n=80;xp=1;zi=0;zp=zi;snd=0;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $     
  � Right building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25-1.5;
px=cos(ban)*if(ac*above(i,.2),if(below(i,.35),3,2),2)+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*if(ac*above(i,.2),if(below(i,.35),3,2),2)+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg;   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 c   n=140;xp=1;zi=2;zp=zi;snd=.3;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $   �  �  � Right building;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25-1.5;
px=cos(ban)*(2-ac*max(0,i*3-1))+ac*max(0,i*3-1)*.5+xp*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*2+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8);
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg;   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 c   n=120;xp=1;zi=4;zp=zi;snd=.4;ht=7;side=1;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2       ���    $   �  �  � Bridge;
brf=(brf+1)%2;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25;
px=xp*5+(brf*2-1)*3.5;py=if(below(bhf,n/4),bhf*.05*ht-3,-2)+cyp;pz=if(below(bhf,n/4),0,bhf/n*4-1)+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8)*bcv*ac;
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg;   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 g   n=15;xp=0;zi=4;zp=zi;snd=.5;ht=7;side=2;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2;ac=1       ���    $   �  �  � Elevator Street;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25-1.5*(ps*.5+.5);
px=cos(ban)*.5+ps*3.25;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*.5+zp*5+9;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8)*bcv*ac;
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg; 4  t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ps=if(equal(zp,4),rand(2)*2-1,ps);ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 h   n=40;xp=0;zi=2;zp=zi;snd=.5;ht=7;side=2;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2;ps=1;       ���    $   �  �  � Elevator Side;
brf=(brf+1)%3;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25-1.5*(ps*.5+.5);
px=cos(ban)*.5+ps*5;py=-bhf*.05*ht+3+cyp;pz=sin(ban)*.5+zp*5+7.5;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8)*bcv*ac;
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.7),.2,red*2-.7))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.7),.2,green*2-.7))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.7),.2,blue*2-.7))*bfg; 4  t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-2),4,zp-spd*.01);cyp=cyp*.9+cypt*.1;ps=if(equal(zp,4),rand(2)*2-1,ps);ac=if(equal(zp,4),rand(2),ac); d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 i   n=70;xp=0;zi=0;zp=zi;snd=.5;ht=7;side=2;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2;ps=-1;       ���    $     �  � Road;
brf=(brf+1)%2;bhf=if(brf,bhf,bhf+1);bfl=if(brf,bfl,-bfl);
bcv=if(brf,1,0);ban=(brf*bfl+(-bfl*.5+.5)*2-1.5)*tpi*.25;
px=(brf*2-1)*2.9;py=3.07+cyp;pz=bhf+.7+zp*5;
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.01);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);
bfg=min(1,3-z3/8)*bcv;
red=(.35+getosc(bhf*.0125+.225+snd,0,3-side))*bcv;
red=min(1,if(below(red,.5),.2,red*2-.5))*bfg;
green=(.35+getosc(bhf*.0125+.125+snd,0,3-side))*bcv;
green=min(1,if(below(green,.5),.2,green*2-.5))*bfg;
blue=(.35+getosc(bhf*.0125+snd,0,side))*bcv;
blue=min(1,if(below(blue,.5),.2,blue*2-.5))*bfg; �   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.75);sy=sin(sin(ry)*.75);cz=cos(sin(rz)*.5);sz=sin(sin(rz)*.5);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-5/n),0,zp-spd*.01);cyp=cyp*.9+cypt*.1;x=0;y=2; d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 \   n=39;xp=0;snd=.5;ht=7;side=2;spd=6;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2;zp=0       ���    �����   �$�   �                           @  AVS 2.8+ Effect List Config                                              �qMultiplier                                               �   ����	  � $�   �                          @  AVS 2.8+ Effect List Config                    $   �  �  ssd1=(sd1*0.83 + sd2*2.29 + 3491) % 65536;
sd2=(sd2*0.89 + sd3*1.49 + 4177) % 65536;
sd3=(sd3*1.79 + sd1*0.73) % 65536;
sd1=ssd1;a1=sd1*tpi*2/65536;a2=sd2*tpi*2/65536;
c2=cos(a2);
px=c2*cos(a1);py=c2*sin(a1);pz=sin(a2);
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy;z3=z2*cy-x1*sy;
dp=above(z3,.1)*above(px,-1)*above(-py,0.1);iz3=if(dp,1/z3,0);
x=if(dp,x3*iz3,x);y=if(dp,y2*iz3*af,y);   t=t-0.05;rx=rx+rxo+.005;ry=ry+ryo;rz=rz+rzo;cx=cos(sin(rx)*.2+.1);sx=sin(sin(rx)*.2+.1);cy=cos(sin(ry)*.5);sy=sin(sin(ry)*.5);cz=cos(sin(rz)*.5+.25);sz=sin(sin(rz)*.5+.25);af=w/h;brf=2;bhf=0;bfl=1;zp=if(below(zp,-5/n),0,zp-spd*.01);sd1=45239;sd2=6831;sd3=4929 d   rxo=getosc(0,0,0)*.095;ryo=getosc(0.1,0,0)*.095;rzo=getosc(0.3,0,0)*.095;cypt=getosc(.8,0,0)*2.5-.6 ]   n=300;xp=0;snd=.5;ht=7;side=2;spd=4;ry=0;rx=0;rxo=0.0029;ry=0;ryo=-0.003;tpi=acos(-1)*2;zp=0       ���                     �      �                                          <   �Z    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �Z    ���<   A ���                     `          ����            �     �1Terminal                           �                            