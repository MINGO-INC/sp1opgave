
class Ball {

  float  x=width/2;
  float  y=width/2;
  float xspeed=1;
  float yspeed;
  float r=12;

  Ball() {
    resetBall();
  }

  void checkPaddleLeft(Paddle p) {
    if (y< p.y + p.h/2 && y > p.y - p.h/2 && x - r<p.x + p.w/2 ) {
      xspeed*=-1;
    }
  }
  void checkPaddleRight(Paddle p) {
    if (y< p.y + p.h/2 && y > p.y - p.h/2 && x + r > p.x-p.w/2 ) {
      xspeed*=-1;
    }
  }

  void resetBall() {
    x=width/2;
    y=height/2;
    float angle=random(TWO_PI);
    xspeed=5*cos(angle);
    yspeed=5*sin(angle);
  }
  void speedupdate() {
    x+=xspeed;
    y+=yspeed;
  }
  void walls() {
    if (y<0||y>height) {
      yspeed*=-1;
    }
    if (x>width) {
      resetBall();
    }
    if (x<0) {
      resetBall();
    }
  }
  void showBall() {
    fill(255);
    ellipse(x, y, r*2, r*2);
  }
}
