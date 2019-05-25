float spacing = 10;
boolean going = false;
void setup() {
  size(360, 360);
  background(0);
}

void draw() {
  if (going) {
    for ( float i = 0; i < width; i = i + spacing) {
      for ( float j = 0; j < height; j = j + spacing) {
        stroke(255);
        fill(random(0, 255));
        square(i, j, 40);
      }
    }
  }
}

void mousePressed() {
  going = !going;
}
