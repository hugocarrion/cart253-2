//class extends super class sprite
class Trex extends Sprite{
  
int vx;
int dir;

 //constructor
  Trex(PImage img, int x, int y, int vel) {
    super(img, x, y);
    vx = vel;
  }
 
 //updates trex
  void update() {
    x = constrain(x + vx*dir, 0, width - img.width);
  }
 
 //method that controls trex movement
  void move(final int k, final int mov) {
    if (k == LEFT){ 
      dir = -mov;
    }
    else if (k == RIGHT) {
      dir = mov;
      
    }  
  }
  
  //method that controls trex velocity
  void changeVel(int newVel){
   vx = newVel;
  }
 
}