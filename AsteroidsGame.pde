Spaceship wahoo;
Star [] many = new Star[750];
Boom blast;
ArrayList <Asteroid> rocks;
ArrayList <Bullets> pew = new ArrayList <Bullets>();

char keyUp = UP;
boolean keyUpPressed = false;

char keyA = 'a';
boolean keyApressed = false;

char keyD = 'd';
boolean keyDpressed = false;

char keyS = 's';
boolean keySpressed = false;

char keyW = 'w';
boolean keyWpressed = false;




public void setup() 
{


  size(1000, 1000);
  blast = new Boom();
  wahoo = new Spaceship();
  rocks = new ArrayList <Asteroid>();

  for (int i = 0; i < many.length; i++) {
    many[i] = new Star();
  }
  for (int i = 0; i < 60; i++) {

    rocks.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  wahoo.show();
  wahoo.move();
  blast.move();

  for (int i = 0; i < many.length; i++) {
    many[i].show();
  }

  for (int i = 0; i < pew.size(); i++) {
    pew.get(i).move();
    pew.get(i).show();   
    double d = dist((float)wahoo.getX(), (float)wahoo.getY(), (float)pew.get(i).getX(), (float)pew.get(i).getY());
    if (d > 400) {
      pew.remove(i);
    }
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    double d = dist((float)wahoo.getX(), (float)wahoo.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 30)
      rocks.remove(i);
  }
  for (int i = 0; i < pew.size(); i++) {
    for (int j = 0; j < rocks.size(); j++) {
      double d = dist((float)rocks.get(j).getX(), (float)rocks.get(j).getY(), (float)pew.get(i).getX(), (float)pew.get(i).getY());
      if (d < 25) {
        pew.remove(i);
        rocks.remove(j);
        break;
      }
    }
  }
 
  if (keyUpPressed == true) {
    pew.add(new Bullets(wahoo));
  } else if (keyWpressed == true) {
  wahoo.accelerate(0.2);
  blast.accelerate(0.2);
  blast.show();
} else if (keySpressed == true ) {
  wahoo.accelerate(-0.2);
  blast.accelerate(-0.2);
} else if (keyDpressed == true) {
  wahoo.turn(5);
  blast.turn(5);
} else if (keyApressed == true) {
  wahoo.turn(-5);
  blast.turn(-5);
}         

}public void keyPressed() {
  if (key == 'h') {
    wahoo.hyperSpace();
    blast.myCenterX = wahoo.getX();
    blast.myCenterY = wahoo.getY();
    blast.myXspeed = wahoo.getXspeed();
    blast.myYspeed = wahoo.getYspeed();
    blast.myPointDirection = wahoo.getDirection();
  }
  if (key == CODED) {
    if (keyCode == keyUp) {
      keyUpPressed = true;
    }
  } else if (key == 'w') {
    keyWpressed = true;
  } else if (key == 's' ) {
    keySpressed = true;
  } else if (key == 'd') {
    keyDpressed = true;
  } else if (key == 'a') {
    keyApressed = true;
  }
}
public void keyReleased() {
  if (key == CODED) {
    if (keyCode == keyUp) {
      keyUpPressed = false;
    }
  } else if (key == 'w') {
    keyWpressed = false;
  } else if (key == 's' ) {
    keySpressed = false;
  } else if (key == 'd') {
    keyDpressed = false;
  } else if (key == 'a') {
    keyApressed = false;
  }
}
