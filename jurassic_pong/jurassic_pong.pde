//issue with first repository, created cart253-2 as replacement

//                             JURASSIC PONG
//jurassic pong is a game that evelved since its inception and went through a variety of modalities.
//On its final form, you follow the journey of our Trex friend that tries to survive the apocalypse
// when an asteroid hit the Earthand must chase the green Dinos in order to stay alive while avoiding
//the asteroid fallout.

//class variables
Trex trex;
Dino dino;
Fallout fallout;

//global variables that set up different values that will be used in this class
int trexHealth = 100;
int moveHealth = -1;
int trexSpeed = 10;
int falloutSpeed = 30;
int dinoSpeed = 10;

//variables used to reset the values of Y for Dino and Fallout
int dinoY;
int falloutY;

//variables that will be assignes to overlap fallout and dino  
boolean decreaseHealth;
boolean increaseHealth;

  //calls images to class
  PImage bg;
  
  PImage falloutPic;
  
  PImage trexPic;
  
  PImage dinoPic;
 

//
void setup() {
  size(1096, 616);
  bg = loadImage("asteroid.jpg");
  
  //assigns images to variables
  falloutPic = loadImage("fallout.png");
  trexPic = loadImage("trex_3.png");
  dinoPic = loadImage("greendino.png");
  
  
  dinoY = -dinoPic.height;
  falloutY = -falloutPic.height;

//constructs new object for each class
  dino = new Dino(dinoPic, (int) random(width - dinoPic.width), dinoY, dinoSpeed);
  fallout = new Fallout(falloutPic, (int) random(width - falloutPic.width), falloutY, falloutSpeed);
  trex = new Trex(trexPic, width - trexPic.width >> 1, height - trexPic.height, trexSpeed);
  
 
 
}

void draw() {  
  
  //sets background image
  background(bg);
  
  //sets text when game for when game is over
  text(trexHealth, width-100,50);
  
  //call is intersecting sprite and assigns it to variables below
  decreaseHealth = trex.isIntersecting(fallout);
  increaseHealth = trex.isIntersecting(dino);
  
  if(decreaseHealth){
    trexHealth -= 2;
  }
  
   if(increaseHealth){
    trexHealth += 5;
  }
  
  dino.update();
  dino.display();
  
  
  trex.display();
  trex.update();
  
  fallout.update();
  fallout.display();
  
  gameOver();
  winGame();
  
  resetGame();
  
}
//substracts health when moving left or right
void keyPressed() {
  trex.move(keyCode, 1);
  trexHealth += moveHealth;
}
 
void keyReleased() {
  trex.move(keyCode, 0);
}

//Sets values to zero when game is lost (health reaches 0)
void gameOver(){
if(trexHealth <= 0){
  trexHealth = 0;
  moveHealth = 0;
  fallout.changeVy(0);
  dino.changeVy(0);
  trex.changeVel(0);

//displays text when game is lost
 text("Game over muahahaha!", width/2,height/3 - 40);
 }
}

//Sets values to zero when game is won (health reaches 1000)
void winGame(){
if(trexHealth >= 1000){
  trexHealth = 1000;
  moveHealth = 0;
  fallout.changeVy(0);
  dino.changeVy(0);
  trex.changeVel(0);
  
//displays text when game is won
 text("Rawr You Survived", width/2,height/3 - 40);
 
}
}
//function that resets game when the mouse is pressed
void resetGame(){
if(mousePressed){
  trexHealth = 100;
  moveHealth = -1;
  
  //resets objects speed to zero
  fallout.changeVy(falloutSpeed);
  dino.changeVy(dinoSpeed);
  trex.changeVel(trexSpeed);
 
  dinoY = height/2;
  falloutY = height/2;
 
}
}