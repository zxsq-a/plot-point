/**
 * plot-point by zxsq-a
 *
 * based heavily on
 *
 * Pointillism
 * by Daniel Shiffman. 
 * 
 * Mouse horizontal location controls size of dots. 
 * Creates a simple pointillist effect using ellipses colored
 * according to pixels in an image. 
 */

PImage img;
int smallPoint, largePoint;

void setup() {
  size(1120, 700);
  img = loadImage("moonwalk.jpg");
  smallPoint = 4;
  largePoint = 10;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  //float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  float pointillize = random(smallPoint, largePoint); //<>//
  for(int y=1; y<=height; y=y+(int(random(y-largePoint,y+largePoint)))){
    for(int i=0;i<150;i++){
      for(int x=1; x<=width; x=x+(int(random(x-largePoint,x+largePoint)))){
        color pix = img.get(x, y);
        fill(pix, 128);
        ellipse(x, y, pointillize, pointillize);
      }
    }
  }
} //<>//

//void draw() {
//  for(int x=0; x<width; x=x+(int(random(x,x*1.5)))){
//    for(int y=0; y<height; y=y+(int(random(y,y*1.5)))){
//  run(x, y);
//    }
//  }
//}
