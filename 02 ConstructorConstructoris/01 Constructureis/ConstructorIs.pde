//Global Variables //This is for the whole program except classes. 
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  // An Object Is .. See the CLASS
  Ball myBall = new Ball(); // Line = 1/2 of Constructor
  int startX = displayWidth*1/2;
  int startY = displayHeight*1/2;
  int referentMeasure = ( width < height ) ? width : height ; //Review Ternary Operator
  myBall.x = startX; //spawn myBall in the middle of the display
  myBall.y = startY;
  myBall.d = referentMeasure * 1/20;
  myBall.colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to intin color var
  //fill(myBall.colour); //CAUTION: must reset defaults
  //ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter); //ball
  //fill(0); //Reset to GrayScale: 0 to 255 in shades of gray
  //Ball yourBall = new Ball();
  //yourBall.x =
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
