/* please implement your assign1 code in this file. */

PImage background1Img;
PImage background2Img;
PImage enemyImg;
PImage treasureImg;
PImage fighterImg;
PImage hpImg;

int x;
int e1;                           //enemy's speedx
int e2=floor(random(40,440));     //enemy randomy
int hp=floor(random(20,210));     //random hp
int t1=floor(random(30,610));     //treasure randomx
int t2=floor(random(30,450));     //treasure randomy
int f2=floor(random(40,440));     //fighter randomy


void setup(){
  size(640,480);

  background1Img=loadImage("img/bg1.png");
  background2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  treasureImg=loadImage("img/treasure.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  e1=0;
  x=0;
  
}

void draw(){
  
  //background
  image(background1Img,x,0);
  image(background2Img,x-640,0);
  image(background1Img,x-1280,0);
  x++;
  x%=1280;
  
  //enemy
  image(enemyImg,e1,e2);
  e1+=3;
  e1%=640;
  
  //treasure
  image(treasureImg,t1,t2);
  
  //fighter
  image(fighterImg,580,f2);
  
  //hp
  stroke(255,0,0);
  strokeCap(SQUARE);
  strokeWeight(15);
  line(20,25,hp,25);
  image(hpImg,10,10);
  
}
