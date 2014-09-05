//Vivian Lam, AP Computer Science, Mod 6/7 , Original Design
public void setup()
{
  size(400, 400);
  background(0);
}
int angle=0;
int change=3;
int limit=85;
int angle2=84;
int change2=3;
int legAngle=0;
int legChange=3;
int legLimit=30;
int legAngle2=29;
int legChange2=3;

public void draw()
{
  pushMatrix();
  background(0);
  backArm();
  leg1();
  leg2();
  robot();
  angle=angle+change;
  if(angle<-25||angle>limit)
  {
    change=-change;
    angle=angle+change;
  }
   angle2=angle2+change2;
    if(angle2<-25||angle2>limit)
  {
    change2=-change2;
    angle2=angle2+change2;
  }
    legAngle=legAngle+legChange;
  if(legAngle<-10||legAngle>legLimit)
  {
    legChange=-legChange;
    legAngle=legAngle+legChange;
  }
   legAngle2=legAngle2+legChange2;
    if(legAngle2<-10||legAngle2>legLimit)
  {
    legChange2=-legChange2;
    legAngle2=legAngle2+legChange2;
  }
  popMatrix();
}

public void robot() {
  stroke(0, 0, 255);
  strokeWeight(3);
  fill(162, 162, 162);
  bezier(100, 200, 105, 50, 245, 50, 250, 200);
  rect(120, 200, 110, 100);
  fill(0);
  ellipse(200, 150, 20, 20);
  frontArm();
}

public void frontArm(){
  frameRate(60);
  pushMatrix();
  translate(165,220);
  rotate(radians(angle));
  fill(162,162,162);
  rect(0,0,50,70,15);
  popMatrix();
}

public void backArm(){
  pushMatrix();
  translate(165,220);
  rotate(radians(angle2));
  fill(162,162,162);
  rect(0,0,50,70,15);
  popMatrix();
}

public void leg1(){
  pushMatrix();
  translate(165,285);
  rotate(radians(legAngle));
  fill(162,162,162);
  rect(0,0,50,70,15);
  popMatrix();
}

public void leg2(){
  pushMatrix();
  translate(155,285);
  rotate(radians(legAngle2));
  fill(162,162,162);
  rect(0,0,50,70,15);
  popMatrix();
}
