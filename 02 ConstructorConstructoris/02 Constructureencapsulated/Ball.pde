class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x,y,d; //d= diameter
  color colour; 
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
  } // End Constructor
  //
  void draw() {
      fill(colour);
      ellipse(x, y, d, d); //ball
      fill(0); 
  }//End draw
  //
} //End Ball
//
  //Population of Object Variables - other 1/2 of constructor
  
 
