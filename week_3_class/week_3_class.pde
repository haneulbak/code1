int circleSize;
int xPos, yPos;
color circleColor, bgColor;

boolean isCirclePressed;

int distance;

void setup() {
  
  size(500, 500);
  bgColor = color(255, 20, 20);
  background(bgColor);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
  
}
  
void draw() {
    
  background(bgColor);
  if(distance<circleSize/2) {
    circleColor = color(255, 70, 15);
  }else{
    circleColor = color(255, 25, 255);
  }
    
  if(distance<circleSize/2 && mousePressed) {
    bgColor = 255;
  }else{
    bgColor = 22;
  }
  
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));

}

void mousePressed(){
  if(distance<circleSize/2){
    isCirclePressed = !isCirclePressed;
  }
}
//    bgColor = 255;
//  }else{
//    bgColor = 150;
//  }
  
//}
