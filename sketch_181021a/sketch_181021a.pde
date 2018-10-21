int rainy = 0;
int bucketx = 325;
int buckety = 650;
int bucketsizex = 50, bucketsizey = 50;
int rand = (int) random(700); 

void setup() {

  size(700, 700);
  
}


void draw() {
  int bucketx = 325, buckety = 650;
  int bucketsizex = 50, bucketsizey = 50;
  int screen_height = 700, screen_width = 700;
  int score = 0;

  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
  background(0, 0, 0);

  int randy = (int) random(700); 

  fill(0, 0, 255);
  ellipse(rand, rainy, 10, 10);
  for (int i = 0; i < 1; i++) {
    for (int q = 0; q < 700; q++) {

      fill(0, 0, 255);
      ellipse(randy, q, 10, 10);

      if (rainy > buckety && rand >= bucketx - 25 || rand <= bucketx + 25) {
        score++;
        rainy = 0;
      }else if(rand >= bucketx + 25 || rand <= bucketx - 25 && rainy > screen_height - 5){
        score--;
        rainy = 0;
      }
    }
  }
  rainy+=5;














}
void keyPressed(){
  
    fill(255, 255, 255);
 rect(bucketx, buckety, bucketsizex, bucketsizey);
 
  if(keyCode == RIGHT){
    bucketx+=10;
  }
   if(keyCode == LEFT){
    bucketx-=10;
  }
}