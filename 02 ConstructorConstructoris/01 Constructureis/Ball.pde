/* Known ERRORs
-Night Mode: Ball Colour is Full Blue
*/
class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x ,y, d; //d= diameter
  float xSpeed, ySpeed, xSpeedChange=1.0, ySpeedChange=1.0;
  color colour; 
  float gravity =0.0;
  //static int count = 25; //Static Number for Amount of Ball instances in a firework 
  // 
  //Constructor
  Ball() {
  //Constructor is .. hard coded, single variable object
  //Local Varuables, deleted at end of constructor
  int startX = displayWidth*1/2;
  int startY = displayHeight*1/2;
  int referentMeasure = ( width < height ) ? width : height ; //Review Ternary Operator
  // 
  this.x = startX; //spawn myBall in the middle of the display
  this.y = startY;
  this.d = referentMeasure * 1/20;
  this.colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to int in color var
  this.xSpeed = xDirection(); // width/width = 1 //float could be any number  this.ySpeed = ySpeedChange(); // height/height = 1 //float could be any number
  this.ySpeed = yDirection();
  this.xSpeedChange = 1.0; //Hard Code will change //float, tauncated, must be 2 minimum //Break bounce physics
  this.ySpeedChange = 1.0; //Hard Code will change //float, traucated must be 2 minimum //Change speeds 
} // End Ball Constructor
  //
  // Multiple Constuctors
//End Firework Ball
// Multiple COnstructors are by identifying parameters
 Ball(float xParameter, float yParameter, float gravityParameter) {  //Place Holder
  this.x = xParameter;//ERROR: trigger when the ball enters goal area
  this.y = yParameter;//ERROR: trigger when the ball enters goal area
  this.colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to int in color var
  this.d = random(displayWidth*1/255);
  this.xSpeed = random(-5,5);
  this.ySpeed = random(-5,5);
 gravity = gravityParameter;
  }
  //Overloaded Constructor,Moved Ball Constructor
  // Must look like old Ball instance disappear
  Ball(float xParameter, float yParameter, float dParameter, colourParameter, ) {
   this.x = xParameter; //spawn myBall in the middle of the display
   this.y = yParameter;
   this.d = dParameter;
   this.colour = colourParameter;
   this.xSpeed = ;
   this.ySpeed = ;
   this.xSpeedChange = ;
   this.ySpeedChange = ;
   //
   //
} //End Moved Ball Constructor
  //
  float xDirection() {
    float xDirection = int (random(-1000,1000));
     while (xDirection==0) {
       xDirection = int (random(-1000,1000)); //VARIABLE MUST BE POPULATED FIRST
     }
    return xDirection; 
  } //End xSpeedChange
  float yDirection() {
    float yDirection = int (random(-1000,1000));
    while (yDirection ==0) {
       yDirection = int (random(-1000,1000));
    }
    return yDirection;
  } //Edn ySpeedChange
  void draw() {
     fill(colour);
     ellipse(x, y, d, d); //Easter Egg: at bounce diameters changes
     fill(0);     
     if (xSpeed>500 || xSpeed<0) {
      pongTableColour = color(random(255), random(255), random(255));
     }
      if (ySpeed>500 || ySpeed<0) {
      pongTableColour = color(random(255), random(255), random(255));
      }
     //    
     step(); //Manipulating the Variables
  }//End draw
  void step() {
    bounce();
    ySpeed += gravity; //Ball() is not affected, thus PONG Ball has no gravity
    x += xSpeed * xSpeedChange; // x += xspeed equals x = x + xSpeed
    y += ySpeed * ySpeedChange;// y += yspeed equals y = y + ySpeed
  } //End step
  void bounce() {
    if ( x < 0+(d*(1/2)) || x> displayWidth-(d*(1/2))) {
      xSpeed *= -1;
    }
    if ( y < 0+(d*(1/2)) || y> displayHeight-(d*(1/2))) {
      ySpeed *= -1;
  }//End bounce
  //
  }//End Bal
}
