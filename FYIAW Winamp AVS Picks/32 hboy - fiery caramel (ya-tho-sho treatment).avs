Nullsoft AVS Preset 0.2   H  D  

          __
          fiery caramel (ya-tho-sho treatment)
     

                    __
                    vienna, 30th july 2006


         __
         original preset 'fiery caramel' by hboy
         remixed by yathosho

                              __
                              http://whyeye.org ����  � $�   �                           @  AVS 2.8+ Effect List Config                    �����  � 
 $    �                           @  AVS 2.8+ Effect List Config                    (        �$   z   K   y=0.99+0.125*v;
x=2*i-1;
red=sin(t);
green=cos(i+t);
blue=sin(i+v*0.5) 	   t=t-0.05        n=25       ���    ����7  � 
$�   .                           @  AVS 2.8+ Effect List Config                    ����q   � $�   �                           @  AVS 2.8+ Effect List Config                                      l��Holden03: Convolution Filter                                                                                                                                                                                                                           E:\Program Files\foobar2000\Winamp\Plugins\avs\relief 3x3.cff               ����   ��������+   �  �   x1=(sin(fx+dpt*y)-cos(fx+dpt*y));
y1=(cos(fy+dpt*x)-sin(fy+dpt*x));
x1a=x1+sin(x1*5)*0.05;
y1a=y1+sin(y1*5)*0.05;
x=(x+(x1a+x1)*speed2);
y=(y+(y1a+y1)*speed2); k   fx=fx+f1;
fy=fy+f2;
bt=bt*0.5+0.5*getspec(0.1,0.1,0);
speed=max(0.1,speed*0.925+bt);
speed2=speed*spd; 1   f1=rand(100)/5000*rate;
f2=rand(100)/5000*rate;     rate=3;spd=0.0025;dpt=$pi*0.35;                            �q�Color Map                       �                      x�J                                                       �k�                                                       ��J                                                       ��J                                                       ؚJ                                                       ��J                                                       �J                                                       8�J                                                            �   ��� �      ��� �R  +           �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                �   ���                      �      �             d   d           m   x=0.5+cos(t1)*0.1;
y=0.5+sin(t2)*0.1;
t=t+0.1;
bt=bt*0.9;
br=1+bt;
t1=t1+br*(b1-b2);
t2=t2+br*(b3-b4); S   bt=0.5;
b1=rand(100)/500;
b2=rand(100)/500;
b3=rand(100)/500;
b4=rand(100)/500    t=0;                   (             �  ����
���                           
   �   +   �   "   d=d*(cos(sin(d)))*0.65;
r=r+rot; 4   r1=r1*0.98+0.01*getosc(0.1,0.3,0);
rot=rot+0.5*r1;     
   spd=0.05;                              l��Holden03: Convolution Filter                                                                                           ����                      ����                   ��������                                                                       E:\Program Files\foobar2000\Winamp\Plugins\avs\relief 3x3.cff   �                                          <   ��     h��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��     ��<   A ���                     `          ����            �     �1Terminal                           �                            