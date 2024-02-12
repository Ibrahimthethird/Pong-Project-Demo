class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x,y,d; //d= diameter
  float xSpeed, ySpeed;
  color colour; 
  int xDirection, yDirection;
  // 
  //Constructor
  Ball() {
  //Constructor is .. hard coded, single variable object
  //Local Varuables, deleted at end of constructor
  int startX = displayWidth*1/2;
  int startY = displayHeight*1/2;
  int referentMeasure = ( width < height ) ? width : height ; //Review Ternary Operator
  // 
  x = startX; //spawn myBall in the middle of the display
  y = startY;
  d = referentMeasure * 1/20;
  colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to int in color var
  xSpeed = displayWidth*5; // width/width = 1
  ySpeed = displayHeight*2; // height/height = 1
  xDirection = -1; //Hard Code will change
  yDirection = -1; //Hard Code will change
} // End Constructor
  //
  void draw() {
     fill(colour);
     ellipse(x, y, d, d); //ball
     fill(0); 
     //
     step();
  }//End draw
  void step() {
    x += xSpeed; // x += xspeed equals x = x + xSpeed
    y += ySpeed; // y += yspeed equals y = y + ySpeed
  } //End step
  void bounce () {
    if () {
      xSpeed *= -1*xDirection;
    }
    if () {
      ySpeed *= -1*yDirection;
    }
  }//End bounce
  //
} //End Ball
//  
 
