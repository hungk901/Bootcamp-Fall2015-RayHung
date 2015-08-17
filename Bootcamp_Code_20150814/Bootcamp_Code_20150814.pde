 //<>//
float x = width/2, y = height/2;
float change;
float radius;
float speed;
float size;

boolean flag=false;

Circle1 circle1;
Circle2 circle2;
Circle3 circle3;
Circle4 circle4;

void setup() {
  noStroke();
  size(400, 400);
  radius=15;
  speed=0.09;
  size=width/4;

  circle1 = new Circle1(x, y, change);
  circle2 = new Circle2(x, y, change);
  circle3 = new Circle3(x, y, change);
  circle4 = new Circle4(x, y, change);
}

void draw() {
  fill(0, 10);
  rect(0, 0, 400, 400);

  if (flag==true) {
    circle1.display();
    circle1.update();
    
    circle2.display();
    circle2.update();
    
    circle3.display();
    circle3.update();

    circle4.display();
    circle4.update();
  }

  if(keyPressed){
    if(key=='x'){
      circle1.change=0.5;
      circle1.display();
      circle1.update();
      
      circle2.change=0.5;
      circle2.display();
      circle2.update();
      
      circle3.change=0.5;
      circle3.display();
      circle3.update();
      
      circle4.change=0.5;
      circle4.display();
      circle4.update();

      flag=false;
    }
  }
  else{
     flag=true;
  }
}