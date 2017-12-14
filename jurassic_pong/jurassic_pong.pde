//issue with first repository, created cart253-2 as replacement

Trex trex;
Dino dino;
Fallout fallout;

int trexHealth = 50;
int moveHealth = -1;
int trexSpeed = 10;


  //calls images to class
  PImage bg;
  
  PImage falloutPic;
  
  PImage trexPic;
 


void setup() {
  size(1096, 616);
  bg = loadImage("asteroid.jpg");
  
  falloutPic = loadImage("fallout.png");
  trexPic = loadImage("trex_3.png");
  //constructs new object for each class
  
  

  dino = new Dino();
  fallout = new Fallout(falloutPic, (int) random(width - falloutPic.width), -falloutPic.height, 10);
  trex = new Trex(trexPic, width - trexPic.width >> 1, height - trexPic.height, trexSpeed);

 
}

void draw() {
  //dino.update();  
  background(bg);
  
  text(trexHealth, width-100,50);
  
  if(trex.isIntersecting(fallout)){
    trexHealth -= 100;
  }
  
  dino.update();
  dino.display();
  
  
  trex.display();
  trex.update();
  
  fallout.update();
  fallout.display();
  
  gameOver();
  
  
}

void keyPressed() {
  trex.move(keyCode, 1);
  trexHealth += moveHealth;
}
 
void keyReleased() {
  trex.move(keyCode, 0);
}


void gameOver(){
if(trexHealth == 0){
 text("Game over muahahaha!", width/2,height/3 - 40);
 trexSpeed = 0;
}


}