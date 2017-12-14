//class extends super class sprite
class Dino extends Sprite{
  int vy;
 //constructor 
  Dino(PImage img, int x, int y, int vel) {
    super(img, x, y);
    vy= vel;
  }
 //updates dino 
  void update() {
    if ((y += vy  ) > height) {
      y = -img.height;
      x = (int) random(width - img.width);
    }
  }
  //method that changes the speed of dino
  void changeVy(int newVy){
  
   vy = newVy;
  }
    
  }