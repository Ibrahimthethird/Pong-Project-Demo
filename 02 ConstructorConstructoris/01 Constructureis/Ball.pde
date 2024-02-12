/* Known ERRORs
-Night Mode: Ball Colour is Full Blue
*/
class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x,y,d; //d= diameter
  float xSpeed, ySpeed, xDirection, yDirection;
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
  xSpeed = 3; // width/width = 1 //float could be any number
  ySpeed = 3; // height/height = 1 //float could be any number
  xDirection = int (random(-1, 1); //Hard Code will change
  yDirection = int (random(-1,1); //Hard Code will change
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
     bounce();
    x += xSpeed; // x += xspeed equals x = x + xSpeed
    y += ySpeed; // y += yspeed equals y = y + ySpeed
  } //End step
  void bounce() {
    if ( x < 0+(d) || x> displayWidth-(d*(1/100))) xSpeed *= xDirection;
    if (  y < 0+(d) || y> displayHeight-(d*(1/100))) ySpeed *= yDirection;
  }//End bounce
  //
} //End Ball
//  
 
