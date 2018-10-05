//Creating a space scene 
//make stars in background, floating stars and planets
int width = 600;
int height = 600;
float theta = 0;


void setup() {
   size(600, 600);
     stroke(0);
}

void draw() {
   background(400);
   
  fill(255);
  ellipse(random(width), random(height), 3, 3);
  
 fill(255, 200, 50);
  
  //the sun outer edge
   pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 400.0);
  star(0, 0, 80, 100, 40); 
  popMatrix();
  
   //star
   pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 1, 30, 50, 5); 
  popMatrix();
  
  //star2
   pushMatrix();
  translate(width*0.1, height*0.3);
  rotate(frameCount / -100.0);
  star(0, 1, 30, 50, 5); 
  popMatrix();
  
  //star3
   pushMatrix();
  translate(width*0.2, height*0.7);
  rotate(frameCount / -100.0);
  star(0, 1, 30, 50, 5); 
  popMatrix();
  
  //inner circle of sun
  translate(width/2, height/2);
  fill(204, 100, 0);
  ellipse(0, 0, 64, 64);
  
  
  //the earth
   pushMatrix();
  rotate(theta);
  translate(100, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 35, 35);
  
  //moon1
   pushMatrix(); 
  rotate(-theta*4);
  translate(36, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 12, 12);
  popMatrix();
 
 //moon2
  pushMatrix();
  rotate(theta*2);
  translate(24, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();

  theta += 0.01;
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
