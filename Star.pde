class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myC;
  public Star(){
   myX = (int)(Math.random()*1000);
   myY =  (int)(Math.random()*1000);
   myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void show(){
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   fill(myC);
   ellipse(myX, myY, 3,3);
  }
}
