PImage bg1img;
PImage bg2img;
PImage fighterimg;
PImage enemyimg1;
PImage enemyimg2;
PImage enemyimg3;
PImage enemyimg4;
PImage enemyimg5;
PImage enemyimg6;
PImage enemyimg7;
PImage enemyimg8;
PImage enemyimg9;
PImage enemyimg10;
PImage treasureimg;
PImage hpimg;
PImage start1img;
PImage start2img;
PImage end1img;
PImage end2img;
int x;
int y;
float a;
int z;
int e;
int f;
float g=(random(480));
float b=floor(random(640));
float c=floor(random(480));
float blood=(random(225));
boolean upPressed=false;
boolean downPressed=false;
boolean leftPressed=false;
boolean rightPressed=false;
float u=random(155);
float q=random(110,370);
int p;
int r;
int k;
int j;
int l;
int v;
int gameState;
final int fleeA=1,fleeB=2,fleeC=3;



void setup () {
  size(640,480) ;  
  bg1img=loadImage("img/bg1.png");
  bg2img=loadImage("img/bg2.png");
  fighterimg=loadImage("img/fighter.png");
  treasureimg=loadImage("img/treasure.png");
  hpimg=loadImage("img/hp.png");
  start1img=loadImage("img/start1.png");
  start2img=loadImage("img/start2.png");
  end1img=loadImage("img/end1.png");
  end2img=loadImage("img/end2.png");
  x=640;
  y=0;
  z=0;
  a=0;
  e=600;
  blood=195;
  background(0);
enemyimg1=loadImage("img/enemy.png");
enemyimg2=loadImage("img/enemy.png");
enemyimg3=loadImage("img/enemy.png");
enemyimg4=loadImage("img/enemy.png");
enemyimg5=loadImage("img/enemy.png");
enemyimg6=loadImage("img/enemy.png");
enemyimg7=loadImage("img/enemy.png");
enemyimg8=loadImage("img/enemy.png");
enemyimg9=loadImage("img/enemy.png");
enemyimg10=loadImage("img/enemy.png");

k=0;
j=0;
l=0;
v=0;
gameState=fleeA;
}

void draw() {
   image(bg1img,-640+x,0);
  x+=4;
  x%=1280;//bg1  
  image(bg2img,y-640,0);
  y+=4;
  y%=1280;//bg2
  image(fighterimg,e,f);
  if(upPressed){
    f-=8;
  }//fighter
  if(downPressed){
    f+=8;
  }
  if(rightPressed){
    e+=8;
  }
  if(leftPressed){
    e-=8;
  }
  if(e>=610){
    e=610;
  }
  if(e<=0){
    e=0;
  }
  if(f>=460){
    f=460;
  }
  if(f<=0){
    f=0;
  }//keyPress
 switch(gameState){
   case fleeA:
for(int i=0;i>=-4;i--){
  a=i*65;
  image(enemyimg9,a+k,g);
  k++;
}
if(k>=1000){
  k=0;
  g=random(420);
  gameState=fleeB;
}
break;
 case fleeB:
  
for(int i=0;i>=-4;i--){
  a=i*65;
  r=i*65*-1;
  image(enemyimg10,a+j,u+r);
  j++;
if(j>=1000){
  j=0;
  u=random(0,145);
  gameState=fleeC;
}
}
break;

case fleeC:
for(int i=0;i>=-2;i--){
   a=i*65;
   v=i*65*-1;
   image(enemyimg10,a+l,q+v);
      image(enemyimg10,a+l,q-v);
  l+=1;
  
  }   
  for(int i=0;i<=1;i++){
   a=(i-5)*65+50;
   v=i*65*-1;
   image(enemyimg10,a+l,q+v);
      image(enemyimg10,a+l,q-v);
  l+=1;
  } 
  if(l>=1000){
    l=0;
    q=random(200,300);
    gameState=fleeA;
  }

 break;
 }
 
image(treasureimg,b,c);
if(b+40>=e&&e+40>=b){
    if(c+40>=f&&f+40>=c){
    b=floor(random(20,620));
    c=floor(random(20,460));
    }
}
 
  fill(255,0,0);
  rect(30,20,blood,20);
  image(hpimg,21,20); //hp
}
void keyPressed(){
  if(key == CODED) {
    switch(keyCode){
    case UP:
      upPressed=true;
      break;
    case DOWN:
      downPressed=true;
       break;
    case LEFT:
     
      leftPressed=true;
      break;
    case RIGHT:
      rightPressed=true;
      break;
      }
    }
}
  void keyReleased(){
    if(key == CODED) {
    switch(keyCode){
    case UP:
    upPressed=false;
    break;
    case DOWN:
    downPressed=false;
    break;
    
    case LEFT:
    leftPressed=false;
    break;
    case RIGHT:
    rightPressed=false;
    break;
      }
    }
  }
