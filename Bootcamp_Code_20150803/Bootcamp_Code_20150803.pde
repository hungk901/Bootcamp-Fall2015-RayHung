int i=0;
int x;
int y;

void setup(){
  size(800, 600);
  background(0,0,50);
}

void draw(){
  noStroke();
  
  i=frameCount%255;
  x=mouseX%400;
  y=mouseY%300;
  
  fill( (i+x)%255, (i+y)%255, (i+(x+y)/2)%255 );
  ellipse(mouseX,mouseY,15,15);
}
