import processing.video.*;
Movie myMovie;

void setup() {
  size(1280, 720);
  frameRate(60);
  myMovie = new Movie(this, "sunset.mp4");
  myMovie.speed(10.0);
  myMovie.loop();
}

void draw() {
  float r = map(mouseX,0,width,0,4);
  myMovie.speed(r);
  if (myMovie.available()) {
    myMovie.read();
  }
  image(myMovie, 0, 0);
}
