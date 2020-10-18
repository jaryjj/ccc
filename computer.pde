  int x = 0; //x-coordinate of the color boxes

void setup() {
  size (1400, 1200);
  smooth();
  background (255);
  noStroke ();
}

void draw () {
  //red square
  fill (255, 0, 0);
  rect (x, 1000, 200, 200);
  //
  fill (255, 165, 0);
  rect (x+200, 1000, 200, 200);
  fill (255, 255, 0);
  rect (x+400, 1000, 200, 200);
  fill (0, 128, 0);
  rect (x+600, 1000, 200, 200);
  fill (0, 0, 255);
  rect (x+800, 1000, 200, 200);
  fill (75, 0, 130);
  rect (x+1000, 1000, 200, 200);
  fill (238, 130, 238);
  rect (x+1200, 1000, 200, 200);
  //random is needed

  if (mouseX <= x+200 && mouseX >= x && mouseY ){
    ellipse (mouseX, mouseY, 
    

  if (mousePressed) {
    fill (255);
    if (keyPressed && key == 'r') {
      fill (random (0, 255), random (0, 255), random (0, 255));
    }
    ellipse (mouseX, mouseY, 10, 10);
  }
  if (keyPressed && key == 'b') {
    fill (255);
    ellipse (mouseX, mouseY, 50, 50);
  }
  if (keyPressed && key == 'm') {
    fill (255);
    ellipse (mouseX, mouseY, 30, 30);
  }
  if (keyPressed && key == 's') {
    fill (255);
    ellipse (mouseX, mouseY, 10, 10);
  }
  println (mouseX, mouseY);
}
