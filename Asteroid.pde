class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed=(int)(2*PI*Math.random());
    myCenterX= Math.random()*500;
    myCenterY=Math.random()*500;
    myDirectionY=Math.random()*4-2;
    myDirectionX=Math.random()*4-2;
    myPointDirection=Math.random()*360;
    myColor=color(155, 155, 155);
    corners =9;
    xCorners = new int[]{-12, -20, -22, -14, -16, -8, 8, 12, 4};
    yCorners = new int[]{-8, -4, 0, 8, 16, 20, 12, 0, -8};
  }
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;    
    myPointDirection+=rotSpeed;

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
