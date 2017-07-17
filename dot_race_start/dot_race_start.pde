//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int xcoordinate = 0;
int x2coordinate = 0;


void setup() {
  size(1200, 400);
}

void draw() {
  background(255);
  //3. make it a nice color
 fill(0,255,0);
  //4. if the mouse is pressed...
     if(mousePressed){
//5. ... change the X co-ordinate so that the dot moves to the right
     xcoordinate = xcoordinate+5;
     x2coordinate = x2coordinate+4;
   }
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
 rect(200,250,20,50);
  rect(225,320,20,50);
   rect(250,220,20,50);
    rect(275,250,20,50);
     rect(300,290,20,50);
      rect(330,250,20,50);
      rect(350,290,20,50);
  rect(375,320,20,50);
   rect(380,220,20,50);
    rect(430,330,20,50);
     rect(405,290,20,50);
      rect(430,250,20,50);
      rect(490,350,20,50);
fill(0,0,0);
rect(700,100,50,100);
rect(650,0,50,100);
fill(230,230,230);
rect(700,0,50,100);
rect(650,100,50,100);
fill(0,250,250);
ellipse(xcoordinate,40,80,80);
fill(255,0,0);
rect(x2coordinate,120,80,80);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 


}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("ding2.wav");
    sound.trigger();
    soundPlayed = true;
  }
}



