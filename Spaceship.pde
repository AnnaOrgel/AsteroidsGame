class Spaceship extends Floater  
{   
  public Spaceship() {
    myCenterX= 250;
    myCenterY=250;
    myDirectionY=0;
    myDirectionX=0;
    myPointDirection=0;
    myColor=color(255, 255, 255);
    corners =4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
  }
  public void hyperspace(){
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
    myDirectionY=0;
    myDirectionX=0;
    myPointDirection=Math.random()*360;
  }
}
