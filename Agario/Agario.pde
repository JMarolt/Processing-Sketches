int rand0 = (int) random(255); 
int rand1 = (int) random(255); 
int rand2 = (int) random(255); 
int pSpeed = 5;
int psize = 250;
int size = 200;
int px = 950;
int py = 500;
int x = (int) random(4000);
int y = (int) random(4000);
int[] xarr = new int[100];
int[] yarr = new int[100];
int spawn = 0;

void setup(){
 size(4000, 4000);
 background(255,255,255);
}

void draw(){

 background(255,255,255);

//how do you create a bunch of circles


  
  fill(255,0,0);
  ellipse(px, py, psize, psize);
  
  if((px <= x + 50 && px >= x - 50) && (py <= y + 50 && py >= y - 50)){
    psize+=50;
    size = 0;
  }
  
  
}

void keyPressed(){
  if(keyCode == UP){
   y += 10; 
  }
   if(keyCode == DOWN){
   y -= 10; 
  }
   if(keyCode == RIGHT){
   x -= 10; 
  }
  if(keyCode == LEFT){
   x += 10; 
  }
}