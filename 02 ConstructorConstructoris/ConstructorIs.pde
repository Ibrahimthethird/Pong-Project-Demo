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
  int referentMeasures = (width < height) ? width : height ;
   myBall.x = startX; //spawn myBall in the middle of the display
   myBall.y = startY;
   myBall.d = referentMeasures * 1/20;
   myBall.colour = color( random(0,255), random(255), random(255)) ; //random(), random()-shortcut, casting from float to int to color variable
   fill(myBall.colour); //Caution: must reset defaults
 // ellipse(x, y, diameter, diameter); //ball\
 fill(0); //Reset to GrayScale: 0 to 255 in shades of gray
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
