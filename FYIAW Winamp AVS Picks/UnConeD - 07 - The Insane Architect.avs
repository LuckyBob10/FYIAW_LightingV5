Nullsoft AVS Preset 0.2    4  0  Whacko AVS IV - The Insane Architect
---------------------------------------------------------------

After making Hypernet, I decided to try making a (faster) superscope version of it. It worked and the superscope version allowed more shapes, but lacked any sort of fadeout in 3D.

To make the preset more interesting, I tried adding some feedback loops with subtractions to get a chrome-ish effect. After refining it some more, I turned it into a ghostly animation. Because the superscope draws pieces of cubes, the end result looks like a skeleton-view of buildings. That's why I named it 'The Insane Architect'.

While this preset doesn't move much to the music, it's still very nice and perfectly suited for moody ambient tunes. Not every preset has to be an orchestra of flashing colours :).

UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.)

 ����  �   $�   �                           @  AVS 2.8+ Effect List Config                          
   ���              �����  � $�   �                           @  AVS 2.8+ Effect List Config                    (       �$     �  px=getosc(i*.33,0,0)*.5+.5;
py=getosc(i*.33+.33,0,0)*.5+.5;
pz=getosc(i*.33+.66,0,0)*.5+.5;
px=px*mf%mf/mf;px=px*4-2;
py=py*mf%mf/mf;py=py*4-2;
pz=pz*mf%mf/mf;pz=pz*4-2;
ac=rand(3);
px=if(2-ac,lx,px);
py=if(1-ac,ly,py);
pz=if(ac,lz,pz);
x1=px*cz+py*sz;y1=py*cz-px*sz;
y2=y1*cx+pz*sx+yc;z2=pz*cx-y1*sx;
x3=x1*cy+z2*sy+xc;z3=z2*cy-x1*sy+1.5;
bc=below(z3,0.01);
iz=if(bc,1,1/z3);
x=if(bc,lpx,x3*iz);y=if(bc,lpy,y2*iz)*af;
lpx=x;lpy=y;
lx=px;ly=py;lz=pz;
 z   t=t-0.05;px=0;py=0;rx=rx+rxo;ry=ry+ryo;rz=rz+rzo;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);af=w/h q   hu=rand(100)/50+hu;rx=rx+rand(100)/30;ry=ry+rand(100)/30;rz=rz+rand(100)/30;xc=rand(100)/50-1;yc=rand(100)/50-1; ,   n=70;mf=15;rx=0;ry=0;rz=0;rxo=0;ryo=0;rzo=0       ���                 &         ���            �����   � $�   �                           @  AVS 2.8+ Effect List Config                       '   �  
   d=d*0.997                                 ,             �                                          <   �S    ��<   A ���                     `          ����            �     �1Terminal                           �                               �      ���                                <   �S    h��<   A ���                     `          ����            �     �1Terminal                           �                            