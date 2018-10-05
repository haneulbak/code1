int value = 0;

void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  pushMatrix();
  println(mouseX);
  println(mouseY);
  translate(width*.5, height*.5);
  fill(255);
  rect(width*.25, height*.25, 100, 100);
  popMatrix();
  
  pushMatrix();
  fill(77);
  rotate(radians(99));
  ellipse(100, 100, 50, 50);
  rect(width*.25, height*.25, 100, 100);
  popMatrix();

}

// Move the mouse across the image
// to change its value


  fill(value);
  rect(25, 25, 50, 50);
}

void draw() {
  if (keypressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}
