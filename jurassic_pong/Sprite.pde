class Sprite {
  final PImage img;
  int x;
  int y;
 //constructor 
  Sprite(PImage pic, int px, int py) {
    img = pic;
    x = px;
    y = py;
  }
  //displays image 
  void display() {
    image(img, x, y);
  }
 //checks if image is already intersecting
  boolean isIntersecting(final Sprite s) {
    return
      x + img.width  > s.x && x < s.x + s.img.width &&
      y + img.height > s.y && y < s.y + s.img.height;
  }
  
}