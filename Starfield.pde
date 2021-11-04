Particle[] bob = new Particle [50];
void setup()
{
  size(400,400);
  background(#B3EDF0);
  fill(0,0,0);
  for(int i = 0; i < bob.length; i++){
  bob[i] = new Particle();
  bob[0] = new OddballParticle();
  }
}
void draw()
{

  background(#B3EDF0);
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  bob[0].show();
  bob[i].move();
  }
}
class Particle
{
  float myX, myY,mySpeed,myAngle;
  int myColor;
  Particle(){
  myAngle = (float)(Math.random()*2*Math.PI);
  mySpeed = (float)Math.random()*10;
  myColor = color(255,255,255);
  myX = myY = 200;
}
  void move(){
  myX = myX + (float)(Math.cos(myAngle)*mySpeed);
  myY = myY + (float)(Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(255);
   stroke(myColor);
   ellipse(myX,myY,10,10);
   ellipse(200,200,100,100);
   fill(#94AF71);
   rect(185,200,25,200);
  }
}

class OddballParticle extends Particle{
  int myX,myY;
  OddballParticle(){
  myX = (int)Math.random()*10;
  myY = (int)Math.random()*10;
  }
  void showOdd(){
    fill(255);
    ellipse(200,200,50,50);
  }
}
