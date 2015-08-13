PVector velocity;
PVector position;
PVector gravity;

int jump=20;

void setup(){
  size(1000,500);
  position = new PVector(100,0);
  velocity = new PVector(0,0);
  gravity = new PVector(0,0.5);
}

void draw(){
  background(255);
  position.add(velocity);
  velocity.add(gravity);
  
  if(position.y > height){
    position.y = height;
    velocity.x += 1; 
    velocity.y = -jump;  
  }
  if(position.y == height){
    jump-=1;
  }
  
  if(position.x > width-35){
    velocity.x -= 1;
  }
  if(jump == 0){
    noLoop();
  }
  ellipse(position.x, position.y-25, 50, 50);
}

