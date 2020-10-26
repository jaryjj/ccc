int x = 0; //x-coordinate of the color boxes
int y = 800;//y-coordinate of the color boxes
float a = 255; //fill colour (red)
float b = 255; //fill colour (green)
float c = 255; //fill colour (blue)
int r = 10; //radius of each point

/* I included 2 extensions:
 
 1. Inclusion of an eraser:  when the "e" key is pressed, the eraser is activated.
 2. Different Thicknesses:  when the "l" (large), "m" (medium), "s" (small) keys are pressed, the size of the circle changes. 
 3. Clear all function:  when the "r" key is pressed, the canvas is cleared.
 4. Fill change:  when the "f" key is pressed, and a colour is already chosen by the user, the fill will change to that colour.  Please know that the eraser will not change colour, as the true background is still white*/

void setup() {
  size (1400, 1000);
  smooth();
  background (255);
  noStroke ();
}

void draw () {
  //red square
  fill (255, 0, 0);
  rect (x, y, 200, 200);
  //orange square
  fill (255, 165, 0);
  rect (x+200, y, 200, 200);
  //yellow square
  fill (255, 255, 0);
  rect (x+400, y, 200, 200);
  //green square
  fill (0, 128, 0);
  rect (x+600, y, 200, 200);
  //blue square
  fill (0, 0, 255);
  rect (x+800, y, 200, 200);
  //purple square
  fill (75, 0, 130);
  rect (x+1000, y, 200, 200);
  //random square
  fill (random (0, 255), random (0, 255), random (0, 255));
  rect (x+1200, y, 200, 200);

  //point radius based on key that is pressed
  if (keyPressed && key == 'l') {
    r = 50;
  }
  if (keyPressed && key == 'm') {
    r = 30;
  }
  if (keyPressed && key == 's') {
    r = 10;
  }

  //red square pressed
  if (mousePressed && mouseX <= 200 && mouseY >= 800) {
    fill (a = 255, b = 0, c = 0);
  }
  //orange square pressed
  if (mousePressed && mouseX >= 200 && mouseX <= 400 && mouseY >= 800) {
    fill (a = 255, b = 165, c = 0);
  }
  //yellow square pressed
  if (mousePressed && mouseX >= 400 && mouseX <= 600 && mouseY >= 800) {
    fill (a = 255, b = 255, c = 0);
  }
  //green square pressed
  if (mousePressed && mouseX >= 600 && mouseX <= 800 && mouseY >= 800) {
    fill (a = 0, b = 128, c = 0);
  }
  //blue square pressed
  if (mousePressed && mouseX >= 800 && mouseX <= 1000 && mouseY >= 800) {
    fill (a = 0, b = 0, c = 255);
  }
  //purple square pressed
  if (mousePressed && mouseX >= 1000 && mouseX <= 1200 && mouseY >= 800) {
    fill (a = 75, b = 0, c = 130);
  }
  //random square pressed
  if (mousePressed && mouseX >= 1200 && mouseY >= 800) {
    fill (a = random (0, 255), b = random (0, 255), c = random (0, 255));
  }
  //background color change activated when "f" pressed
  if (keyPressed && key == 'f') {
    fill (a, b, c);
    rect (0, 0, 1400, 800);
  } 
  //eraser activated when "e" pressed
  if (keyPressed && key == 'e') {
    fill (a = 255, b = 255, c = 255);
  }
  if (mousePressed && mouseY <= 800) {
    fill (a, b, c);
    ellipse (mouseX, mouseY, r, r);
  }
  //clear all activated when "r" pressed
  if (keyPressed && key == 'r') {
    fill (255);
    rect (0, 0, 1400, 800);
  } 
  println (mouseX, mouseY);
}   
