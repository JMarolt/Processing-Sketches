PImage creeper;  
int x = 600;
int y = 600;

void setup() {
  size(1000,1000);
  PImage forest = loadImage("forest.jpg"); 
  forest.resize(1000,1000);
  background(forest);
  
  creeper=loadImage("creeper.png");
  creeper.resize(9,9);
  noStroke();
    PImage heart = loadImage("heart.jpg"); 
    image(heart, 450, 900);
}

void draw(){
  image(creeper, x, y);
  if(mousePressed){
    fill(255,0,0,40);
    ellipse(mouseX,mouseY,15,15);
    
  }
  if(mouseX < 50 && mouseY < 50 && mousePressed){
    fill(0,255,0,40);
    ellipse(mouseX,mouseY,15,15);
  }
  if(abs(x-mouseX) + abs(y-mouseY) < 40 && mousePressed){
    fill(0,255,0,40);
    ellipse(mouseX,mouseY,15,15);
  }
  
  if(abs(x-mouseX) + abs(y-mouseY) < 5 && mousePressed){
    textSize(40);
    text("Boom!", 500, 500);
    x = 361;
    y = 253;
  }
}