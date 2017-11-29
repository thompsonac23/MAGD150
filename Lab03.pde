boolean flipFlopper;

int red; 
int green;
int blue;

float deltaMouseX; 
float deltaMouseY;

float w = 30;
float h = 30;

int start = 0;
int stop = 0;
int elapsed = 0;
//blink 

void setup(){
  size(2000,1000);
surface.setResizable(true);
background(32);


//blink
  frameRate(12);
  start = millis();
//blink
  
}

void draw(){
  
  //new
   noStroke();
  
  red = (red + 3) % 256;
  green = (green + 0) % 256;
  blue = (blue + 0) % 256;
  fill(red, green, blue);

  w = (w) % (height / 10);
  h = (h) % (height / 10);

  ellipse(mouseX, mouseY, w, h);

  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;

  flipFlopper = !flipFlopper;
  //new
  
//blink
if (frameCount % 75 == 0)
    stroke(255);
    fill(75,0,0);
    ellipse(width / 1.2, height / 1.2, 400, 400);
    stop = millis();
    elapsed = stop - start;
    start = stop;
    println("elapsed: " + elapsed);
//blink

//blink
  if (frameCount % 30 == 0)
    stroke(255);
    fill(255);
    ellipse(width / 6.0, height / 6.0, 210, 210);
    stop = millis();
    elapsed = stop - start;
    start = stop;
    println("elapsed: " + elapsed);
//blink

//blink
if (frameCount % 10 == 0)
    stroke(255);
    fill(0);
    ellipse(width / 2.0, height / 2.0, 800, 800);
    stop = millis();
    elapsed = stop - start;
    start = stop;
    println("elapsed: " + elapsed);
//blink

float x1 = width * 0.75;
float y1 = height * 0.25;
float h1 = min(width, height) * 0.5;
float w1 = h1;

strokeWeight(30);
stroke(255,0,0);
fill(94,94,94);
ellipse(x1, y1, w1, h1);

float x2 = width * 0.2;
float y2 = height * 0.7;
float w2 = w1 * 1.25;
float h2 = constrain(w2, 0, height);

strokeWeight(55);
stroke(255);
fill(207,0,0);
ellipse(x2, y2, w2, h2);

float x3 = width * 0.70;
float y3 = height * 0.40;
float h3 = min(width,height) * .90;
float w3 = h1;

strokeWeight(60);
stroke(69);
fill(34);
ellipse(x3,x3,w3,h3);

  }
