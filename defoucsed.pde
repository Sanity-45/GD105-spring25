//im so defocused.
int pac = 10;
int man = 1;
float waka = 0.01; 

void setup() {
  size(1000, 700);
  noStroke();
}


void draw() {
  
background(0, 0, 0, 20);
  
  for (int pac = 0; pac < 999; pac++) {
     frameRate(1000000000) ;

    fill(200, pac, man, random(100, 0));

    float x = map(pac, -10, man + 150, -10, width);

    float y = height / 2 + sin(frameCount * waka + pac) * 270;

    ellipse(x, y, 100, 100);
    
  }
}
