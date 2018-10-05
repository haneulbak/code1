int circleSize, ellipseSize, ballSize;
int xPos, yPos;
int distance, ellipseDist;
int speed;
float aPos, bPos;
color circleColor, ellipseColor, bgColor;
boolean CirclePressed, motion;

void setup() {
  
  size(500, 500);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
  
  aPos = width/5;
  bPos = height/5;
  
  ellipseSize = 30;
  
  speed = int(random(10,10));
}
  
void draw() {
    
  // circle changes to blue when mouse is on it
  background(bgColor);
  if(distance<circleSize/2) {
    circleColor = color(0, 126, 255);
  }else{
    circleColor = color(255);
  }
  
  // circle changes background color from black to white when mouse presses it
  if(distance<circleSize/2 && mousePressed) {
    bgColor = 255;
  }else{
    bgColor = 0;
  }
  
  // circle at the center
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  noStroke();
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  println(distance);
  
  // ellipse at the upper left corner
  fill(200);
  ellipse(aPos, bPos, ellipseSize, ellipseSize);
  noStroke();
  // ellipse moves up and down on y axis
  if(bPos>height || bPos<0){
    speed = speed*-1;
  }
  bPos = bPos+speed;
    
  ellipseDist = int(dist(aPos, bPos, mouseX, mouseY));
}

void mousePressed(){
  if(distance<circleSize/2){
    CirclePressed = !CirclePressed;
  }
  
}
