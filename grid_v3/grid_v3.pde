float x = 0;
float y = 0;
float spacing = 20;
void setup() {
  size(400, 300);
  //background(0);
}

void draw() {
  background(0);
  delay(60);
  spacing = spacing + random(-2, 2) ;
  stroke(255);
  strokeWeight(2);
  while ( x < width) {
    x = x + spacing;
    line(x, 0, x, height);
  }
  while ( y < height) {
    y = y + spacing;
    stroke(255);
    strokeWeight(2);
    line(0, y, width, y);
  }
}
