class Bullets extends Floater{
  public Bullets(Spaceship wahoo){
    myCenterX = wahoo.getX();
    myCenterY = wahoo.getY();
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -16;
    yCorners[0] = -8;
    xCorners[1] = -16;
    yCorners[1] = 8;
    xCorners[2] = 16;
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
    myColor = color((int)(Math.random()*50)+20,(int)(Math.random()*50)+200,(int)(Math.random()*200));
    fill(myColor);
    super.show();
  }
  
}
