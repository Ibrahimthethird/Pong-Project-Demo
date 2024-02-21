//Global Variables //This is for the whole program except classes. 
 Ball myBall, yourBall;
 Ball[] fireworks = new Ball[500];
 Ball movedBall;
 color pongTableColour = 255;
 
 float cx = 0;      // circle position (set with mouse)
 float cy = 0;
 float r = 30;      // circle radius
 
 float sx = 200;    // square position
 float sy = 100;
 float sw = 200;    // and dimensions
 float sh = 200;
 //Ball // yourBall
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  //Population
  noStroke();
  myBall = new Ball(); //Both 1/2's of constructor
  for (int i = 0; i < fireworks.length; i++ ) {
  fireworks[i] = new Ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  movedBall = new Ball(displayWidth, displayHeight, myBall.d, myBall.colour, myBall.xSpeed, myBall.ySpeed, myBall.xSpeedChange, myBall.ySpeedChange);
  //
}  //End setup
//
void draw() {
  background(pongTableColour); //NIght Mode is known in Class, not Driver
  myBall.draw();
  if ( myBall.disappear == true ) {
    //EMPTY IF
    //myBall.step(); //Keeps active the variables but not .draw
  } else {
    myBall.draw();
  }
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  movedBall.draw();
} //End draw
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.5);
   }
   movedBall = new Ball(mouseX, mouseY, myBall.d, myBall.colour, myBall.xSpeed, myBall.ySpeed, myBall.xSpeedChange, myBall.ySpeedChange);
} //End mousePressed
//
//void ballCollisions() {}
//
//End Drivers
