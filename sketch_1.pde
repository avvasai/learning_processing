void setup()
{
  size(640, 320);
  background(50);
}
void draw()
{
  
  fill(150);
  stroke(255);
  //rectMode(CENTER);
  //rect(mouseX, mouseY, 100, 50);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
void mousePressed()
{
  background(50);
}

void keyPressed()
{
  background(0,50,230);
}
