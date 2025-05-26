int gameState;


float dotx;
//random one
float doty;
//ranndom two 
int dotT;
//timespan
void setup() {
  size(1000, 800);
  gameState = 0;
  textAlign(CENTER);
  rectMode(CENTER);
  dotx = random(200,800);
doty = random(270,530);
  frameCount = 0;
}

void draw() {
  background(0, 0, 0); 
dotx = 0 + random(200,800);
doty = 0 + random(270,530);
 frameRate(120);
dotT = 40;
 if (gameState == 0) { //title screen
  noFill();
   stroke(200,0,20);
    triangle(width/2, 500, 800, 200,180,200); //title box
    fill(251, 0, 0); 
    textSize(40); 
    text("Quick * ", width/2, height/2); 
    
     if (keyPressed) { 
      gameState = 1; 
    }
    textSize(12); 
    text("press a key begin", width/2, 700); 
  } else if (gameState == 1) { //play game

 // if (frameRate(4) == 0) {
   frameRate(1);
    ellipse(dotx,doty,dotT,dotT);
  
//}
 
  textSize(24);
    text("press the dot win, you only have one shot~", width/2, 200); //instructions
    if (mouseX >= dotx && mouseY >= doty && mousePressed) { 
      gameState = 3;
      
  } else if (mouseX != dotx && mouseY != doty && mousePressed) {  
    
      gameState = 2; 
    }
  } else if (gameState == 2) { //lose screen
  
    background(41, 40, 40); 
    text("slow...", width/2, height/2); 
    text("press R to try again...", width/2, 600); 
} else if (gameState == 3) { //win 
 
    background(75, 255, 75);
    text("not bad...", width/2, height/2); 
    
    text("press W to go again.", width/2, 200); 
  }
   if (keyPressed) {
if (key == 'r' || key == 'R') 
      gameState = 1; 
   }
    if (keyPressed) {
if (key == 'w' || key == 'W') 

 gameState = 0;
}
}
