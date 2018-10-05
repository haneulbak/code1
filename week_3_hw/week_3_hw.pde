int circleSize, ellipseSize;
int xPos, yPos, aPos, bPos;
color circleColor, ellipseColor, bgColor;

boolean isCirclePressed;

int distance;

void setup() {
  
  size(500, 500);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
  
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
  
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  noStroke();
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  println(distance);
}

void mousePressed(){
  if(distance<circleSize/2){
    isCirclePressed = !isCirclePressed;
  }
}
