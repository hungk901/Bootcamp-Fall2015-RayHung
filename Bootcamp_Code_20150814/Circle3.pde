class Circle3 {
  float x, y;
  float change;

  Circle3(float x, float y, float change) {
    this.x = x;
    this.y = y;
    this.change = change;
  }

  void display() {
    pushMatrix();
    fill(144, 167, 255);
    ellipse(x, y, radius, radius);
    popMatrix();
  }

  void update() {    
    if (key=='x') {
      x=width/2 + cos(change+(frameCount*speed))*size;
      y=height/2 +cos(frameCount*speed)*size/10;
    } 
    else {
      x=width/2 + sin(frameCount*speed)*size*1.25;
      y=height/2;
    }
  }
}