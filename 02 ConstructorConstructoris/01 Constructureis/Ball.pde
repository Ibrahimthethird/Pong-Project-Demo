/* Known ERRORs
-Night Mode: Ball Colour is Full Blue
*/
class Ball
{
  //Global Variables  //Those are not for the whole program, JUST for this class
  float x,y,d; //d= diameter
  float xSpeed, ySpeed, xSpeedChange, ySpeedChange;
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
  this.xSpeed = xSpeedChange(); // width/width = 1 //float could be any number  this.ySpeed = ySpeedChange(); // height/height = 1 //float could be any number
  this.xSpeedChange = 1; //Hard Code will change //float, tauncated, must be 2 minimum
  this.ySpeedChange = 1; //Hard Code will change //float, traucated must be 2 minimum
} // End Constructor
  //
  // Multiple Constuctors
  Firework () { //End Firework Ball
 Ball(float gravity) {  //Place Holder
  x = mouseX;//ERROR: trigger when the ball enters goal area
  y = mouseY;//ERROR: trigger when the ball enters goal area
  colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to int in color var
  d = random(displayWidth*1/255);
  xSpeed = random(-5,5);
  ySpeed = random(-5,5);
  gravity = gravity;
  }
  }
  //
  float xSpeedChange() {
    float xSpeedChange = int (random(-1000,1000));
     while (xSpeedChange==0) {
       xSpeedChange = int (random(-1000,1000)); //VARIABLE MUST BE POPULATED FIRST
     };
  };
    return xSpeedChange; 
  }; //End xSpeedChange
  float ySpeedChange() {
    float ySpeedChange = int (random(-1000,1000));
    while (ySpeedChange ==0) {
       ySpeedChange = int (random(-1000,1000));
    }
    return ySpeedChange;
  }; //Edn ySpeedChange
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
     step();
  }//End draw
  void step() {
     bounce();
     ySpeed += gravity;
    x += xSpeed * xSpeedChange; // x += xspeed equals x = x + xSpeed
    y += ySpeed * ySpeedChange;// y += yspeed equals y = y + ySpeed
  } //End step
  void bounce() {
    if ( x < 0+(d*(1/2)) || x> displayWidth-(d*(1/2))) xSpeed *= -1;
    if ( y < 0+(d*(1/2)) || y> displayHeight-(d*(1/2))) ySpeed *= -1;
  }//End bounce
  //
}//End Ball
//   
