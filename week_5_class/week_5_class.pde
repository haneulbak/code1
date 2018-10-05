void setup(){
  size(600, 600); 
}

void draw(){
  background(255);
  for(int i = 0; i<=60; i++){
    ellipse(i*10, height/9, 10, 10);
  }
  
  for(int i = 0; i<=width; i+=10){
    ellipse(i, height/7, 10, 10);
  }
  
  int size = 60;
  for(int i = 0; i<=width; i+=size){
    ellipse(i, height/4, size, size);
  }
    
  // if you want to vary the size of your shape
  int size2 = 100;
  for(int i = 0; i<=width; i+=size2){
    int c = int(map(i, 0, width, 0, 255));
    fill(60, c, c);
   ellipse(i, height/1.5, size, size);
  }
  
}
