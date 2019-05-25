class ball {
  float circleX = random(0, width); 
  float circleY = random(0, height);
  int spaceX = 1;
  int spaceY = 1;
  int speed = 1;
  //going to add an constructor
  ball(PImage temp) {
    img = temp;
  }
  //second constructor for changin the position with the mouse
  ball(PImage temp, float x, float y) {
    img = temp; 
    circleX = x;
    circleY = y;
  }

  void display() {
    if (going) {
      imageMode(CORNER);
      //imageMode(CORNERS);
      image(img, circleX, circleY, 100, 100);
    } else {
      //image(img, width/2, height, 100, 100);
    }
  }
  void move() {
    if (going) {
      circleX = circleX + (spaceX*speed) ;
      circleY = circleY + (spaceY*speed) ;
    } else {
    }
  }
  void edge() {
    if (circleX > width || circleX < 0) {
      spaceX = spaceX * -1;
      if (speed == 1 && speed<15) {
        speed++;
      } else {
        speed--;
      }
    } else if ( circleY > height || circleY < 0) {
      spaceY = spaceY * -1;
      if ( speed == 1 && speed<15) {
        speed++;
      } else {
        speed--;
      }
    }
  }
}
