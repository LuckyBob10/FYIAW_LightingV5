Nullsoft AVS Preset 0.2       This preset appears to do something that is impossible in AVS: gouraud-filled polygons! Well by having a superscope draw a lot of thick lines, you can get a (very slow) triangle filler.

Because it's slow as hell, I only used a 5 polygon object (a pyramid) and added a lens flare effect to spice it up. The flare bitmap was made by me.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(You may use this preset partially or whole in your own presets or packs, as long as this message is included completely)
 ž’’’      $                              @  AVS 2.8+ Effect List Config                    "   )                    whacko-5.bmp         +   S      r=r+t; 
   t=t+0.05;    t=t+rand(20)/10;                                 +   B      r=r-t; 
   t=t-0.02;                                         (   ’     y=y+0.5;
                       $      ’’’          Ą@^        @   ž’’’®   $                              @  AVS 2.8+ Effect List Config                    (        $   A  ¼   px=i;
py=2*i-1;pz=i*(i*n%2*2-1);
qx=px*cy+pz*sy;
qz=pz*cy-px*sy+2;
x=qx/qz;y=py/qz;
l=pow((cos(ry+ao-0.7)+1.5)/3,.5)/2+0.5-i/2;
l=l*getspec(0,.01,0);
blue=l;green=l*0.42;red=l*0.2; )   t=t-0.05;ry=ry+ryo;cy=cos(ry);sy=sin(ry) #   ry=ry+1.57;ryo=sign(ryo)*sin(t)/10    n=300;t=0;ry=0;ryo=0.05       ’’’    ž’’’¹   $                              @  AVS 2.8+ Effect List Config                    (        $   L  Ā   px=i;
py=2*i-1;pz=i*(i*n%2*2-1);
qx=px*cy+pz*sy;
qz=pz*cy-px*sy+2;
x=qx/qz;y=py/qz;
l=pow((cos(ry+ao-0.7)+1.5)/3,.5)/2+i/2;
l=l*getspec(.1,.01,0)*1.5;
blue=l*0.10;green=l*0.92;red=l*0.4; )   t=t-0.05;ry=ry+ryo;cy=cos(ry);sy=sin(ry) #   ry=ry+1.57;ryo=sign(ryo)*sin(t)/10    n=300;t=0;ry=1.5707;ryo=0.05       ’’’    ž’’’¶   $                              @  AVS 2.8+ Effect List Config                    (        $   I  æ   px=i;
py=2*i-1;pz=i*(i*n%2*2-1);
qx=px*cy+pz*sy;
qz=pz*cy-px*sy+2;
x=qx/qz;y=py/qz;
l=pow((cos(ry+ao-0.7)+1.5)/3,.5)/2+i/2;
l=l*getspec(.2,.01,0)*2;
blue=l*0.3;green=l*0.12;red=l*0.8; )   t=t-0.05;ry=ry+ryo;cy=cos(ry);sy=sin(ry) #   ry=ry+1.57;ryo=sign(ryo)*sin(t)/10    n=300;t=0;ry=3.1415;ryo=0.05       ’’’    ž’’’ø   $                              @  AVS 2.8+ Effect List Config                    (        $   K  Į   px=i;
py=2*i-1;pz=i*(i*n%2*2-1);
qx=px*cy+pz*sy;
qz=pz*cy-px*sy+2;
x=qx/qz;y=py/qz;
l=pow((cos(ry+ao-0.7)+1.5)/3,.5)/2+i/2;
l=l*getspec(.3,.01,0)*2.5;
blue=l*0.3;green=l*0.52;red=l*0.2; )   t=t-0.05;ry=ry+ryo;cy=cos(ry);sy=sin(ry) #   ry=ry+1.57;ryo=sign(ryo)*sin(t)/10    n=300;t=0;ry=4.7123;ryo=0.05       ’’’    ž’’’Č   $                              @  AVS 2.8+ Effect List Config                    (        $   [  Ń   m=sqrt(n)%1000000;
px=i*2-1;
py=1;pz=(i*n%2)*2-1;
qx=px*cy+pz*sy;
qz=pz*cy-px*sy+2;
x=qx/qz;y=py/qz;
l=(getspec(0,0.05,0)/4)/2;
blue=l*(cos(t)+1)/2;green=l*(cos(t+2.0943)+1)/2;red=l*(cos(t+4.1887)+1)/2 )   t=t-0.05;ry=ry+ryo;cy=cos(ry);sy=sin(ry) #   ry=ry+1.57;ryo=sign(ryo)*sin(t)/10    n=400;t=0;ry=4.7123;ryo=0.05       ’’’    ž’’’c    $                              @  AVS 2.8+ Effect List Config                                 $   m   =   x=i/2-0.25;y=-0.5+v/4;
cf=abs(v);
red=cf;green=cf;blue=cf; 	   t=t-0.05        n=800       ūĻ        }   ’  `   xx=x;
yy=y+0.5;
d=sqrt(xx*xx+yy*yy);
r=atan2(yy,xx);
d=d-0.1;
x=cos(r)*d;y=sin(r)*d-0.5;
                      Ę                                          <   r$     °CĒ<   A ’’’                     `          ų’’’                 ’1Terminal                           Ü                               Ę      ’’’                                <   r$     <   A ’’’                     `          ų’’’                 ’1Terminal                           Ü                            