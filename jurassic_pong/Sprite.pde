class Sprite {
  final PImage img;
  int x, y;
 
  Sprite(PImage pic, int px, int py) {
    img = pic;
    x = px;
    y = py;
  }
  
  void display() {
    image(img, x, y);
  }
 
  boolean isIntersecting(final Sprite s) {
    return
      x + img.width  > s.x && x < s.x + s.img.width &&
      y + img.height > s.y && y < s.y + s.img.height;
  }
  
}