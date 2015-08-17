class Circle1{
  float x, y;
  float change;
  
  Circle1(float x, float y, float change){
    this.x = x;
    this.y = y;
    this.change = change;
  }
  
  void display(){
    pushMatrix();
    fill(255,97,114);
    ellipse(x,y,radius,radius);
    popMatrix();
  }
  
  void update(){
    x=width/2 + sin(change + frameCount*speed)*size;
    y=height/2 + sin(frameCount*speed)*size;
  }
}