class Bullet extends Floater
{
 public Bullet(Spaceship theShip){
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getMyPointDirection();
    accelerate(5.0);
  }        
  public void show(){
  noStroke();
  fill(0,0,255);                         
  ellipse((float)myCenterX,(float)myCenterY,6,5);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getMyCenterX(){
  return myCenterX;
  }

  public double getMyCenterY(){
  return myCenterY;
  }
} 
