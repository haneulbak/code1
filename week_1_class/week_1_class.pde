int bgColor = 255;
float treePosition;
float treeSize;

void setup(){
  //first parameter is width, second is height
  size(1000, 1000);
  background(bgColor);
  treePosition = int(width*random(0,1));
  treeSize = int(width*.35);
  
  println(treePosition);
}

void draw(){
  //ellipse(x position, y position, width, height)
  //fill(100, 0, 0);
  //rect(100, 100, 100, 50);
  //this draws our rectangle from the center
  rectMode(CENTER);
  fill(150, 100, 50);
  rect(treePosition, treePosition + 50, treeSize*.25, treeSize*1.25);
  ellipse(treePosition, treePosition - 200, treeSize*.9, treeSize*.9);
  fill(900, 500, 500);
  
}
