void setup()
 {
   size(306,340);
   textAlign(CENTER, CENTER);
   noLoop();
 }
void draw()
 {
   background(242, 207, 142);
   int numDots = 0;
   for(int y = 6; y < 306; y = y + 20){
     for(int x = 6; x < 306; x = x + 20){
       Die bob = new Die(x,y);
       bob.show();//your code here
       if(bob.myRoll == 1)
         numDots++;
       else if(bob.myRoll == 2)
         numDots+=2;
       else if(bob.myRoll == 3)
         numDots+=3;
       else if(bob.myRoll == 4)
         numDots+=4;
       else if(bob.myRoll == 5)
         numDots+=5;
       else if(bob.myRoll == 6)
         numDots+=6;
     }
   }
   text("There are " + numDots + " dots total.", 155, 318);
 }
void mousePressed()
 {
   redraw();
 }
class Die //models one single dice cube
 {
   int myX, myY, mySize, myDots, myRoll; //member variable declarations here
   Die(int x, int y) //constructor
     {
       roll();
       myX = x;
       myY = y;
       mySize = 14;//variable initializations here
       myDots = 2;
     }
void roll()
  {
    myRoll = (int)(Math.random() * 6) + 1;//your code here
  }
void show()
  {
    fill((int)(Math.random() * 255) + 250, (int)(Math.random() * 255) + 50, (int)(Math.random() * 255) + 50, (int)(Math.random() * 255) + 50);
    rect(myX, myY, mySize, mySize);//your code here
    if (myRoll == 1)
    {
      fill(0,0,0);
      ellipse(myX + 7, myY + 7, myDots, myDots);
    }
    else if (myRoll == 2)
    {
      fill(0,0,0);
      ellipse(myX + 4, myY + 7, myDots, myDots);
      ellipse(myX + 10, myY + 7, myDots, myDots);
    }
    else if (myRoll == 3)
    {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3, myDots, myDots);
      ellipse(myX + 7, myY + 7, myDots, myDots);
      ellipse(myX + 11, myY + 11, myDots, myDots);
    }
    else if (myRoll == 4)
    {
      fill(0,0,0);
      ellipse(myX + 4, myY + 4, myDots, myDots);
      ellipse(myX + 10, myY + 4, myDots, myDots);
      ellipse(myX + 4, myY + 10, myDots, myDots);
      ellipse(myX + 10, myY + 10, myDots, myDots);
    }
    else if (myRoll == 5)
    {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3, myDots, myDots);
      ellipse(myX + 11, myY + 3, myDots, myDots);
      ellipse(myX + 3, myY + 11, myDots, myDots);
      ellipse(myX + 11, myY + 11, myDots, myDots);
      ellipse(myX + 7, myY + 7, myDots, myDots);
    }
    else if (myRoll == 6)
    {
      fill(0,0,0);
      ellipse(myX + 4, myY + 3, myDots, myDots);
      ellipse(myX + 10, myY + 3, myDots, myDots);
      ellipse(myX + 4, myY + 7, myDots, myDots);
      ellipse(myX + 10, myY + 7, myDots, myDots);
      ellipse(myX + 4, myY + 11, myDots, myDots);
      ellipse(myX + 10, myY + 11, myDots, myDots);
    }
  }
}
