PImage Right1;
PImage Right2;
PImage Left1;
PImage Left2;
PFont Font;

int i=0;
int j=1;
int xPos=400;
int yPos;

void setup(){
  frameRate(60);
  size(800,600);
  background(255);
  
  Right1=loadImage("R01.jpg");
  Right2=loadImage("R02.jpg");
  Left1=loadImage("L01.jpg");
  Left2=loadImage("L02.jpg");
  Font=loadFont("NanumBrush-100.vlw");
  textFont(Font,200);
}


void draw(){
  imageMode(CENTER);
  yPos=(height/2)+50;
   
  //At the Right Side
  if(keyPressed){
    if(width-xPos<=400){
      if(key=='d' || key=='D'){
        if(xPos%2==0){
          image(Right2,xPos,yPos);
          //print("a");
          xPos+=3;
        }
        if(xPos%2==1){
          image(Right1,xPos,yPos);
          //print("b");
          xPos+=3;
        }
      }
      if(key=='a' || key=='A'){
        if(xPos%2==0){
          image(Left1,xPos,yPos);
          //print("c");
          xPos-=3;
        }
        if(xPos%2==1){
          image(Left2,xPos,yPos);
          //print("d");
          xPos-=3;
        }
      }   
    }
    
    //At the Left Side
    if(width-xPos>=400){
      if(key=='d' || key=='D'){
        if(xPos%2==0){
          image(Right1,xPos,yPos);
          //print("a");
          xPos+=3;
        }
        if(xPos%2==1){
          image(Right2,xPos,yPos);
          //print("b");
          xPos+=3;
        }
      }
      if(key=='a' || key=='A'){
        if(xPos%2==0){
          image(Left2,xPos,yPos);
          //print("c");
          xPos-=3;
        }
        if(xPos%2==1){
          image(Left1,xPos,yPos);
          //print("d");
          xPos-=3;
        }
      }
    }
    
    //Banana Icon
    if(key=='d' || key=='D' || key=='a' || key=='A'){
      text("BANANA!",100,175);
      fill(random(0,255),random(0,255),random(0,255));
    }
    
    //Save Frames
    if(key=='p' || key=='P'){
      saveFrame();
    }
  }
}

