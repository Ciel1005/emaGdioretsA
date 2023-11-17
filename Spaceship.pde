class Spaceship extends Floater  
{   
  public Spaceship() {

    corners = 6;
    xCorners = new int[corners];
    yCorners = new int [corners];

    xCorners[0] = -16;
    yCorners[0] = -32;
    xCorners[1] = 32;
    yCorners[1] = 0;
    xCorners[2] = -16;
    yCorners[2] = 32;
    xCorners[3] = -8;
    yCorners[3] = 16;
    xCorners[4] = -16;
    yCorners[4] = 0;
    xCorners[5] = -8;
    yCorners[5] = -16;


    myColor = color(255, 0, 0);

    myCenterX = 500;
    myCenterY = 500;

    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = -90;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
    public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getDirection() {
   return myPointDirection; 
  }
  
  public void hyperSpace() {
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myPointDirection = (Math.random()*360)-180;
    myXspeed = 0;
    myYspeed = 0;
  }
}
