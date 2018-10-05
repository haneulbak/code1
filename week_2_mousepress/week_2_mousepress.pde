//boolean to detect if my mouse is pressed
//if boolean true, want to draw ellipse where mouseX + mouseY

int size;
int x, y;

void setup(){
  size(500, 500);
  size = 10;
  noStroke();
  circleColor = color(random(0,255), random(0,255), random(0,255), random(0,255);
}

void draw(){
  fill(100, 0, 255, 1);
  rect(0, 0, width, height);
  x = mouseX;
  y = mouseY;
 
  //happens continuously
  if(mouseX>0 && mouseX<width/2 && mouseY<0 && mouseY<height/2){
  if(mousePressed){
    fill(255);
    ellipse(x, y, size, size);
  }
  }
}
