class Asteroid extends Floater{
  protected double rotSpd;
  
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = (int)(Math.random()*20)-22;
    yCorners[0] = (int)(Math.random()*(-20))-16;
    xCorners[1] = (int)(Math.random()*20)+14;
    yCorners[1] = (int)(Math.random()*(-20))-16;
    xCorners[2] = (int)(Math.random()*20)+26;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*20)+12;
    yCorners[3] = (int)(Math.random()*20)+20;
    xCorners[4] = (int)(Math.random()*(-20))-22;
    yCorners[4] = (int)(Math.random()*20)+8;
    xCorners[5] = (int)(Math.random()*(-20))-10;
    yCorners[5] = 0;
    
    myColor = color(113, 104, 104);
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*1000);

    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
    myPointDirection = -90;
    
    rotSpd = (Math.random()*10) -5;
  }
   public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  
  
  public void move(){
    turn(rotSpd);
    super.move();
  }
  
}
