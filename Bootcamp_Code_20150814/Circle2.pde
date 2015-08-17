class Circle2{
  float x, y;
  float change;
  
  Circle2(float x, float y, float change){
    this.x = x;
    this.y = y;
    this.change = change;
  }
  
  void display(){
    pushMatrix();
    fill(114, 255, 156);
    ellipse(x,y,radius,radius);
    popMatrix();
  }
  
  void update(){
    x=width/2 - cos(change+(frameCount*speed))*size;
    y=height/2 + cos(frameCount*speed)*size;  
  }
}