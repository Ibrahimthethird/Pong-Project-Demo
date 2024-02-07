//Global Variables //This is for the whole program except classes. 
//
void setup() {
  fullScreen(); //can also use size()but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  // An Object Is .. See the CLASS
  Ball myBall = new Ball(); //myBall = instance of Ball
  Ball yourBall = new Ball();
 // ellipse(x, y, diameter, diameter); //ball
 println("Exciting...not Exciting");
 exit(); //Mimincs garbage collection of all local variables
} //End setup
//Garbage collection happens here
void draw() {
  //EMPTY Loop
} //End draw
//
void keyPressed() {} //End Keypressed
//
void mousePressed() {} //End mousePressed
//
//End Driver
