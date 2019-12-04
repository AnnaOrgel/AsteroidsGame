class Bullets extends Floater {
  public Bullets(Spaceship ship) {
    myCenterX=ship.getX();
    myCenterY=ship.getY();
    double dRadians=ship.getPDirection()*(Math.PI/180);
    myPointDirection=dRadians;
    myDirectionX=5*Math.cos(dRadians)+ship.getXDirection();
    myDirectionY=5*Math.sin(dRadians)+ship.getYDirection();
  }
  public void show() {
    noStroke();
    fill(52, 235, 232);
    ellipse((float)myCenterX, (float)myCenterY, 3, 3);
  }
}
