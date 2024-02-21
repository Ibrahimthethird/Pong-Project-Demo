/* Known ERRORs
-Night Mode: Ball Colour is Full Blue
*/
class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x ,y, d; //d= diameter
  color colour; 
  float xSpeed, ySpeed, xSpeedChange=1.0, ySpeedChange=1.0;
  float gravity =0.0;
  boolean disappear = false;
  //static int count = 25; //Static Number for Amount of Ball instances in a firework 
  // 
  //Constructor
  Ball() {
  //Constructor is .. hard coded, single variable object
  //Local Varuables, deleted at end of constructor
  int startX = displayWidth*1/2;
  int startY = displayHeight*1/2;
  int referentMeasure = ( displayWidth < displayHeight ) ? displayWidth : displayHeight ; //Review Ternary Operator
  // 
  this.x = startX; //spawn myBall in the middle of the display
  this.y = startY;
  this.d = referentMeasure * 1/25;
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
  this.d = random(displayWidth*1/25);
  this.xSpeed = random(-50,50);
  this.ySpeed = random(-50,50);
 gravity = gravityParameter;
  }
  //Overloaded Constructor,Moved Ball Constructor
  // Must look like old Ball instance disappear
  Ball(float xParameter, float yParameter, float dParameter, color colourParameter, float xSpeedParameter, float ySpeedParameter, float xSpeedChangeParameter, float ySpeedChangeParameter) {
   this.x = xParameter; //spawn myBall in the middle of the display
   this.y = yParameter;
   this.d = dParameter;
   this.colour = colourParameter;
   this.xSpeed = xSpeedParameter;
   this.ySpeed =  ySpeedParameter;
   this.xSpeedChange = xSpeedChangeParameter;
   this.ySpeedChange = ySpeedChangeParameter;
   //
   //
} //End Moved Ball Constructor
  //
  float xDirection() {
    float xDirection = int (random(-200, 200));
     while (xDirection==0) {
       xDirection = int (random(-200, 200)); //VARIABLE MUST BE POPULATED FIRST
     }
    return xDirection; 
  } //End xSpeedChange
  float yDirection() {
    float yDirection = int (random(-200, 200));
    while (yDirection ==0) {
       yDirection = int (random(-200,200));
    }
    return yDirection;
  } //Edn ySpeedChange
  void draw() {
     fill(colour);
     ellipse(x, y, d, d); //Easter Egg: at bounce diameters changes
     fill(0);     
     if (myBall.x>1900 || myBall.x<0) {
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
    if ( x < 0+(d*(1/2)) || x> displayWidth-(d*(1/2))) xSpeed *= -1;
    if ( y < 0+(d*(1/2)) || y> displayHeight-(d*1/2)) ySpeed *= -1;
  } //End bounce
  //
  void collision () {
    // update square to mouse coordinates
  cx = mouseX;
  cy = mouseY;

  // check for collision
  // if hit, change rectangle color
  boolean hit = circleRect(cx,cy,r, sx,sy,sw,sh);
  if (hit) {
    fill(255,150,0);
  }
  else {
    fill(0,150,255);
  }
  rect(sx,sy, sw,sh);

  // draw the circle
  fill(0, 150);
  ellipse(cx,cy, r*2,r*2);
}


// CIRCLE/RECTANGLE
boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // test left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}
}  //End Ball
