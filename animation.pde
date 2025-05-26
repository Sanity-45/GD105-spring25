int fishX;
int fishY;
float fishyZ;
int fishS;
int fishS2;
float r=20,g=50,gg=80;
float fishy;
int t ;


void setup() {
  size (1000, 700 );
 fishX = 20 ;  
  //fishY = int (random(350));
 fishyZ = height / 1;
fishS = 50;
fishy = height  / 1;
fishS = int (random(80,100));
fishS2 = fishS/2 ;

fill(random(20),random(50,80),125);

}

void draw() {

  noStroke();
  background(0,114,255);


 fishX = fishX + 4;
fishY = fishY +int (random(-3,-12));
t= t - 20;

 ellipse(fishX,fishyZ-50,fishS+30,fishS2+15);
 triangle(fishX-32,fishyZ-55,fishX-90,fishyZ-15,fishX-94,fishyZ-75);
pushStyle();
fill(0);
arc(fishX+40, fishyZ-60, fishS-75,fishS2-10,0, PI);
fishyZ = height / 3 + sin(frameCount * 0.1) * 50;

  if (fishX >  1090) {  // Make it off-screen before resetting
    fishX = -50;
  }// Reset to the left side
  
popStyle();

pushStyle();
fill(173,130,13);

 arc(500,603,1500,400,0,3);
popStyle();

pushStyle();
fill(247,12,189);
 quad(320,690,395,676,315,603,278,610);
  quad(435,638,456,628,455,602,412,620);
   quad(389,672,431,667,458,624,430,629);
    quad(365,678,418,671,396,557,358,559);
fill(111,54,183);
   arc(433,613,25,23,6,9);
 arc(307,621,35,25,0,27); 
 arc(379,573,35,25,0,27);

 
popStyle();

pushStyle();
fill(182,248,250);

ellipse(fishy+111,fishY+540,39,38);
ellipse(fishy+20,fishY+580,29,32);
ellipse(fishy+202,fishY+590,29,22);
  if (fishY < -750 ) {  // Make it off-screen before resetting
  fishY = 30;
  }// Reset to the Bottom side
fishy = height  / 3 + sin(frameCount * 0.1) * 50;
popStyle();

pushStyle();
//clam

stroke(86);
  strokeCap(ROUND);
  strokeWeight(3);
  fill(100);
 arc(654,t+552,15,23,-20,0); arc(666,t+554,17,37,-27,-6); arc(677,t+552,17,23,-36,9);
 quad(685,t+572,648,t+572,651,t+561,680,t+561);
 
popStyle();


}
