//Global Variables //This is for the whole program except classes. 
 Ball myBall = new Ball(); // Both 1/2's of Constructor
 //Ball yourball
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  //Population
  myBall = new Ball(); //Both 1/2's of constructor
  // yourBall = new Ball();
  //
} //End setup
//
void draw() {
  myBall.draw();
} //End draw
//
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
} //End mousePressed
//
//End Driver
