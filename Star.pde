class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  public Star(){
    myX=Math.random()*500;
    myY=Math.random()*500;
  }
  public void show(){
   noStroke();
    fill(255, 255, 255, 60);
    ellipse((float)myX, (float)myY, 10, 10);
    fill(255, 255, 255, 100);
    ellipse((float)myX, (float)myY, 6, 6);
    fill(255, 255, 255, 200);
    ellipse((float)myX, (float)myY, 4, 4);
  }
}
