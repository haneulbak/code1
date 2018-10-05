int bgColor = 166;
int facePosition = width*.5;

void setup() {
  
  size(700, 700); 
  background(bgColor);

}

void draw() {
  
  fill(0, 0, 150);
  triangle(250, 125, 66, 96, 86, 300);
  fill(100, 10, 100);
  rect(500, 140, 50, 400);
  fill(300, 0, 0);
  ellipse(facePosition, facePosition, 320, 300);
  
  noStroke(); 
  
}
