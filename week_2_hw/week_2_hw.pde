// build a tall house
// i declare the variables to be used for the house

float x;
float y;

float houseWidth;
float houseHeight;

float scaler ;

color paint;

void setup() {
  size(500, 700); 

  // i set the values of the declared variables
  x = 0;
  y = 0;
  houseWidth = 500;
  houseHeight = 500;

  scaler = 0.4;
  paint = color(255, 204, 0);
  println("x pos of house:", x, "y pos of house:", y);
}

void draw() {


  background(255);

  // i move the pivot of all the rectangles at the center
  rectMode(CENTER);
  // i move the coordinates of the canvas to the center
  translate(width*.5, height*.5);
  scale(scaler);
  rotate(radians(11));


  // i set the size and position of the body of the house
  fill(133, 0, 0);
  noStroke();
  rect(x, y, houseWidth, houseHeight);

  // i parent the position and scale of roof to the body of the house
  fill(paint);
  noStroke();
  triangle(x+(-houseWidth*.5), y+(-houseHeight*.5), x+(houseWidth*.5), y+(-houseHeight*.5), 
    x+(-houseWidth/houseWidth), y+(-houseHeight*.8));

  // i parent the position and scale of the door to the body of the house
  fill(0);
  stroke(255); 
  rect(x+(-houseWidth/houseWidth), y+houseHeight*.5-50, houseWidth*.25, 100);
}

void mousePressed() {

  // i change the color of the roof when mouse is clicked
  if (paint == color( 255, 204, 0)) {
    paint = 0;
  } else {
    paint = color( 255, 204, 0);
  }
}

void keyPressed() {

  // i change the size of the house when keyboard is pressed
  if (key == CODED) {
    if (keyCode == UP) {
      //scaler = scaler + 0.1
      scaler+=0.1;
    } else if (keyCode == DOWN) {
      scaler-=0.1;
    }
  }
}
