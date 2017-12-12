Trex trex;
Dino dino;
Fallout fallout;


  //calls images to class
  PImage bg;



//test
void setup() {
  size(1096, 616);
  bg = loadImage("asteroid.jpg");
  //constructs new object for each class
  dino = new Dino();
  fallout = new Fallout();
  trex = new Trex(UP,DOWN,LEFT,RIGHT);
  
}

void draw() {
  //dino.update();  
  background(bg);

  dino.update();
  dino.display();
  
  
  fallout.displayFireball();
  fallout.updateFireball();
  
  trex.display();
  trex.update();
  
  
}


void keyPressed() {
  // Just call both paddles' own keyPressed methods
 trex.keyPressed();
  
}

void keyReleased() {
  // Call both paddles' keyReleased methods
  trex.keyReleased();
}