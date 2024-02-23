//Global Variables //This is for the whole program except classes.
Ball myBall, yourBall;
Ball[] fireworks = new Ball[5];
Ball movedBall;
//
color pongTableColour = 255;

//Ball // yourBall
// Constructor is populating the instence of ball
void setup() {
  fullScreen();
  noStroke();
  //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
   */
  //Population
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
  //Trigger: Left Goal, Right Gola
  //Error: Ball Instance still bounces
  if ( myBall.x<(2*myBall.d) || myBall.x>( displayWidth - (2*myBall.d) ) || movedBall.x<(2*movedBall.d) || movedBall.x>( displayWidth - (2*movedBall.d) ) ) {
    if (myBall.x<(2*myBall.d) || myBall.x>(displayWidth-(2*myBall.d))) netExplosion( myBall.x, myBall.y);
    if (movedBall.x<(2*movedBall.d) ||movedBall.x>(displayWidth-(2*movedBall.d))) netExplosion( movedBall.x, movedBall.y);
  }
  for (int i=0; i < fireworks.length; i++) { //GOAL! Firework Constructor Execution, based on X-value
    fireworks[i].draw();
  }
  movedBall.draw();
} //End draw

void keyPressed() {
} //End Keypressed
//
void mousePressed() {
  movedBall = new Ball(mouseX, mouseY, myBall.d, myBall.colour, myBall.xSpeed, myBall.ySpeed, myBall.xSpeedChange, myBall.ySpeedChange);
} //End mousePressed
//
//void ballCollisions() {}
//
//End Drivers
