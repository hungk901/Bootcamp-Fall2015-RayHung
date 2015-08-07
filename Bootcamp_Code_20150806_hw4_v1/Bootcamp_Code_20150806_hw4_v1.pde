int r, g, b;

float radius;
float x1,y1;
float x2,y2;
float x3,y3;
float x4,y4;
float speed;
float size;

boolean flag=true;

void setup(){
  noStroke();
  size(400,400);
  x1=width/2;
  y1=height/2;
  radius=15;
  speed=0.09;
  size=width/4;
}

void draw(){
  fill(0,10);
  rect(0,0,400,400);
  
  if(flag==true){
    fill(255,97,114);
    x1=width/2 + sin(frameCount*speed)*size;
    y1=height/2 + sin(frameCount*speed)*size;
    ellipse(x1,y1,radius,radius); 
    
    fill(114,255,156);
    x2=width/2 - cos((frameCount*speed))*size;
    y2=height/2 + cos(frameCount*speed)*size;
    ellipse(x2,y2,radius,radius);
    
    fill(144,167,255);
    x3=width/2 + sin(frameCount*speed)*size*1.25;
    ellipse(x3,height/2,radius,radius);
    
    fill(255,233,132);
    y4=height/2 + sin(frameCount*speed)*size*1.25;
    ellipse(width/2,y4,radius,radius);
  }
  
  if(keyPressed){
    if(key=='x'){
      fill(255,97,114);
      x1=width/2 + sin(0.5+(frameCount*speed))*size;
      y1=height/2 + sin(frameCount*speed)*size;
      ellipse(x1,y1,radius,radius);
      
      fill(114,255,156);
      x2=width/2 - cos(0.5+(frameCount*speed))*size;
      y2=height/2 + cos(frameCount*speed)*size;
      ellipse(x2,y2,radius,radius);
      
      fill(144,167,255);
      x3=width/2 + cos(0.5+(frameCount*speed))*size;
      y3=height/2 +cos(frameCount*speed)*size/10;
      ellipse(x3,y3,radius,radius);
      
      fill(255,233,132);
      x4=width/2 + sin(0.5+(frameCount*speed))*size/10;
      y4=height/2 +sin(frameCount*speed)*size;
      ellipse(x4,y4,radius,radius);
      
      flag=false;
    }
  }
  else{
      flag=true;
 }
}

