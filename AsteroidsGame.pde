 //your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[250];
public void setup() 
{
  //your code here
  size(600, 600);
  background(0);
  //bob.turn(90);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
if(key == 'h'){
    bob.hyperSpace();
  }
if(key == 'd'){
    bob.turn(30);
  }
if(key == 'a'){
    bob.turn(-30);
  }
if(key == 'w'){
    bob.accelerate(0.2);
  }
if(key == 's'){
    bob.accelerate(-0.2);
  }

}
