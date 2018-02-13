
void setup() {

  size(600, 600);
}
void draw() {
if(mousePressed )
  println(mouseX + "," + mouseY);


if(mouseX < 199){

}

if(mouseY < 182){
  
}

if(mouseX > 232){
  
}

if(mouseY > 218){
  
}




  fill(255, 255, 255);
  ellipse(400, 200, 100, 75);


  fill(255, 255, 255);
  ellipse(200, 200, 100, 75);


  fill(0, 0, 0);
  
 ellipse(mouseX, mouseY, 40, 40);
  ellipse(mouseX + 200, mouseY + 0, 40, 40);
}
}