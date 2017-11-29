import processing.pdf.*;

String[] title = {
  "NEW DISCOVERIES"
};

PFont f, g;
float x; //horizontal placement
int index = 0;

void setup(){
  beginRecord(PDF, "New Discoveries.pdf");
  
  size(500,650);
  loadFont("Monospaced.bold-40.vlw");
  loadFont("Monospaced.italic-25.vlw");
  f = createFont("Monospaced.bold", 40);
  g = createFont("Monospaced.italic", 25);
  
  x = width;
  
}


void draw(){
 
  String[] lines = loadStrings("https://www.google.com/");
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}


  //sky
  noStroke();
  fill(#0F0D0F);
  rect(0,0,500,216.6);
  fill(#150c23);
  rect(0,216.6,500,216.6);
  fill(#241142);
  rect(0,433.2,500,216.6);
  
 
  
  //ground
  fill(#150a26);
  rect(0, 550, 500, 100);
  fill(#341a5b);
  rect(0,550,500,25);
  ellipse(50,550,30,50);
  ellipse(70,550,30,30);
  ellipse(400,530,30,80);
  ellipse(420,550,40,40);
  ellipse(300,570,20,20);
  ellipse(220,580,30,60);
  
  
  //stars in top box
  strokeWeight(3);
  stroke(#A38CE2);
  point(20,30);
  point(400,35);
  point(200,200);
  point(495,5);
  point(100,150);
  point(250,45);
  point(350,110);
  strokeWeight(2);
  point(100,50);
  point(450,150);
  point(250,150);
  
  //stars in middle box
  strokeWeight(2);
  stroke(#764ECF);
  point(20,300);
  point(250,250);
  point(450,350);
  point(100,420);
  strokeWeight(1);
  point(100,230);
  point(350,300);
  point(250,324);
  
  //planet + its moon
  fill(#6b42c4);
  ellipse(450,325,110,110);
  fill(#513099);
  ellipse(450,325,100,100);
  fill(#9b79e5);
  ellipse(400,300,30,30);
  
  
   //planet #2
   noStroke();
  fill(#231e23);
  ellipse(50,50,330,330);
  fill(#764ECF);
  ellipse(50,50,300,300);
  noFill();
  stroke(#764ECF);
  strokeWeight(5);
  rotate(0.5);
  ellipse(150,30,300,100);
  
  
  fill(255);
  rotate(-0.5);
  textFont(f,40);
  textAlign(LEFT);
  text(title[index], x, height-550);
 
  
  x = x - 6;
 
  float w = textWidth(title[index]);
  if (x < -w) {
    x = width;
    index = (index + 1) % title.length;
  }
  
  textFont(g);
  textAlign(CENTER);
  fill(255);
  text("await you in the Andromeda Galaxy", 250, 600);
  
  endRecord();

} 
