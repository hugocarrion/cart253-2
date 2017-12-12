class Trex {
  
 int SPEED = 10;
 PImage trexImage;


 int x;
 int y;
 int vx;
 int vy;
 int maxHP = 1000;
 int moveHP = -1;
 int HP = 10;
 
 
 
 int upKey;
 int downKey;
 int leftKey;
 int rightKey;
 
Trex(int _upKey, int _downKey, int _leftKey, int _rightKey){
  x = width/2;
  y = height/2;
  vx = 0;
  vy = 0;
  
  //assigns variables value to the parameter values
  upKey = _upKey;
  downKey = _downKey;
  leftKey = _leftKey;
  rightKey = _rightKey;
  trexImage = loadImage("trex_3.png");
}

void display() {
    imageMode(CENTER);
    image(trexImage, x, y);
  }
  
void update() {
    // Update position with velocity (to move trex)
    x += vx;
    y += vy;

    
    // hp display
    text(HP, width-100,50);

    
    y = constrain(y,0,height - 15);
    x = constrain(x,0,width - 15);
    
    HP = constrain(HP,0,maxHP);
    
    //added game over message
    if (HP == 0) {
     
      text("Game over muahahaha!", width/2,height/3 - 40);
      vx = 0;
      vy = 0;
      SPEED=0;
    }
}

//test
//adds movement to the trex by pressing h, n, b, m keys
void keyPressed() {
    // Check if the key is our up key
    if (keyCode == upKey) {
      // If so we want a negative y velocity
      vy = -SPEED;
      HP += moveHP;
    } // Otherwise check if the key is our down key 
    else if (keyCode == downKey) {
      // If so we want a positive y velocity
      vy = SPEED;
      HP += moveHP;
    }
     // Check if the key is our left key
    else if (keyCode == leftKey) {
      // If so we want a negative y velocity
      vx = -SPEED;
      HP += moveHP;
    } // Otherwise check if the key is our down key 
    else if (keyCode == rightKey) {
      // If so we want a positive y velocity
      vx = SPEED;
      HP += moveHP;
    }
  }
  //stops movement of trex when keys are released
  void keyReleased() {
    // Check if the key is our up key and the paddle is moving up
    if (keyCode == upKey && vy < 0) {
      // If so it should stop
      vy = 0;
    } // Otherwise check if the key is our down key and trex is moving down 
    else if (keyCode == downKey && vy > 0) {
      // If so it should stop
      vy = 0;
    }
     else if (keyCode == leftKey && vx < 0) {
      // If so it should stop
      vx = 0;
    }
     else if (keyCode == rightKey && vx > 0) {
      // If so it should stop
      vx = 0;
    }
  }
}