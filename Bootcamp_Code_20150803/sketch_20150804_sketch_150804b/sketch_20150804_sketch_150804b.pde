int xPos;
int yPos;
boolean mouseOverCircle;

void setup(){
  size(800, 600);
  xPos=width/2;
  yPos=height/2;
  background(0, 0, 200);
}

void draw(){
  background(0, 0, 200);
  
  noStroke();
  fill(255, 255, 0);
  ellipse(xPos, yPos, 200, 200);
  
  if(mouseX>=xPos){
    mouseOverCircle=true;
  }
  else if(mouseX<=xPos){
    mouseOverCircle=false;
  }
  
  if(mouseOverCircle==true){
    xPos++;
  }
  else{
    xPos=xPos-1;
  }
  
  if(mouseY>=yPos){
    mouseOverCircle=true;
  }
  else if(mouseY<=yPos){
    mouseOverCircle=false;
  }
  
  if(mouseOverCircle==true){
    yPos=yPos+1;
  }
  else{
    yPos=yPos-1;
  }
}

