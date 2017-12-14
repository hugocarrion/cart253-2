//create fallout class
class Fallout extends Sprite{
int vy;
int falloutY;
 
  Fallout(PImage img, int x, int y, int vel) {
     super(img, x, y);
    vy= vel;
  }
 
  void update() {
    if ((y += vy  ) > height) {
      y = -img.height;
      x = (int) random(width - img.width);
    }
  }
  
  void changeVy(int newVy){
    vy = newVy;
  }
  

}