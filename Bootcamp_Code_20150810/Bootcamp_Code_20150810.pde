int num=5;
int monkeyNum=4;
int frame=0;
int monkeyFrame=0;

PImage posL[]=new PImage[num];
PImage posR[]=new PImage[num];
PImage monkey[]=new PImage[monkeyNum];

int moveX=500;
int moveY=400;
int imgSize=100;
int monkeySize=30;

int flag=0;

String S="Press W-A-S-D";

void setup(){
  size(1000,600);
  frameRate(12);
  imageMode(CENTER);
  textAlign(CENTER);
  
  for(int i=0; i<num; i++){
    posL[i]=loadImage("imgL"+i+".gif");
    posR[i]=loadImage("imgR"+i+".gif");
  }
  
  for(int j=0; j<monkeyNum; j++){
    monkey[j]=loadImage("monkey"+j+".gif");
  }
}

void draw(){
  background(255);
  
  if(flag==0){
    text(S,width/2,height/2+100);
    textSize(24);
    fill(0,0,0);
  }
  else if(flag==1){  
    //MOVEMENT OF BANANA
    if(key=='w' || key=='W'){   
      frame = frame + 1;
      if(frame>=num){
        frame=0;
      }
      image(posL[frame], moveX, moveY);
      moveY-=10;
      drawMonkeyRight(moveX,moveY);
    } 
  
    if(key=='s' || key=='S'){
      frame = frame + 1;
      if(frame>=num){
        frame=0;
      }
      image(posR[frame], moveX, moveY);
      moveY+=10;
      drawMonkeyLeft(moveX,moveY);
    }
  
    if(key=='a' || key=='A'){  
      frame = frame + 1;
      if(frame>=num){
        frame=0;
      }
      image(posL[frame], moveX, moveY);
      moveX-=10;
      drawMonkeyRight(moveX,moveY);
    }
  
    if(key=='d' || key=='D'){
      frame = frame + 1;
      if(frame>=num){
        frame=0;
      }
      image(posR[frame], moveX, moveY);
      moveX+=10;
      drawMonkeyLeft(moveX,moveY);
    }
  }
}

void keyPressed(){
  if(flag==0){
    flag=1;
  }
}

void drawMonkeyLeft(int x, int y){
  monkeyFrame = monkeyFrame + 1;
  
  if(monkeyFrame>=monkeyNum){
    monkeyFrame=0;
  }
  monkey[monkeyFrame].resize(100,100);
  image(monkey[monkeyFrame], x-250, y-30);  
}
void drawMonkeyRight(int x, int y){
  monkeyFrame = monkeyFrame + 1;
  
  if(monkeyFrame>=monkeyNum){
    monkeyFrame=0;
  }
  monkey[monkeyFrame].resize(100,100);
  image(monkey[monkeyFrame], x+250, y-30);  
}



