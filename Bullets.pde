class Bullets extends Floater{
  public Bullets(Spaceship wahoo){
    myCenterX = wahoo.getX();
    myCenterY = wahoo.getY();
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -4;
    xCorners[1] = -8;
    yCorners[1] = 4;
    xCorners[2] = 8;
    yCorners[2] = 0;
    myXspeed = wahoo.getXspeed();
    myYspeed = wahoo.getYspeed();
    myPointDirection = wahoo.getDirection();
    myColor = color(255);
    accelerate(6);
  }
 public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
}
