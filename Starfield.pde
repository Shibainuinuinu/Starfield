Pacman[] pac;
void setup()
{
  size(1000, 1000);
  background(0);
  pac = new Pacman[250];
  for (int i=0; i<3; i++){
    pac[i] = new Ghost();
  }
  for (int i=3; i<pac.length; i++){
    pac[i] = new Pacman();
  }
}
void draw()
{
  background(0);
  for (int i=0; i<pac.length; i++){
    pac[i].show();
    pac[i].move();
  }
}
class Pacman
{
  double myX, myY, mySpeed, myAngle; 
  int myColor;
  Pacman(){
    myX = width/2;
    myY = height/2;
    myColor = color(255,255,0, (int)(Math.random()*100)+150);
    mySpeed = (Math.random()*10)+1;
    myAngle = (Math.random()*(2*Math.PI));
  }
  void move(){
    myX += (Math.cos(myAngle)*mySpeed);
    myY += (Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY, 30, 30);
    fill(0);
    arc((float)myX,(float)myY, 30, 30, (float)myAngle, (float)myAngle+PI/3);
  }
  }
  


class Ghost extends Pacman //inherits from Particle
{
  Ghost(){
    myX = width/2;
    myY = height/2;
    myColor = color(255, 0, 0);
    mySpeed = (Math.random()*2)+1;
    myAngle = (Math.random()*(2*Math.PI));
  }
  void show(){
    noStroke();
    fill(myColor);
    //body
    arc((float)myX, (float)myY, 20, 20, PI, 2*PI);
    rect((float)myX-10, (float)myY, 20, 10);
    fill(0);
    ellipse((float)myX-7, (float)myY+10, 5, 5);
    ellipse((float)myX, (float)myY+10, 5, 5);
    ellipse((float)myX+7, (float)myY+10, 5, 5);
    //eyes
    fill(255);
    ellipse((float)myX-4, (float)myY-3, 5, 7);
    ellipse((float)myX+4, (float)myY-3, 5, 7);
    fill(0, 0, 255);
    ellipse((float)myX-4, (float)myY-3, 2, 5);
    ellipse((float)myX+4, (float)myY-3, 2, 5);
  }
}
