class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY;
  
public Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
public void show(){
  noStroke();
  fill((int)(Math.random()*150+50), (int)(Math.random()*50+50),
  (int)(Math.random()*150+50));
  ellipse(myX, myY, 5, 5);
}
}
