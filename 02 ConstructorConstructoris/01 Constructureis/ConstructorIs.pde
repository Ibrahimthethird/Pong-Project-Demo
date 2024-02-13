//Global Variables //This is for the whole program except classes. 
 Ball myBall = new Ball(); // Both 1/2's of Constructor
 Ball yourBall;
 //
 color pongTableColour = 255; //ERROR! move to Table Class
 //Ball yourball
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  //Population
  myBall = new Ball(); //Both 1/2's of constructor
  yourBall = new Ball();
  //
  color pongTableColour = 255; //ERRor! MOve to 
} //End setup
//
void draw() {
  background(pongTableColour); //NIght Mode is known in Class, not Driver
  myBall.draw();
  yourBall.draw();
} //End draw
//
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
} //End mousePressed
//
void ballCollisions() {}
//
//End Driver
