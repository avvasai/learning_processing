boolean going;
ball b;
PImage img;
PImage back;
void setup() {
  img = loadImage("logo2.png");
  back = loadImage("back.jpg");
  b = new ball(img);
  size(displayWidth,displayHeight,P2D);
  
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(back,displayWidth/2,displayHeight/2,displayWidth,displayHeight);
  if (going) {
    b.display();
    b.move();
    b.edge();
  } else {
    b.display();
  }
}

void keyPressed() {
  going =! going;
}

void mousePressed(){
 b = new ball(img, mouseX, mouseY); 
}
