Bacteria[] kerchow; 
Bacteria[] kachow;
int width = 500;
void setup()   
{     
  size(500, 500);
  kerchow = new Bacteria[(width * width)];
  for (int y = 0; y < kerchow.length; y++) {
    for (int x = 0; x < kerchow.length; x++) 
    coords = x, y
  }
}
/*kachow = new Bacteria[width];
 for (int i = 0; i < kachow.length; i++) {
 kachow[i] = new Bacteria(500-i, 500-i);
 } */
}   
void draw()   
{    
  background(128);
  for (int i = 0; i < kerchow.length; i ++) {
    kerchow[i].show();
    kerchow[i].walk();
  }
  /*for (int i = 0; i < kachow.length; i ++) {
   kachow[i].show();
   kachow[i].walk();
   } */
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
    } else { //Bottom Left
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
