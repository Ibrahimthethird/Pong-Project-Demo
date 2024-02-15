//Global Variables //This is for the whole program except classes. 
 Ball myBall;
 Ball[] fireworks = new Ball[25];
 Ball movedBall;
// Ball yourBall;
 //
 color pongTableColour = 255; //ERROR! move to Table Class
 //Ball // yourBall
// Constructor is populating the instence of ball
void setup() {
  fullScreen(); //can also use size() but will not be full screen
  /*ScreenSizeCheckerr() for landscape, Protrait, Square views
  */
  color pongTableColour = 255;
  //Population
  myBall = new Ball(); //Both 1/2's of constructor
  for (int i = 0; i < fireworks.length; i++ ) {
  fireworks[i] = new Ball(width*-1, height*-1, 0.5);
  }
  movedBall = new Ball(displayWidth*-1, displayHeight*-1);
  //
}
  // yourBall = new Ball();
  //End setup
//
void draw() {
  background(pongTableColour); //NIght Mode is known in Class, not Driver
  myBall.draw();
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
    }
    movedBall.draw();
} //End draw
//
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
    for (int i=0; i < firewords.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.5);
   }
   movedBall = new Ball(mouseX, mouseY, myBall.d, myBall.colour,);
} //End mousePressed
//
void ballCollisions() {}
//
//End Drivers
