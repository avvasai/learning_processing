boolean going = false;
float spacing = 11 ;
void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  if (going) {
    for ( float i = 0; i < width; i = i + spacing) {
      for ( float j = 0; j < height; j = j + spacing) {
        if ((i+j) % 2 == 1) {
          stroke(0);
          fill(0);
          square(i, j, 60);
        } else if((i+j) % 2 == 0) {
          stroke(255);
          fill(255);
          square(i, j, 60);
        }
      }
    }
  }
}


void mousePressed() {
  going = !going;
}
