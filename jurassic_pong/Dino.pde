class Dino extends Sprite{
  int vy;
 
  Dino(PImage img, int x, int y, int vel) {
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