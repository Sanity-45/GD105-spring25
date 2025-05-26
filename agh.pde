int one;
int two;
int three;
int four;

void setup() {
  size (1000, 700 );
one=0;
two=0;
three=0;
four=0;
}

void draw() {

  noStroke();
  background(22,153,68);  
fill(255);
ellipse(one +500,two+ 350,three+50,three+50);


if (mouseX > 600){ 
  one= one +2;
}

if (mouseX < 400){ 
  one= one -2;
}
if (mouseY > 400){ 
  two= two +2;
}
if (mouseY < 300){ 
  two= two -2;
}

fill(255,0,0);

 rect(877,13,104,104);
 
// if (one >= 357 && two <= 120){
//  exit();;}
 // if (mouseX == one && mouseY == two){ //if our cursor's x and y positions match our circle's
 //   three++;; //then make the diameter bigger
//  } 
//println(mouseX,mouseY);
}
