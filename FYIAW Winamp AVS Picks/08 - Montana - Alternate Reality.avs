Nullsoft AVS Preset 0.2   �  �  ______________________________________________________

  Whacko Revisited
  Alternate Reality
  Remix by: Montana

  Original: Retrosquares
______________________________________________________
������������������������������������������������������
at first i didn't what to remix and what to do, but i know that i like retrosquares and it provided me a nice base to something on, so i changed to texture into this griddy thing and then did some alterations. and then i removed the original dm and replaced it with this one. 

made this while mostly listening to: kylie minogue - fever

tony_montana38@hotmail.com
______________________________________________________
 +   z  f  pp=pp+1;
pc=if(band(above(y,.95),below(x,-.95)),1,0);
lx1=if(pc,94,lx1);lx2=if(pc,94,lx2);
ly1=if(pc,61,ly1);ly2=if(pc,61,ly2);
lx1=(lx1*351+gx)%1000;ly1=(ly1*411+gy)%1000;
lx2=(lx2*351+gxt)%1000;ly2=(ly2*411+gyt)%1000;
alpha=sign(sin(lx1+ly1)-.5)*(1-ip)+sign(sin(lx2+ly2)-.5)*ip;
lv=if(below(x,-.95),alpha,lv);alpha=if(above(x,.95),lv,alpha);py=y;
 ^   t=t-0.05;
py=-1;
lx1=94;ly1=61;
lx2=94;ly2=61;
ip=if(below(ip,1),ip+.04,1);
lv=0;
pp=0; �   x=below(ip,1);
gx=if(x,gx,gxt);
gy=if(x,gy,gyt);
ip=if(x,ip,0);
gxt=if(x,gxt,rand(100)+40+321);
gyt=if(x,gyt,rand(100)+50+711);                                �qMultiplier                                       d�            �����   �  $�   �                           @  AVS 2.8+ Effect List Config                    !                    �         �qChannel Shift                      �     ����]  � $�   �                           @  AVS 2.8+ Effect List Config                    l��Holden03: Convolution Filter    �                                                      ������������            ��������������������        ��������   ��������        ��������������������            ������������                                    ��������                  �   %         l��Holden03: Convolution Filter    �                                                                                                                                             ����                            ����                            ����       �����  � $�   �                           @  AVS 2.8+ Effect List Config                    +   )  i   d=d*cos(sin(x*xv1+xf2)*sin(y*yv1+yf2));r=r+rf;
x=sin(r)*d*sqrt(2);y=cos(r)*d*sqrt(2);
x=x+xf1;y=y+yf1; �   xf1=xf1+xb1;xf2=xf2+xb2;xf3=xf3+xb3/2.25;
yf1=yf1+yb1;yf2=yf2+yb2;yf3=yf3+yb3/2.25;
rf=rf+rb;df=df+db*2;dv=1.25+sin(df)*0.5;
xv1=2.25+sin(xf3)*2.25; yv1=1.25+sin(yf3)*0.75; �  xvb1=rand(4);xb1=if(equal(xvb1,2),rand(50)/1000-0.025,xb1);
xvb2=rand(4);xb2=if(equal(xvb2,2),rand(50)/1000-0.025,xb2);
xvb3=rand(4);xb3=if(equal(xvb3,2),rand(50)/1000-0.025,xb3);
yvb1=rand(4);yb1=if(equal(yvb1,2),rand(50)/1000-0.025,yb1);
yvb2=rand(4);yb2=if(equal(yvb2,2),rand(50)/1000-0.025,yb2);
yvb3=rand(4);yb3=if(equal(yvb3,2),rand(50)/1000-0.025,yb3);
rvb=rand(4);rb=if(equal(rvb,2),rand(50)/1000-0.025,rb);
dvb=rand(4);db=if(equal(dvb,2),rand(50)/1000-0.025,db);                                %                          �   +   )  i   d=d*cos(sin(x*xv1+xf2)*sin(y*yv1+yf2));r=r+rf;
x=sin(r)*d*sqrt(2);y=cos(r)*d*sqrt(2);
x=x+xf1;y=y+yf1; �   xf1=xf1+xb1;xf2=xf2+xb2;xf3=xf3+xb3/2.25;
yf1=yf1+yb1;yf2=yf2+yb2;yf3=yf3+yb3/2.25;
rf=rf+rb;df=df+db*2;dv=1.25+sin(df)*0.5;
xv1=2.25+sin(xf3)*2.25; yv1=1.25+sin(yf3)*0.75; �  xvb1=rand(4);xb1=if(equal(xvb1,2),rand(50)/1000-0.025,xb1);
xvb2=rand(4);xb2=if(equal(xvb2,2),rand(50)/1000-0.025,xb2);
xvb3=rand(4);xb3=if(equal(xvb3,2),rand(50)/1000-0.025,xb3);
yvb1=rand(4);yb1=if(equal(yvb1,2),rand(50)/1000-0.025,yb1);
yvb2=rand(4);yb2=if(equal(yvb2,2),rand(50)/1000-0.025,yb2);
yvb3=rand(4);yb3=if(equal(yvb3,2),rand(50)/1000-0.025,yb3);
rvb=rand(4);rb=if(equal(rvb,2),rand(50)/1000-0.025,rb);
dvb=rand(4);db=if(equal(dvb,2),rand(50)/1000-0.025,db);                                            	   �   l��Holden03: Convolution Filter    �                          ����    ����                    ����            ����        ����        ����    ��������   ��������    ����        ����        ����            ����                    ����    ����            ����   �                                          <   r6     �C�<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   r6     (۾<   A ���                     `          ����            �     �1Terminal                           �                            