int size = 400;
int myHeight = 100;
int myWidth = 100;
int offset = 150;

int pressed = 0;
int pressedState = 0;

int x = 1;

void setup(){
  size(500,500);
}

void draw(){
  
  if (pressedState == 1){
    background(0,0,100);
  } else {
    background(0,0,200);
  }
  
     if (pressedState == 1){
    fill(222,196,51);
    ellipse(420,80,600,600);
    fill(248, 255, 127);
    ellipse(420,80,550,550);
    fill(255,0,0);
    ellipse(400,100,100,100); //mid //x,y,size,size
    ellipse(230,100,100,100); //mid left
    ellipse(400,270,100,100); //mid bottom
    ellipse(285,215,100,100);
    ellipse(285,-15,100,100);
    ellipse(510,215,100,100);
    ellipse(510,-15,100,100);
    
  }
   
   

  if (keyPressed == true){
    fill(222,196,51);
    ellipse(100,350,420,420);
    fill(248,255,127);
    ellipse(100,350,370,370);
    fill(150,0,0);
    ellipse(100,350,75,75);
    ellipse(100,235,75,75);
    ellipse(100,465,75,75);
    ellipse(215,350,75,75); 
    ellipse(-15,350,75,75);
    ellipse(187.5,262.5,75,75);
    ellipse(187.5, 437.5, 75,75);
    ellipse(12.5,437.5,75,75);
    ellipse(12.5,262.5,75,75);
  }
  
  //mouse pizza
 fill(222,196,51); //crust
 ellipse(mouseX, mouseY, 100, 100); //crust
 fill(255,0,0);
 ellipse(mouseX,mouseY,85,85);
 fill(248,255,85); //cheese
 ellipse(mouseX,mouseY,75,75); //cheese
 
 
 fill(222,196,51); //crust
 ellipse(100,100,150,150); //crust
 fill(248,255,127); //cheese
 ellipse(100,100,125,125); //cheese
 fill(200,0,0);
 ellipse(100,100,25,25); //mid mid
 ellipse(100,140,25,25); //mid bottom
 ellipse(100,60,25,25); //mid top
 ellipse(60,100,25,25); //mid left
 ellipse(140,100,25,25); //mid right
 ellipse(130,130,25,25); //offset right bottom
 ellipse(130,70,25,25); //offset right top
 ellipse(70,70,25,25); //ofset left top
 ellipse(70,130,25,25); //offset bottom left

 
 
 //second pizza
 fill(222,196,51); //crust
 ellipse(400,400,300,300); //crust
 fill(248, 255, 127); //cheese
 ellipse(400,400,250,250); //cheese
 fill(125, 0, 0);
 ellipse(400,475,50,50);
 ellipse(315,425,50,50);
 ellipse(400,400,50,50);
 ellipse(475,425,50,50);
 ellipse(470,350,50,50);
 ellipse(395,310,50,50);
 ellipse(325,345,50,50);
 
 while(x < 10){
    fill(0);
    ellipse(width/4, height/4, (x * 20), (x * 20));
    x++;
   }
   

}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
