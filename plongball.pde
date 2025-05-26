int gamestate = 0;
float x1, y1,x2,y2, xSpeed, ySpeed, dia, w, h; //our variables to keep track of for our circle
float gravForce; 

void setup(){
 size (800,570); 
  x1 = width/2; //the center of the x axis
  y1 = 30; //the center of the y axis
   x2 = mouseX; 
  y2 = 470; 
  w = 150;
  h = 30;
  xSpeed = 5; //(right)
  ySpeed = 5; //(down)
  dia = 30; 
  gravForce = 0.17; // downward force
}
void draw(){
 
   if (gamestate == 0) { 
  background (200,170,50); 
  rectMode(CENTER);
  x2 = mouseX; //the center of the x axis
  
  rect(x2, y2,w,h);

  ellipse(x1, y1, dia, dia); //draw our circle
   ySpeed += gravForce; //gravity = constant downward force (positive) upon the ySpeed
  x1 += xSpeed; //move x by this amount each frame
  y1 += ySpeed; //move y by this amount each frame
  
  if (y1 > height - dia/2){ //if the y position goes beyond the bottom boundary minus the circles radius (dia/2)
    y1 = height - dia/2; //this is something added to stop it from glitching through the ground
    ySpeed *= -0.8; //make it 80% as fast in the opposite (-) direction
    xSpeed *= 0.8; //make the xSpeed 80% as fast to slow it down to simulate friction
  }
  if (x1 > width - dia/2){ //if the x position goes beyond the right boundary minus the circles radius (dia/2)
    xSpeed *= -1; //reverse (negative) the direction by 100%
  }
  if (y1 < 0 + dia/2){ //if the y position goes beyond the top boundary plus the circles radius (dia/2)
    ySpeed *= -1; //reverse (negative) the direction by 100%
  }
  if (x1 < 0 + dia/2) {  //if the x position goes beyond the left boundary plus the circles radius (dia/2)
    xSpeed *= -1; //reverse (negative) the direction
  }
  
  //help from "happycoding" webpage for rect & rect collion 
 //if (mouseX + mouseRectWidth > centerRectX && mouseX < centerRectX + centerRectWidth && mouseY + mouseRectHeight > centerRectY && mouseY < centerRectY + centerRectHeight) {

if (y1  > 540){ gamestate = 1;}

 if (x1 + dia > x2 && x1 < x2 + w && y1 + dia > y2 && y1 < y2 + h) {
    
  ySpeed *= -1.11;
  xSpeed *= random(1.1,-1.1);
  
}if( ySpeed > 8 ){ //caping speed max
  ySpeed = 8;

}if (xSpeed > 8){
xSpeed = 4.1;
}}else if (gamestate == 1){

  background(0);
 textMode(CENTER);
 textSize(30);

    text("press R to try again...", width/2,height/2); 




if (keyPressed) {
if (key == 'r' || key == 'R') 
      gamestate = 0; 
      y1 = 30;
      x1 = width/2;
   }
 
 }



}
