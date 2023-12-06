Spaceship wahoo;
Star [] many = new Star[750];
Boom blast;
ArrayList <Asteroid> rocks;
ArrayList <Bullets> pew = new ArrayList <Bullets>();
public void setup() 
{
  
 
  size(1000,1000);
  blast = new Boom();
  wahoo = new Spaceship();
  rocks = new ArrayList <Asteroid>();

  for(int i = 0; i < many.length; i++){
   many[i] = new Star(); 
   }
  for(int i = 0; i < 60; i++){
 
     rocks.add(new Asteroid());
 
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
  
  for(int i = 0; i < pew.size(); i++){
   pew.get(i).move();
   pew.get(i).show();

  }
  for(int i = 0; i < rocks.size(); i++){
   rocks.get(i).show();
   rocks.get(i).move();
   double d = dist((float)wahoo.getX(), (float)wahoo.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 30)
     rocks.remove(i);
 }
 for(int i = 0; i < pew.size();i++){
   for(int j = 0; j < rocks.size();j++){
     double d = dist((float)rocks.get(j).getX(), (float)rocks.get(j).getY(), (float)pew.get(i).getX(), (float)pew.get(i).getY());
     if(d < 25){
      pew.remove(i);
      rocks.remove(j);
      break;
     }
     
   }
 }
 

}public void keyPressed(){
      if(key == CODED){
       if(keyCode == UP){
          pew.add(new Bullets(wahoo));
       }
      }else if(key == 'h'){
         wahoo.hyperSpace();
         blast.myCenterX = wahoo.getX();
         blast.myCenterY = wahoo.getY();
         blast.myXspeed = wahoo.getXspeed();
         blast.myYspeed = wahoo.getYspeed();
         blast.myPointDirection = wahoo.getDirection();
        } else if(key == 'w'){
          wahoo.accelerate(0.5);
          blast.accelerate(0.5);
          blast.show();
        
        } else if(key == 's' ){
          wahoo.accelerate(-0.5);
          blast.accelerate(-0.5);
        } else if(key == 'd'){
          
          wahoo.turn(10);
          blast.turn(10);
        
        } else if(key == 'a'){
         wahoo.turn(-10);
         blast.turn(-10);
        } 
   
        
   }
     
   
  
  
  
  
