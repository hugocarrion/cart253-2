class Trex extends Sprite{
  
int vx;
int dir;
int HP = 50; 
 
  Trex(PImage img, int x, int y, int vel) {
    super(img, x, y);
    vx = vel;
  }
 
  void update() {
    x = constrain(x + vx*dir, 0, width - img.width);
  }
 
  void move(final int k, final int mov) {
    if (k == LEFT){ 
      dir = -mov;
    }
    else if (k == RIGHT) {
      dir = mov;
      
    }  
  }
 
}