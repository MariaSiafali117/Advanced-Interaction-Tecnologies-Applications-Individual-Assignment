 
 PImage img;
import qrcodeprocessing.*;

Decoder decoder;


void setup() {
  size(400, 400);
  // Make a new instance of a PImage by loading an image file
  img  = loadImage("qr-code.png");
  decoder = new Decoder(this);
  decoder.decodeImage(img);
}

void decoderEvent(Decoder decoder) {
  String statusMsg = decoder.getDecodedString(); 
  println(statusMsg);
  link(statusMsg);
}

void draw() {
  background(0);
  
  // The image() function displays the image at a location
  // in this case the point (0,0).
  image(img, 0, 0, width, height);
}
