int circleSize, ballSize, buttonSize;
int xPos, yPos, cPos, dPos;
int distance, ballDist, buttonDist;
int speed;
float aPos, bPos;
color circleColor, ballColor, buttonColor, bgColor;
boolean circlePressed, buttonPressed;

void setup() {
  
  size(500, 500);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
  
  aPos = width/5;
  bPos = height/5;
  
  ballSize = 40;
  
  speed = int(random(10,10));
  
  cPos = 400;
  dPos = 100;
  
  buttonSize = 30;
  
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
  
  // moving ball on the left of circle
  fill(200);
  ellipse(aPos, bPos, ballSize, ballSize);
  noStroke();
  // ellipse moves up and down on y axis
  if(bPos>height || bPos<0){
    speed = speed*-1;
  }
  bPos = bPos+speed;
    
  ballDist = int(dist(aPos, bPos, mouseX, mouseY));
  
  // button changes to red when mouse is on it
  if(buttonDist<buttonSize/2 && mousePressed) {
    if(aPos>width||aPos<0){
      speed = speed*-1;
    aPos = aPos+speed;
  }else{
    bPos = bPos+speed;
    
  // button for ball on the upper right canvas
  fill(255, 204, 0);
  ellipse(cPos, dPos, buttonSize, buttonSize);
  noStroke();
  }
}
}

void mousePressed(){
  if(distance<circleSize/2){
    circlePressed = !circlePressed;
  }
  if(buttonDist<buttonSize/2){
    buttonPressed = !buttonPressed;

  }
}
