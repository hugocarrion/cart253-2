//create fallout class
class Fallout extends Sprite{
int vy;
int falloutY;

 //constructor
  Fallout(PImage img, int x, int y, int vel) {
     super(img, x, y);
    vy= vel;
  }
 
 //updates fallout
  void update() {
    if ((y += vy  ) > height) {
      y = -img.height;
      x = (int) random(width - img.width);
    }
  }
  
  //method that controls fallout velocity
  void changeVy(int newVy){
    vy = newVy;
  }
  

}