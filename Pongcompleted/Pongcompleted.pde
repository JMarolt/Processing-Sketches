int b_s = 20;
int b_x = 800;
int b_y = 500;
int velox = 6;
int veloy = 6;
int p_x = 1550;
int p_y = 500;
int pwidth = 20;
int pheight = 100;
int peloy = 30;
int c_x = 26;
int c_y = 450;
int cwidth = 20;
int cheight = 100;
int celoy = 30;
int cscore = 0;
int pscore = 0;
int rand0 = (int) random(255); 
int rand1 = (int) random(255); 
int rand2 = (int) random(255); 
int rand3 = (int) random(255); 
int rand4 = (int) random(255); 
int rand5 = (int) random(255); 



void setup(){
size(1600,1000);
background(0,0,0);

}
void draw(){
background(rand0, rand1, rand2);

  fill(255, 255, 255);
  textSize(16);
  text("Score: " + cscore, 20, 20);
  textSize(16);
  text("Score: " + pscore, 1515, 20);

  fill(rand3,rand4,rand5);
  rect(p_x,p_y,pwidth,pheight);
  rect(c_x,c_y,cwidth,cheight);
   for(int i = 0; i < 1000; i+= 50){
     fill(255,255,255);
     rect(805,i,10,20);
   }
  fill(rand3,rand0,rand5);
  stroke(0,0,0);
  rect(b_x,b_y,b_s,b_s);
b_x+=velox;
b_y+=veloy;


if(b_y == 986){
  veloy = -6;
}


if(b_y == 2){
 veloy = 6; 
}
if(b_x == 38){
 velox = 6; 
}

if(c_y == 960){
  celoy = -6;
}
if(c_y == 0){
 celoy = 6; 
}
c_y = b_y;


if(b_x == -4){
 fill(255, 0, 255);
  textSize(16);
  text("Hacker!", 800, 20);
  pscore+=1;
 b_x = 800;
 b_y = 500;
}
if(b_x == 1604){
 cscore+=1;
 b_x = 800;
 b_y = 500;
}
if(b_x == p_x && (b_y < p_y + 50 && b_y > p_y - 50)){
  velox = -6;
}
if(b_x == c_x && (b_y < c_y + 50 && b_y > c_y - 50)){
  velox = -6;
}
 }
 
void keyPressed(){
  
    fill(255, 255, 255);
 
 
  if(keyCode == UP){
    p_y-=peloy;
  }
   if(keyCode == DOWN){
    p_y+=peloy;
  }
   if(key == 'w'){
    c_y-=celoy;
  }
   if(key == 's'){
    c_y+=celoy;
  }
}
