int x_axis = 0;
int y_axis = 0;
int spacing = 20;
int endx = 0 ;
int endy = 0 ;
void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  println(x_axis);
  while ( !(x_axis >= endx)) {
    x_axis = x_axis + spacing;
    stroke(255);
    line(x_axis, 0, x_axis, height);
  }
  endx = endx + 1 ;
  while ( !(y_axis >= endy)) {
    y_axis = y_axis + spacing;
    stroke(255);
    line(0, y_axis, width, y_axis);
  }
  endy = endy + 1 ;

}
