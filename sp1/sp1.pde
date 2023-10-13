Ball ball;
Paddle left;
Paddle right;

void setup() {
  size(600, 600);
  ball =new Ball();
  left =new Paddle(0);
  right =new Paddle(width);
}

void draw() {
  background(0);
ball.checkPaddleRight(right);
ball.checkPaddleLeft(left);


  left.show();
  left.update();
  right.show();
  right.update();
  
  ball.speedupdate();
  ball.walls();
  ball.showBall();
}
void keyReleased(){
left.move(0);
right.move(0);
}

void keyPressed() {
  if (key=='w') {
    left.move(-10);
  } else if (key=='s') {
    left.move(10);
  }
  if (key=='i') {
    right.move(-10);
  } else if (key=='k') {
    right.move(10);
  }
}
