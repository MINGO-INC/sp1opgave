
class Paddle {
  float x;
  float y=height/2;
  float h=90;
  float w=25;
  float ychange=0;
  
  Paddle(float x) {
    this.x=x;
  }
  
  
  void update(){
  y+=ychange;
  y=constrain(y,h/2,height-h/2);
    
  }
  
  void move(float steps){
  ychange=steps;
  }
  void show(){
  fill(255);
  rectMode(CENTER);
  rect(x,y,w,h);
  }
  
}
