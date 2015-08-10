void setup(){
  size(600,600);
  background(0);
}

void draw(){
  background(0);
  noStroke();
  
  for(int i=0; i<(width+100); i=i+20){
    for(int j=0; j<(height+100); j=j+20){
      fill((mouseX-i)%256, ((mouseY*i)-(mouseX*j))%256, (mouseY-j)%256);
      triangle(i,j,j,i,0,0);
    }
  }
}

