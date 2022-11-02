PImage img; 

void setup() {
  size(400, 400);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("myQR.png");
}
void mousePressed() { 
link("https://github.com/MariaSiafali117");
}
void draw() {
  background(0);
  // The image() function displays the image at a location
  // in this case the point (0,0).
  image(img, 0, 0, width, height);
}
