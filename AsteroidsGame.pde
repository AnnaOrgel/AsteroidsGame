Spaceship ship;
Star[] astra=new Star[100];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
Asteroid ro;
boolean rockets = false;
Bullets bb;
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i=0; i<100; i++) {
    astra[i]=new Star();
  }
  for(int i=0; i<10; i++){
  ro = new Asteroid();
  rock.add(ro);
  }
  ship=new Spaceship();
  bb=new Bullets(ship);
}
public void draw() 
{
  fill(0);
  rect(0, 0, 500, 500);
  ship.show();
  ship.move();
  for(int i=0; i<rock.size()-1; i++){
  rock.get(i).show();
  rock.get(i).move();
     if(dist(rock.get(i).getX(), rock.get(i).getY(), ship.getX(), ship.getY())<20){
      rock.remove(rock.get(i));
    }
  }
  for (int i=0; i<100; i++) {
    astra[i].show();
  }
  bb.show();
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
