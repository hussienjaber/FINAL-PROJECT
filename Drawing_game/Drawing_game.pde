import processing.sound.*;
color lightBlue = #3BFCFB, yellow = #FAFF03;
color boarder = yellow, inside = #FAFF03;
int totalSongs= 2;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;
PImage[] pic = new PImage[1]; //Array; .length is "1"
color white=#FFFFFF;
color red=#F70202;
color green=#03FF1D;
color blue=#1603FF;
color black=#0F020F;
int lcolor =black;



void setup () {
  size(600, 600);
   
 pic[0] = loadImage("picture.jpg");
  image(pic[0], 0,0 , 600, 600);   

  song[0] = new SoundFile (this, "NAV - Wanted You feat. Lil Uzi Vert (Official Audio).mp3");
song[0] .play();
 
 fill(red);
 rect(10,550,50,50);
 fill(green);
  rect(90,550,50,50);
  fill(blue);
  rect(170,550,50,50);
  fill(black);
  rect(250,550,50,50);
 
 
 
 
 }



void draw (){
  fill(boarder);
  rect(500, 550, 100, 50);
  fill(inside);

  if (mouseX > 500 && mouseX < 600 && mouseY > 550 && mouseY < 600) {
    boarder = lightBlue;
    inside = lightBlue;
  } else {
    boarder = lightBlue;
    inside = lightBlue;
  } // End of IF for Hovering Effect
}

void mousePressed () {
  if (mouseX>=500 && mouseX <=600 && mouseY>=550 && mouseY<=600) {
    exit ();
  } //End of Exit() QuitButton
  stroke(lcolor);
   strokeWeight(11);
 println ("Mouse X Variaable is " + mouseX);
  println ("Mouse X Variaable is " + mouseY);
  strokeWeight(random (11));
stroke(1);

  if (mouseX>=10 && mouseX <=60 && mouseY>=250 && mouseY<=600) {
    lcolor=red;
    
    
  }
    if (mouseX>=90 && mouseX <=140 && mouseY>=250 && mouseY<=600) {
    lcolor=green;
    
    
  }
   if (mouseX>=170 && mouseX <=240 && mouseY>=250 && mouseY<=600) {
    lcolor=blue;
    
    
  }


   if (mouseX>=250 && mouseX <=320 && mouseY>=250 && mouseY<=600) {
    lcolor=black; 
   }
}
   
    





void mouseDragged() {
  stroke(lcolor);
 strokeWeight(11);
 line(mouseX, mouseY, pmouseX, pmouseY);
 strokeWeight(1);
  
}