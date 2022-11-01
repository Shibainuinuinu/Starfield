Pacman[] pac;
void setup()
{
  size(1000, 1000);
  background(0);
  pac = new Pacman[250];
  for (int i=0; i<pac.length; i++){
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
  Pacman(){
    myX = width/2;
    myY = height/2;
    //myColor = color((int)(Math.random()*256),
    //                (int)(Math.random()*256),
    //                (int)(Math.random()*256));
    mySpeed = (Math.random()*10)+1;
    myAngle = (Math.random()*(2*Math.PI));
  }
  void move(){
    myX += (Math.cos(myAngle)*mySpeed);
    myY += (Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(255, 255, 0);
    noStroke();
    ellipse((float)myX,(float)myY, 30, 30);
    fill(0);
    arc((float)myX,(float)myY, 30, 30, (float)myAngle, (float)myAngle+PI/3);
  }
  }
  


//class MsPacMan extends Pacman //inherits from Particle
//{
//  //your code here
//}
