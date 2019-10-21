Bacteria[] kerchow; 
void setup()   
{     
  size(500, 500);
  kerchow = new Bacteria[300];
  for (int i = 0; i < kerchow.length; i++) {
    kerchow[i] = new Bacteria(i*2, i*2);
  }
}   
void draw()   
{    
  background(128);
  for (int i = 0; i < kerchow.length; i ++) {
    kerchow[i].show();
    kerchow[i].walk();
  }
}
class Bacteria    
{     
  float myX, myY;
  int myColor, myRadius;
  Bacteria(float x, float y)
  {
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }    
  void walk() {
    if (((int)myX > 150) && ((int)myY>150)) {
      myX += (int)(Math.random()*9-3);
      myY += (int)(Math.random()*9-6);
      myRadius += (int)(Math.random()*10-5);
    } else {
      myX += (int)(Math.random()*9-6);
      myY += (int)(Math.random()*9-6);
      myRadius += (int)(Math.random()*10-5);
    }
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, myRadius, myRadius);
  }
}
