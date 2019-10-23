Bacteria[] kechow; 
Bacteria[] kachow;
Bacteria[] kochow;
Bacteria[] kichow;
int width = 500;
void setup()   
{     
  size(500, 500);
  /*kerchow = new Bacteria[(width * width)];
   int[] coords = new int[width * width];
   for (int y = 0; y < kerchow.length; y++) {
   for (int x = 0; x < kerchow.length; x++) {
   for (int i = 0; i < kerchow.length; i++) {
   kerchow[i] = new Bacteria(x, y);
   }
   }
   } */
  kechow = new Bacteria[width];
  for (int i = 0; i < kechow.length; i++) {
    kechow[i] = new Bacteria(480, i);
  }
  kachow = new Bacteria[width];
  for (int i = 0; i < kachow.length; i++) {
    kachow[i] = new Bacteria(20, i);
  }
  kochow = new Bacteria[width];
  for (int i = 0; i < kochow.length; i++) {
    kochow[i] = new Bacteria(i, 20);
  }
  kichow = new Bacteria[width];
  for (int i = 0; i < kichow.length; i++) {
    kichow[i] = new Bacteria(i, 480);
  }
}
void draw()   
{    
  background(128);
  rect(230, 0, 40, 500);
  rect(0, 230, 500, 40);
  for (int i = 0; i < kechow.length; i ++) {
    kechow[i].show();
    kechow[i].walk();
  }
  for (int i = 0; i < kachow.length; i ++) {
    kachow[i].show();
    kachow[i].walk();
  }
  for (int i = 0; i < kochow.length; i ++) {
    kochow[i].show();
    kochow[i].walk();
  }
  for (int i = 0; i < kochow.length; i ++) {
    kichow[i].show();
    kichow[i].walk();
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
    if (((int)myX > width/2) && ((int)myY < width/2)) { //Top right
      myX += (int)(Math.random()*3-2);
      myY += (int)(Math.random()*3-1);
    } else if (((int)myX > width/2) && ((int)myY > width/2)) { //Bottom right
      myX += (int)(Math.random()*3-2);
      myY += (int)(Math.random()*3-2);
    } else if (((int)myX < width/2) && ((int)myY < width/2)) { //Top left
      myX += (int)(Math.random()*3-1);
      myY += (int)(Math.random()*3-1);
    } else if(((int)myX < width/2) && ((int)myY > width/2)){ //Bottom Left
      myX += (int)(Math.random()*3-1);
      myY += (int)(Math.random()*3-2);
    }
    myRadius += (int)(Math.random()*4-2);
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, myRadius, myRadius);
  }
}
