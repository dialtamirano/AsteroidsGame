class Asteroid extends Floater
{
  private double rotSpeed;
public Asteroid(){
  rotSpeed = (int)(Math.random()*10)-5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;   
    xCorners[4] = -11;
    yCorners[4] = 8;  
    xCorners[5] = -5;
    yCorners[5] = 0;   
    
   myCC = 255;
   myCenterX = (int)(Math.random()*1000);
   myCenterY = (int)(Math.random()*1000); //holds center coordinates   
   myXspeed = (Math.random()*7)-3;
   myYspeed = (Math.random()*6)-3; //holds the speed of travel in the x and y directions   
   myPointDirection = (int)(Math.random()*100); //holds current direction the ship is pointing in degrees    
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  double getMyCenterX() {
    return myCenterX;
  }

  double getMyCenterY() {
    return myCenterY;
  }
}
