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
     
   
  
  
  
  
