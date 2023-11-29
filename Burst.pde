class Boom extends Spaceship{

  public Boom(){
       corners = 8;
    xCorners = new int[corners];
    yCorners = new int [corners];

    xCorners[0] = -20;
    yCorners[0] = 0;
    xCorners[1] = -63;
    yCorners[1] = -6;
    xCorners[2] = -72;
    yCorners[2] = -9;
    xCorners[3] = -69;
    yCorners[3] = -3;
    xCorners[4] = -78;
    yCorners[4] = 0;
   
    xCorners[5] = -69;
    yCorners[5] = 3;
    xCorners[6] = -72;
    yCorners[6] = 9;
    xCorners[7] = -63;
    yCorners[7] = 6;
   
    myColor = color(200, 200, 0);
    myCenterX = 500;
    myCenterY = 500;

    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = -90;
 }
 
 
}
