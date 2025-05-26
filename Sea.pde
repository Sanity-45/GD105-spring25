float bubblesX [] = new float [50];
float bubblesY [] = new float [50];
float bubblesDia [] = new float [50];
float bubblesSP [] = new float [50];

float minowX [] = new float [100];
float minowY [] = new float [100];
float minowSize [] = new float [100];
float minowSpeed [] = new float [100];

void setup() {
  size(1000, 650);

  for (int i = 0; i < 50; i++) {


    bubblesX [i]= random(width);
    bubblesY [i]= random(height);
    bubblesDia [i]=random(20, 40);
    bubblesSP[i]= random(5);
  }

  for (int y = 0; y < 100; y++) {


    minowX [y]= random(width);
    minowY [y]= random(height);
    minowSize [y]=random(12, 30);
    minowSpeed[y]=random(12);
  }
}

void draw() {
 frameRate(30);
  background(41, 59, 149, 20);

  for (int i = 0; i < 50; i++) {

    strokeWeight(5);
    stroke(255, 255, 255, 44);
    noFill();
    ellipse (bubblesX[i], bubblesY[i], bubblesDia[i], bubblesDia[i]);
    bubblesY[i] -=2;
    bubblesX[i] += cos(frameCount * 0.1)* 5;

    if (bubblesY[i] < -20 ) {
      bubblesY[i] += random(height+20, height +40);
      bubblesX[i] = random (width);
      bubblesDia[i] = random (15, 45);
    }

    if (dist(mouseX, mouseY, bubblesX[i], bubblesY[i]) > bubblesDia[i] / 2 && mousePressed) {
      bubblesY[i] -= bubblesSP[i];
    } else {
      bubblesY[i] += bubblesSP[i];
      strokeWeight(5);
      stroke(255, 255, 255, 44);
      noFill();
      ellipse (bubblesX[i], bubblesY[i], bubblesDia[i], bubblesDia[i]);
    }
  }
  //fishes
  for (int y = 0; y < 100; y++) {

    strokeWeight(2);
    stroke(0);
   //move fish back
    if (keyPressed) {
if (key == 'w' || key == 'W')
      minowX[y] +=15;
    minowY[y] -= cos(frameCount * 0.1);
     
     }else{

    minowX[y] -=2;
    minowY[y] += cos(frameCount * 0.1)* 1.5;}
    
    if (dist(mouseX, mouseY, minowX[y], minowY[y]) < minowSize[y] / 3 && mousePressed) {

      minowX[y] += minowX[y];
    } else {

      fill(random(sin(frameCount * 0.01)*230,sin(frameCount * 0.01)*250), random(cos(frameCount*0.01)*480,cos(frameCount*0.01)*500), random (-cos(frameCount*0.01)*350 ,-cos(frameCount*0.01)*370));
      minowX[y] -= minowSpeed[y];

      ellipse (minowX[y], minowY[y], minowSize[y]+11, minowSize[y]);
      
      fill(1);
      arc( minowX[y]-10, minowY[y]-7, 10, 14, 0, PI);
      arc( minowX[y]+19.85, minowY[y]-1.02, 10, 14, 1.12, 5.7);
    }

    if (minowX [y] < -20 ) {
      minowX[y] += random(width+20, width +40);
      minowY[y] = random (height);
      minowSize[y] = random (15, 30);
    }
  }
}
