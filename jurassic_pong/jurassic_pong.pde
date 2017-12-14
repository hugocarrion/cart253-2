//issue with first repository, created cart253-2 as replacement

Trex trex;
Dino dino;
Fallout fallout;

int trexHealth = 100;
int moveHealth = -1;
int trexSpeed = 10;
int falloutSpeed = 10;
int dinoSpeed = 10;
int trexDir;

boolean decreaseHealth;
boolean increaseHealth;

  //calls images to class
  PImage bg;
  
  PImage falloutPic;
  
  PImage trexPic;
  
  PImage dinoPic;
 


void setup() {
  size(1096, 616);
  bg = loadImage("asteroid.jpg");
  
  falloutPic = loadImage("fallout.png");
  trexPic = loadImage("trex_3.png");
  dinoPic = loadImage("greendino.png");
  //constructs new object for each class
  
  

  dino = new Dino(dinoPic, (int) random(width - dinoPic.width), -dinoPic.height, dinoSpeed);
  fallout = new Fallout(falloutPic, (int) random(width - falloutPic.width), -falloutPic.height, falloutSpeed);
  trex = new Trex(trexPic, width - trexPic.width >> 1, height - trexPic.height, trexSpeed);
  
 
 
}

void draw() {
  //dino.update();  
  background(bg);
  
  text(trexHealth, width-100,50);
  
  decreaseHealth = trex.isIntersecting(fallout);
  increaseHealth = trex.isIntersecting(dino);
  
  if(decreaseHealth){
    trexHealth -= 100;
  }
  
   if(increaseHealth){
    trexHealth += 500;
  }
  
  dino.update();
  dino.display();
  
  
  trex.display();
  trex.update();
  
  fallout.update();
  fallout.display();
  
  gameOver();
  winGame();
  
}

void keyPressed() {
  trex.move(keyCode, 1);
  trexHealth += moveHealth;
}
 
void keyReleased() {
  trex.move(keyCode, 0);
}


void gameOver(){
if(trexHealth <= 0){
  trexHealth = 0;
  moveHealth = 0;
  fallout.changeVy(0);
  dino.changeVy(0);
  trex.changeVel(0);

 text("Game over muahahaha!", width/2,height/3 - 40);
 }
}

void winGame(){
if(trexHealth >= 10000){
  trexHealth = 10000;
  moveHealth = 0;
    fallout.changeVy(0);
  dino.changeVy(0);
  trex.changeVel(0);

 text("Rawr You Survived", width/2,height/3 - 40);
 
}
}