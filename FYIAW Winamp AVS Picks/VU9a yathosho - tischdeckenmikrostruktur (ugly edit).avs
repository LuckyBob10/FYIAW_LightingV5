Nullsoft AVS Preset 0.2   �   �   
	yathosho presents
	u.g.l.y. volume 9


	tischdeckenmikrostruktur (u.g.l.y. edit)


	by yathosho
        additional code by fabry & el-vis
	remixed by yathosho


	visbot.net for more! ����H  � 	$�   �                           @  AVS 2.8+ Effect List Config                       (            ���                      &           �               (             �@                          (             �@                         '   �  
   d=d*(2/3)                     +     �   d=if(equal(ct%3,0),d*(sin(x*y*bt1+fr)*bt+2)*db,d);
d=if(equal(ct%3,1),d*(sin(x*bt1+fr)*bt+1.5),d);
d=if(equal(ct%3,2),d*(sin(y*bt1+fr)*bt+1.5),d);
r=r+sr |   sr=sr+dsr;
fr=fr+0.1;
bt=if(above(bt,0),bt-btd,bt);
bt1=if(equal(btt,bt1),btt,bt1+bttd);
db=if(equal(db,dbt),db,db+dbd) �   bt=if(below(bt,1),bt+0.2,bt);btd=bt/100;
btt=rand(4)+1;bttd=(btt-bt1)/10;
dbt=rand(50)/100+0.3;dbd=(dbt-db)/10;
dsr=rand(10)/100-0.05;
ct=if(equal(ct,3),0,ct+0.1);
    pi=acos(-1);db=0.3;ct=0                                6   �     r=r+$PI*1/4;
d=d*(1/3);                    !                    �         +   �      x=x+xm;y=y+ym; (   xm=xm*0.9+xmc*0.2;
ym=ym*0.9+ymc*0.15; -   xmc=rand(40)/100-0.1;
ymc=rand(40)/100-0.1;                                   l��Holden03: Convolution Filter                                                                                          ����                   	   ����                   ��������                                                                       E:\Program Files\foobar2000\Winamp\Plugins\avs\relief 3x3.cff   �                                          <   ��    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   ��    h��<   A ���                     `          ����            �     �1Terminal                           �                            