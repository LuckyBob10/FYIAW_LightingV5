Nullsoft AVS Preset 0.2    �  �   Whacko AVS V - Neon Coaster
----------------------------------------------------

A preset with only 3 functional components.. of which one is super-loaded :).

This easily qualifies as the most complicated superscope ever: it weighs in at a heavy 4K. So how exactly does it work? The rollercoaster track is built out of primitive segments: lines and circle arcs. The result is smoothed into a continuous track.

This basic curve is transformed into the two connected rails through some clever vector math which also calculates the camera's position and rotation.

In the end you have this really cool, disco rollercoaster, which took 4 days of work :P.

------------------------------------------------
UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.) ,         (       �$   �  <  jx=kx;jz=kz;kx=ix;kz=iz;
hi=-hi;hp=(hp+1)%3;
i=i*31.82;

� 1st - Line;
u1=i;
px=i*.5;py=.5-cos(i*1.25)*.5;pz=0;

� 2nd - 180 Corner;
pc=band(above(i,1),below(i,4.33));
u1=(i-1)*tpi*.3;
px=if(pc,sin(u1)*.5+.5,px);py=if(pc,.5-cos(i*1.25)*.5,py);pz=if(pc,cos(u1)*.5-.5,pz);

� 3th - Line;
pc=band(above(i,4.33),below(i,5.02));
u1=(i-4.33);u2=u1*1.33;
px=if(pc,-u1*.5+.5,px);py=if(pc,.5-cos(i*1.25)*.5,py);pz=if(pc,-1,pz);

� 4th - Loop;
pc=band(above(i,5.02),below(i,9.46));
u1=(i-5.02)*tpi*.45;
px=if(pc,-sin(u1)*.4+.155,px);py=if(pc,.4-.4*cos(u1),py);pz=if(pc,-1+u1*.033,pz);

� 5th - Soft Chicane Left Up;
pc=band(above(i,9.46),below(i,10.96));
u1=(i-9.46);u2=u1*.6;
px=if(pc,-u1*.5+.155,px);py=if(pc,.3-cos(u1)*.3,py);pz=if(pc,-.792-(3*sqr(u2)-2*sqr(u2)*u2)*.125,pz);

� 6th - Corner Right;
pc=band(above(i,10.96),below(i,13.26));
u1=(i-10.96);u2=u1*.6;
px=if(pc,-sin(u1)*.4-.59,px);py=if(pc,.3-cos(u1+1.495)*.3,py);pz=if(pc,-cos(u1)*.4-.514,pz);

� 7th - Line drop;
pc=band(above(i,13.26),below(i,15.19));
u1=(i-13.26);u2=u1*.6;
px=if(pc,u1*.35-.89,px);py=if(pc,.4-cos(u1+4.35)*.4,py);pz=if(pc,u1*.395-.25,pz);

� 8th - 360 Helix Up Left;
pc=band(above(i,15.19),below(i,19.18));
u1=(i-15.19)*tpi*.5-.84;u2=(i-15.19)*.2506;
px=if(pc,cos(u1)*.35-.45,px);py=if(pc,(3*sqr(u2)-2*sqr(u2)*u2)*.2,py);pz=if(pc,sin(u1)*.35+.772,pz);

� 9th - 270 Corner Right Humped;
pc=band(above(i,19.18),below(i,25.62));
u1=-(i-19.18)*tpi*.23-.84-3.14;u2=i-19.18;
px=if(pc,cos(u1)*.6+.186,px);py=if(pc,.25+cos(u2*1.94)*.15-(cos((i-19.18)*.487)*.1+.1),py);pz=if(pc,sin(u1)*.6+.065,pz);

� 10th - Line Drop;
pc=band(above(i,25.62),below(i,27.26));
u1=(i-25.62);u2=u1*.6;
px=if(pc,-u1*.35-.238,px);py=if(pc,.2-cos(u1*2+3.14)*.2,py);pz=if(pc,u1*.35-.359,pz);

� 11th - 270 Corner Left;
pc=band(above(i,27.26),below(i,29.75));
u1=(i-27.26)*tpi*.5+.78;u2=i-19.18;
px=if(pc,cos(u1)*.33-1.049,px);py=if(pc,0,py);pz=if(pc,sin(u1)*.33-.0135,pz);

� 12th - Chicane left;
pc=above(i,29.75);
u1=(i-29.75);u2=u1*1.5;
px=if(pc,u1*.5-1.04,px);py=if(pc,0,py);pz=if(pc,-0.35*(cos(u2)*.5+.5),pz);

� Smooth into a continuous spline;
py=py*if(mf-4,-1,1)+.5;px=px*if(mf%2,1,-1);
px=(px*.1+ix*.905);
py=(py*.1+iy*.905);
pz=(pz*.1+iz*.905);

� Store camera position on rail;
pc=below(i,u);oox=if(pc,px,oox);ooy=if(pc,py,ooy);ooz=if(pc,pz,ooz);
ix=px;iy=py;iz=pz;

� Calculate rails and banking/twisting;
red=bor(below(i,5.02),above(i,9.86));
red=if(red,atan2(iz-kz,ix-kx),3.14*if(mf%2,1,0));
u1=cos(red);u2=sin(red);
blue=-u2;green=u1;
u1=ix+jx-kx*2;u2=iz+jz-kz*2;
by=(by*7-((iz-jz)*u1-(ix-jx)*u2)*8000)*.125*if(above(i,30.82),(31.82-i),1);
red=sqr(blue)+sqr(green);
rrz=if(pc,(atan2(red,by)-1.57)*if(below(mf,2),1,-1),rrz);
pc=hi*.04/sqrt(red+sqr(by));
px=px-ox+blue*pc;py=py-oy+by*pc;pz=pz-oz+green*pc;

x1=px*cy+pz*sy;z1=pz*cy-px*sy;
y2=py*cx+z1*sx;z2=z1*cx-py*sx;
x3=x1*cz+y2*sz;y3=y2*cz-x1*sz+.08;
u1=if(above(z2,0.01),1/z2,0);
lx=gx;ly=gy;
gx=mx;gy=my;
mx=x3*u1;my=if(u1,y3*u1,4);
x=if(hp-1,if(hp-2,mx,gx),lx);y=if(hp-1,if(hp-2,my,gy),ly);
x=max(-1.1,min(1.1,x))*1.1;y=max(-1.1,min(1.2,y))*w*1.1;
pc=if(hp-1,1,0);
bx=sign(u1)*below(abs(gx-x)+abs(gy-y),.99)*below(my,2)*below(ly,2);
u1=(1.1-z2*(.9+pc*.2)+pc*.3);u2=max(0,sin(i*.114*200))*.2+abs(getosc(i*.03,0,0)*pc)*2;
red=bx*(u1*cr+u2);green=bx*(u1*cg+u2);blue=bx*(u1*cb+u2);
 �  red=bor(below(u,5.02),above(u,9.86));rx=(atan2(sqrt(sqr(ooz-oz)+sqr(oox-ox)),ooy-oy)-1.57);ry=if(red,atan2(ooz-oz,oox-ox)-1.57,-1.57*sign(oox-ox));rz=rrz+(1-red)*(1.57+1.57*sign(oox-ox)*if(mf%2,1,-1)*if(below(mf,2),1,-1));ox=oox;oy=ooy;oz=ooz;t=t+1/n*if(below(mf,2),1,-1);t=if(below(t,0),t+1,if(above(t,1),t-1,t));u=t*31.82;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);pc=0;hi=1;cr=sin(hu)*.5+.5;cg=sin(hu+2.09)*.5+.5;cb=sin(hu+4.18)*.5+.5;w=w/h;hp=0;mx=0;my=2;hu=hu+.005*mf 0   � Roller Coaster Track; hu=hu+getosc(0,0,0)*10; S   n=480;tpi=acos(-1);ox=0;oy=0;oz=0;oox=0;ooy=0;ooz=0;rrz=0;mf=getosc(.7,0,0)*200%4;       ���       �                                          <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                            