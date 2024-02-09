//Global Variables //This is for the whole program except classes. 
 Ball myBall = new Ball(); // Both 1/2's of Constructor
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  //Population
  myBall = new Ball(); //Both 1/2's of constructor
  //What if?
  // An Object Is .. See the CLASS
  //Code that uses object variables 
 // ellipse(x, y, diameter, diameter); //ball\
 //Ball yourBall = new Ball();
 //yourBall.x =
} //End setup
//Garbage collection happens here
void draw() {
  myBall.draw();
} //End draw
//
void keyPressed() {} //End Keypressed
//
void mousePressed() {} //End mousePressed
//
//End Driver
