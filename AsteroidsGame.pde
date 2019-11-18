Spaceship ship;
Star[] astra=new Star[100];
boolean rockets = false;
public void setup() 
{
  size(500, 500);
  background(0);
  ship=new Spaceship();
  for (int i=0; i<100; i++) {
    astra[i]=new Star();
  }
}
public void draw() 
{
  fill(0);
  rect(0, 0, 500, 500);
  ship.show();
  ship.move();
  for (int i=0; i<100; i++) {
    astra[i].show();
  }
}
public void keyPressed() {
  if (key == 'h') {
    ship.hyperspace();
  }
  if (key == 'a') {
    ship.accelerate(0.2); 
  }
  if (key == 'r') {
    ship.turn(10);
  }
}
