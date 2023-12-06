 //your variable declarations here

Spaceship bob = new Spaceship();
Star[] nightSky = new Star[250];
//Asteroid [] myAsteroid = new Asteroid[2];
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
//Asteroid sue = new Asteroid();
//Asteroid rocks = new Asteroid();
//Asteroid ast = new Asteroid();
//Asteroid boulder = new Asteroid();
//Asteroid pebble = new Asteroid();

public void setup() 
{
  //your code here
  size(600, 600);
  background(0);
  
  asteroids = new ArrayList();
  
  //  for (int i = 0; i <myAsteroid.length; i++) {
  //  myAsteroid[i] = new Asteroid();
  //}
    for (int i = 0; i < 20; i++) {
      asteroids.add(new Asteroid());
    }
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  //for (int i = 0; i <myAsteroid.length; i++) {
  //  myAsteroid[i].show();
  //  myAsteroid[i].move();
  //}
  //for (int i = asteroids.size() - 1; i >= 0; i--) 
    for(int i = 0; i < asteroids.size(); i++){
     
    Asteroid currentAsteroid = asteroids.get(i);
    
    float distance = dist((float) currentAsteroid.getMyCenterX(), (float) currentAsteroid.getMyCenterY(), (float) bob.getMyCenterX(), (float) bob.getMyCenterY());
    if(distance < 30){
        asteroids.remove(i);
        i--;
    }

    currentAsteroid.move();
    currentAsteroid.show();
  
  }

  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  //sue.show();
  //sue.move();
  //rocks.show();
  //rocks.move();
  //ast.show();
  //ast.move();
  //pebble.show();
  //pebble.move();
  //boulder.show();
  //boulder.move();
}
public void keyPressed(){
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
if(key == 'h'){
    bob.hyperSpace();
  }
}
