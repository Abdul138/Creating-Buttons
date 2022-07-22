//Global Variables
float writingX, writingY, writingWidth, writingHeight;
String whatToDo = "Press q or Q to exit. Press A to add additional text";
String writing = "This is my first keyBoard assignment!";
PFont writingFont;
color black = #030000;
int writingSize;
Boolean aIsPressed = false;
color resetWhite = #FFFFFF;
//
void setup() {
  size (300, 400);
  writingX = width*1/5;
  writingY = height*1/10;
  writingWidth = width*3/5;
  writingHeight = height*1/6;
  writingFont = createFont("Calibri", 45);
  
}// End setup
//
void draw() {

  
  if (aIsPressed == false) {
    fill(resetWhite);
    rect(writingX, writingY, writingWidth, writingHeight);
    fill(black);
    textAlign(CENTER, CENTER);
    writingSize = 20;
    textFont(writingFont, writingSize);
    text(whatToDo, writingX, writingY, writingWidth, writingHeight);
    fill (resetWhite);
  }  
  if (aIsPressed == true) {
    background(resetWhite);
    fill (resetWhite);
    rect(writingX, writingY, writingWidth, writingHeight);
    
    fill(black);
    textAlign(CENTER, CENTER);
    writingSize = 20;
    textFont(writingFont, writingSize);
    text(writing, writingX, writingY, writingWidth, writingHeight);
  }
}//End draw
//
void keyPressed() {
  if (key == 'q' || key=='Q') exit();
  if (key == 'A' || key == 'a') {
    aIsPressed = true;
  }
}// End keyPressed
//
void mousePressed() {
}// End mousePressed
