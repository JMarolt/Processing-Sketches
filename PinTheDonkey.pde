PImage donkey;
PImage tail;


void setup(){
  
size(2088,1666);
   donkey = loadImage("DonkeyPicture.jpg");
 
  
  
  tail = loadImage("donkey tail.png");
  
  
  
}
void draw(){
   background(donkey);
   image(tail, mouseX, mouseY);
 rect(0,0,100,100);
if(mouseX > 100){
  fill(0,0,0);
  rect(0, 0, 2088,1666);
if(mouseY > 100){
      fill(0,0,0);
 rect(0, 0, 2088, 1666);
  
  }
  
}
  if(mousePressed){
    //x = 345  y = 739
println(mouseX);
println(mouseY);
  }

  }