Spaceship wahoo;
Star [] many = new Star[400];
Boom blast;
public void setup() 
{
  

  size(500,500);
  blast = new Boom();
  wahoo = new Spaceship();
  for(int i = 0; i < many.length; i++){
   many[i] = new Star(); 
   }
  }

public void draw() 
{
  background(0);
  wahoo.show();
  wahoo.move();

  blast.move();
  
  for(int i = 0; i < many.length; i++){
   many[i].show();
  }
 
  

}public void keyPressed(){
      if(key == 'h'){
         wahoo.hyperSpace();
         blast.myCenterX = wahoo.getX();
         blast.myCenterY = wahoo.getY();
         blast.myXspeed = wahoo.getXspeed();
         blast.myYspeed = wahoo.getYspeed();
         blast.myPointDirection = wahoo.getDirection();
        } else if(key == 'w'){
          wahoo.accelerate(0.2);
          blast.accelerate(0.2);
          blast.show();
        
        } else if(key == 's' ){
          wahoo.accelerate(-0.2);
          blast.accelerate(-0.2);
        } else if(key == 'd'){
          wahoo.turn(10);
          blast.turn(10);
        } else if(key == 'a'){
         wahoo.turn(-10);
         blast.turn(-10);
    
        }
      }

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

    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = -90;
 }
 
 
}
     
   
  
  
  
  
