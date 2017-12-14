//issue with first repository, created cart253-2 as replacement

Trex trex;
Dino dino;
Fallout fallout;

int dinoX;
int dinoY;

int dinoWidth;
int dinoHeight;

int trexX; 
int trexY;

int trexWidth;
int trexHeight;


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
  trex = new Trex(trexPic, width - trexPic.width >> 1, height - trexPic.height, 10);
  
  
  dinoX = dino.returnDinoX();
  dinoY = dino.returnDinoY();
  
  dinoWidth = dino.returnWidth();
  dinoHeight = dino.returnHeight();

 
}

void draw() {
  //dino.update();  
  background(bg);

  dino.update();
  dino.display();
  
  
  trex.display();
  trex.update();
  
  fallout.update();
  fallout.display();
  
  
}

void keyPressed() {
  trex.move(keyCode, 1);
}
 
void keyReleased() {
  trex.move(keyCode, 0);
}