Nullsoft AVS Preset 0.2    �  �  Club Seizure (color enhanched mix)
____________________________________________

WinAmp 5 edit
 - Slightly better fps. Minor code fixes. Changed remix name into the correct one :)

Original preset from "Innovation!"

____________________________________________
All code written by Jukka Keskinarkaus (aka Tuggummi)
Feel free to modify or use parts of this preset to make your own  presets, but don't copy the whole preset and claim you did that  preset. ����c  �   $�   �                           @  AVS 2.8+ Effect List Config                       *   �     x=-x ;
y=-y                               (       �$   T  c   x=i*sin(i*pi*rd)*0.275+xpos ;
y=i*cos(i*pi*rd)*0.275+ypos ;
c=-i+clr ;
red=c ; green=c ; blue=c �   gps=getspec(0,0,1) ; xpos=if(above(gps,0.35),rand(200)*0.01-1,xpos) ; ypos=if(above(gps,0.35),rand(200)*0.01-1,ypos) ; color=if(above(gps,0.1),rand(50)*0.01,color) ; clr=0.5+color        n=750 ; rd=96 ; pi=acos(-1)       ���    $   T  c   x=i*sin(i*pi*rd)*0.275+xpos ;
y=i*cos(i*pi*rd)*0.275+ypos ;
c=-i+clr ;
red=c ; green=c ; blue=c �   gps=getspec(0,0,2) ; xpos=if(above(gps,0.35),rand(200)*0.01-1,xpos) ; ypos=if(above(gps,0.35),rand(200)*0.01-1,ypos) ; color=if(above(gps,0.1),rand(50)*0.01,color) ; clr=0.5+color        n=750 ; rd=96 ; pi=acos(-1)       ���    l��Holden03: Convolution Filter    �                                                                                                                                                                                                                       4   �     x=x*0.975 ;
y=y*0.975                   ����u  � 
$�   �                           @  AVS 2.8+ Effect List Config                    $   �  �   s=bnot(s) ;
x=i*0.22-0.105 ;
y=s*0.22-0.105 ;
blue=i*sin(i+bt)*0.75+i*cgt+0.5 ;
red=i*sin(i+rt)*0.75+i*cbt+0.5 ;
green=i*sin(i+gt)*0.75+i*crt+0.5 c   n=w*0.25 ; bt=bt+bts ; rt=rt+rts ; gt=gt+gts ; cgt=cos(gt)*0.2 ; cbt=cos(bt)*0.2 ; crt=cos(rt)*0.2 �   bts=getosc(br,0,0)*0.2 ; gts=getosc(gr,0,0)*0.2 ; rts=getosc(rr,0,0)*0.2 ; br=rand(101)*0.01 ; rr=rand(101)*0.01 ; gr=rand(101)*0.01           ���       <   �     r=d ;
d=d*0.05+sin(d*30)*0.05                       (                                    +   �      x=x+xt ;
y=y+yt    xt=xt+xts ;
yt=yt+yts c   xr=rand(100)*0.01 ;
yr=rand(100)*0.01 ;
xts=getosc(xr,0.1,0)*0.13 ;
yts=getosc(yr,0.1,0)*0.13 ;                                   �   �  v   z=d+abs(d)*2-1.25+y*y*0.5 ;
z1=if(below(z,0.15),z*1.75-0.4,-z)-d*0.9 ;
x1=x*0.75 ;
y1=y*0.75 ;
x=x1/z1 ;
y=y1/z1                  �qMultiplier                               �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            