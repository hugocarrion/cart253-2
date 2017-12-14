class Trex extends Sprite{
  
int spd;
int dir;
 
  Trex(PImage img, int x, int y, int vel) {
    super(img, x, y);
    spd = vel;
  }
 
  void update() {
    x = constrain(x + spd*dir, 0, width - img.width);
  }
 
  void move(final int k, final int mov) {
    if (k == LEFT)  dir = -mov;
    else if (k == RIGHT)  dir = mov;
  }
  

}