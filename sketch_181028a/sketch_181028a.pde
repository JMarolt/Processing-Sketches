int rainy = 1;
int bucketx = 325;
int buckety = 650;
int bucketsizex = 50, bucketsizey = 50;
int rand = (int) random(700); 
int score = 0;
void setup() {

  size(700, 700);
  
}


void draw() {

  
  int screen_height = 700, screen_width = 700;
 


  background(0, 0, 0);
  fill(255, 255, 255);
  textSize(16);
  text("Score: " + score, 20, 20);
  

  fill(0, 0, 255);
  ellipse(rand, rainy, 10, 10);
  
  
 // code for red lines
 /*
  int randy = (int) random(700);
  for (int i = 0; i < 1; i++) {
    

      fill(255, 0, 0);
      ellipse(randy, rainy, 10, 10);
*/
  //code for red lines

      if(rand > bucketx && rand < bucketx + 50 && rainy > buckety) {
       score++;
        rainy = 0;

      }if(rainy > screen_height && rand >= 350){
        score--;
        rainy = 0;
 
      }
      if(rainy > screen_height && rand <= 300){
       score--;
       rainy = 0;
      
      }
    if(score >= 10){
     rainy += 8; 
    }
    
  rainy+=5;




fill(255, 255, 255);
 rect(bucketx, buckety, bucketsizex, bucketsizey);


if(score == 0 && rainy > screen_height && rand >= 350){
 score++; 
}
if(score == 0 && rainy > screen_height && rand <= 300){
 score++; 
}
    }
 

    


void keyPressed(){
  
  if(keyCode == RIGHT){
    bucketx+=10;
  }
   if(keyCode == LEFT){
    bucketx-=10;
  }
}