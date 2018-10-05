float x, y;
int size = 100;
float xSpeed, ySpeed;

void setup(){
  background(0);
  size(500, 500);
  xSpeed = int(random(1,4));
  ySpeed = 5;
  x = width/2;
  y = height/2;
}

void draw(){
  ellipse(x, y, size, size);
  if(x>width || x<0){
    xSpeed = xSpeed*-1;
  }
  x = x+xSpeed;
}
