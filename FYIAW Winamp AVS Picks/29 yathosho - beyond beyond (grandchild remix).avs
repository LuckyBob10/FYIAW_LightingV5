Nullsoft AVS Preset 0.2   =  9  

          __
          beyond beyond (ugly edit)
     

                    __
                    vienna, 25th november 2007


         __
         composed by jan t. sott
         dynamic movement by frank nagel

                              __
                              http://whyeye.org ����  �  $�   �                           @  AVS 2.8+ Effect List Config                             ���    �   h                �@     g   v                  �    N   <                ��     5   Q       l��Holden03: Convolution Filter                                                                                                                                                                                                         E:\Program Files\foobar2000\Winamp\Plugins\avs\mean 5x5.cff   (                                                                      l             1   d           /   x=0.5+cos(t)*0.3;
y=0.5+sin(t)*0.3;
t=t+0.1;        t=0;                                           *   �     d = (1-d)*.5                    +   �   	   y = y+m; 9   speed = gettime(0)-t; t = gettime(0);
m = m+speed*3*md; 8   s = sign(getosc(0,0,0));
md = (1+abs(getosc(1,0,0)))*s    t = gettime(0);                            +   �      r=r+sr;d=d*sd ,   sr=sr+dsr;
fr=fr+0.01;
sd=1.2+0.6*sin(fr)    dsr=rand(10)/100-0.05;
    sr=0;dsr=0;fr=0;sd=0                                <   �     r=r*2;
d = d*(1+sin(r*4)*.3);                    ����1  � $�   �                           @  AVS 2.8+ Effect List Config                    �q�Color Map                       �                     X�J                                                      8�J                                                      �J                                                      ��J                                                      ؚJ                                                      ��J                                                       ��J                                                       x�J                                                        x  �     �                 �    ��                �    �                 �   ��                 �   �                  �   � �                �   ���                �   ���    l��Holden03: Convolution Filter                                                                                           ����                      ����                   ��������                                                                       E:\Program Files\foobar2000\Winamp\Plugins\avs\mean 3x3.cff&                       �                                          <   ��     ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��     h��<   A ���                     `          ����            �     �1Terminal                           �                            