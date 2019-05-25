int circleX = 10;
int circleY = 10;
int spaceX = 1;
int spaceY = 1 ;
boolean going = false ;
void setup() {
  size(640, 360);
}
void draw() {
  background(0);
  fill(255, 0, 0);
  if (circleX > width || circleX < 0) {
    spaceX = spaceX * -1;
  } else if ( circleY > height || circleY < 0) {
    spaceY = spaceY * -1;
  }
  if (going) {
    ellipse(circleX, circleY, 20, 20);
    circleX = circleX + spaceX ;
    circleY = circleY + spaceY ;
  } else {
    ellipse(circleX, circleY, 20, 20);
  }
}

void mousePressed() {
  going = !going;
}

void keyPressed(){
  circleX = mouseX;
  circleY = mouseY;
}
