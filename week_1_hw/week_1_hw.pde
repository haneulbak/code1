// build a tall house

 float x;
 float y;
 float houseWidth;
 float houseHeight;

void setup() {
  size(500, 700); 
  background(255);
  
  x = width*.5;
  y = height*.5;
  
  println("x pos of house:",x,"y pos of house:",y);
  
}

void draw() {
  
  houseWidth = 200;
  houseHeight = 500;
  
  // i draw the body of the house at the center of the canvas
  // i set the house brown
  rectMode(CENTER);
  fill(133,0,0);
  noStroke();
  rect(x, y, houseWidth, houseHeight);
   
  // i draw the roof of the house on top of the body
  // i set the roof yellow
  fill(255, 204, 0);
  noStroke();
  triangle(x-houseWidth*.5, 100, 350, 100, 250, 50);
  println(x-houseWidth*.5);
  
  // i draw a door on the body of the house
  // i set the door black
  fill(0);
  stroke(255); 
  rect(x, y+200, 50, 100);
  
}
