
int x, y, z, m, n, r, q, d, k, w, s;

float p;
float l;
float speed = 5; 

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

float  Img3X = 70;

PImage Img0;
PImage Img1;
PImage Img2;
PImage Img3;
PImage Img4;
PImage Img5;
PImage Img6;
PImage Img7;
PImage Img8;
PImage Img9;



void setup () {
  size(640, 480) ;


  
  n=0;
  r=640;
  k=-375;
  w=-1500;
  s=-6000;

  x=40;
  y=floor(random(50, 540));
  z=floor(random(50, 440));
  q=floor(random(50, 440));
  l=580;
  p=240;
  d=floor(random(80, 420));
 


  Img0 = loadImage("img/fighter.png"); 
  Img1 = loadImage("img/hp.png");
  Img2 = loadImage("img/treasure.png");
  Img3 = loadImage("img/enemy.png");
  Img4 = loadImage("img/bg1.png");
  Img5 = loadImage("img/bg2.png");




}

void draw() {

  
  image(Img4, n, 0);
  image(Img5, r, 0);
 
   n++;
   r++;
   if(n>640){n=-640;n++;}
   if(r>640){r=-640;r++;}
 
   stroke(225, 0, 0);
 fill(225, 0, 0);
 rect(25, 25, x, 20);
  
  
  image(Img0, l, p);
  image(Img1, 20, 20);
  image(Img2, y, z);

final int count=5;
final int COUNT=3;
float spacingX = width/count-50;
float spacingY = height/count-50;
float spacingXX = width/COUNT-150;
float spacingYY = height/COUNT-100;
float m=0, q=0, t=0, e=0, g=0, u=0, o=0, v=0, mo=0, j=0, f=0, h=0;


  for (int i=0; i<count; i++){
  m = i * spacingX+k;
  q = d;
  image(Img3, m, q);
  k++;
  if (m>960){k=-2300;
  d=floor(random(80, 420));
  q=d;}  //enemy1

}

  for ( int r=0; r<count; r++ ){
  t = r * spacingX+w;
  e += spacingY;
  image(Img3, t, e+100);
  w++;
  if (t>960){w=-2300;
  }  //enemy2
}
  
  
  for ( int b=0; b<COUNT; b++ ){
  g = b * spacingXX+s;
  u += spacingYY;
  image(Img3, g, u+200);
  s++;
  if (g>960){s=-6000;
  }  //enemy3
  }
  
  for ( int a=0; a<COUNT; a++ ){
  o = a * spacingXX+s;
  v -= spacingYY;
  image(Img3, o, v+320);
  s++;
  if (o>960){s=-6000;
  }  //enemy3
  }
  
  for ( int c=0; c<COUNT; c++ ){
  mo = c * spacingXX+s;
  j += spacingYY;
  image(Img3, mo+125, j+80);
  s++;
  if (mo>960){s=-6000;
  }  //enemy3
  }
  
  for ( int d=0; d<COUNT; d++ ){
  f = d * spacingXX+s;
  h -= spacingYY;
  image(Img3, f+120, h+440);
  s++;
  if (f>960){s=-6000;
  }  //enemy3
  }
  
  
  
  if (upPressed) { 
     p -= speed; 
   } 
   if (downPressed) { 
     p += speed; 
   } 
   if (leftPressed) { 
     l -= speed; 
   } 
   if (rightPressed) { 
     l += speed; 
   } 
   
   
   
   if(l>width-55){
   l=width-55;}
   if(l<0){
   l=0;}
   if(p>height-55){
   p=height-55;}
   if(p<0){
   p=0;}
   
   
  
   
   if(l>y-30 && l<y+30 && p>z-30 && p<z+30){
   x=x+20;
   y=floor(random(50, 540));
   z=floor(random(50, 440));
 }
  
   if(x>200){x=200;};


    

    }  
  

void keyPressed(){
  if (key == CODED){
  switch(keyCode){
    case UP:
    upPressed = true;
    break;
    case DOWN:
    downPressed = true;
    break;
    case LEFT:
    leftPressed = true;
    break;
    case RIGHT:
    rightPressed = true;
    break;
  
  }
  }
  

}
void keyReleased(){
if (key == CODED){
  switch(keyCode){
    case UP:
    upPressed = false;
    break;
    case DOWN:
    downPressed = false;
    break;
    case LEFT:
    leftPressed = false;
    break;
    case RIGHT:
    rightPressed = false;
    break;
  
  }
  }
 
  
}
