class Circle4 {
  float x, y;
  float change;

  Circle4(float x, float y, float change) {
    this.x = x;
    this.y = y;
    this.change = change;
  }

  void display() {
    pushMatrix();
    fill(255, 233, 132);
    ellipse(x, y, radius, radius);
    popMatrix();
  }

  void update() {
    if (key=='x') {
      x=width/2 + sin(0.5+(frameCount*speed))*size/10;
      y=height/2 +sin(frameCount*speed)*size;
    } 
    else {
      x=width/2;
      y=height/2 + sin(frameCount*speed)*size*1.25;
    }
  }
}