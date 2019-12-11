Spaceship ship;
Star[] astra=new Star[100];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
Asteroid ro;
boolean rockets = false;
Bullets b;
ArrayList <Bullets> bb = new ArrayList <Bullets>();
int health= 140;
int score = 0;
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i=0; i<100; i++) {
    astra[i]=new Star();
  }
  for (int i=0; i<20; i++) {
    ro = new Asteroid();
    rock.add(ro);
  }
  ship=new Spaceship();
}
public void draw() 
{
  if(health==0 || rock.size()==1){
    fill(0);
    rect(0, 0, 500, 500);
    fill(255, 0, 0);
    textSize(30);
    text("Game Over", 180, 250);
    textSize(20);
    text("Score: "+score, 220, 300);
  }else{
  fill(0);
  rect(0, 0, 500, 500);
  fill(255);
  textSize(25);
  text("score: "+score, 30, 460);
  text("health:", 400, 460);
  fill(255, 0, 0);
  rect(350, 470, health, 7);
  ship.show();
  ship.move();
  for (int i=0; i<rock.size()-1; i++) {
    rock.get(i).show();
    rock.get(i).move();
    if (dist(rock.get(i).getX(), rock.get(i).getY(), ship.getX(), ship.getY())<20) {
      rock.remove(rock.get(i));
      health-=20;
    }
  }
  for (int i=0; i<100; i++) {
    astra[i].show();
  }
  for (int i=0; i<=bb.size()-1; i++) {
    b.show();
    b.move();
    for (int j=0; j<rock.size()-1; j++) {
      if (dist(rock.get(j).getX(), rock.get(j).getY(), bb.get(i).getX(), bb.get(i).getY())<20) {
        bb.remove(i);
        rock.remove(j);
        score++;
        break;
      }
    }
    if (b.getX()>width || b.getX()<0 || b.getY()>height || b.getY()<0) {
      bb.remove(i);
    }
  }
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
  if (key == 's') {
    b=new Bullets(ship);
    bb.add(b);
  }
}
