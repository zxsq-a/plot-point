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
  size(640, 360);
  img = loadImage("moonwalk.jpg");
  smallPoint = 4;
  largePoint = 10;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void run(int x, int y) { 
  //float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  float pointillize = random(smallPoint, largePoint);
  //int x = int(random(img.width));
  //int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}

void draw() {
  for(int x=0; x<width; x=x+(int(random(x,x*1.5)))){
    for(int y=0; y<height; y=y+(int(random(y,y*1.5)))){
  run(x, y);
    }
  }
}