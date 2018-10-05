int xPos, yPos;
int circleSize;
int distance;
float x = 100;
float y = 200;
color circleColor, bgColor;
boolean circlePressed;

void setup(){
  size(500, 500);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  
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
  
  float a = mouseX + random(-5,5);
  float b = mouseY + random(-0.1,0.1);
  x = lerp(x, a, 0.03);
  y = lerp(y, b, 0.03);
  
  noStroke();
  fill(255, 204, 0);
  ellipse(a, b, 66, 66);
  
  fill(175, 100, 220);
  ellipse(x, y, 65, 65);
  
   for(int i = 0; i<=60; i++){
    ellipse(i*10, height*.25, 10, 10);
  }
  
  for(int i = 0; i<=width; i+=10){
    ellipse(i, height*.75, 10, 10);
}

  String s = "wink";
  fill(255, 20, 20);
  text(s, 100, 255);
  textSize(20);

}

void mousePressed(){
 x = mouseX;
 y = mouseY;
  if(distance<circleSize/2){
    circlePressed = !circlePressed;
  }
}
