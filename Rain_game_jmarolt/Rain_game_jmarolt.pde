void setup(){
 

  size(700,700);
  
  
  
  
  
}


void draw(){
  int y = 0;
  int i = 0;
  int bucketx = 325;
  int buckety = 650;
  int bucketsizex = 50;
    int bucketsizey = 50;

  int screen_height = 700;
    int screen_width = 700;
    
  background(0,0,0);
  //int rand = (int) random(700);
 for(i = 0; i < 1400; i+= 2){
 fill(0,150,255);
  stroke(0,150,255);
 ellipse(200,y,10,10);
 y += 2;
 }
  
 
  
 
 
 
   
 
 fill(200,200,200);
 
 rect(bucketx,buckety,bucketsizex,bucketsizey);
  
 
 
}
