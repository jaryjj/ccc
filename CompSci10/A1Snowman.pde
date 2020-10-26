/* ***********************************************************************
 * Ryan Fang
 * Assignment 1 - Snowman
 * Block 4 (Thurs AM)
 * October 15, 2020
 
 * This program is my own work - RF  */

/* I added 3 extensions
 1. The hat follows the mouse
 2. The sky changes from day to night when the mouse is pressed.
 3. When a key is pressed, the bottom snowball turns blue and a button is visible.*/

PImage img;
void setup() {
  size(1200, 900);
  smooth ();
  noStroke ();
}
void draw() {
  // Background Color
  background (0, 140, 204);
  // Black Nighttime Background
  if (mousePressed) {
    background (0);
  }
  // Snow
  fill (214, 227, 255);
  rect (0, 800, 1200, 100);
  // Bottom Body Snowball
  // Snowball Changes Color
  if (keyPressed) {
    fill (0, 0, 255);
  } else {
    fill (255, 255, 255);
  }
  ellipse (600, 700, 400, 400);
  // Snowball has Additional Button
  if (keyPressed) {
    fill (0);
    ellipse (600, 700, 40, 40);
  }
  // Top Body Snowball
  fill (255);
  ellipse (600, 350, 300, 300);
  // Hat
  // Hat Turns Green During Nighttime to Remain Seen
  if (mousePressed) {
    fill (39, 80, 59);
  } else {
    fill (0);
  }
  // Hat moves with the mouse
  beginShape ();
  vertex (mouseX, mouseY);
  vertex (mouseX+300, mouseY);
  vertex (mouseX+300, mouseY-50);
  vertex (mouseX+225, mouseY-50);
  vertex (mouseX+225, mouseY-150);
  vertex (mouseX+75, mouseY-150);
  vertex (mouseX+75, mouseY-50);
  vertex (mouseX, mouseY-50);
  endShape ();
  // Tree
  img = loadImage ("tree.png");
  image(img, 800, 300);
  // Coal Eyes
  fill (0);
  ellipse (550, 300, 20, 20);
  ellipse (650, 300, 20, 20);
  // Sun
  // Sun Blends In With Nighttime
  if (mousePressed) {
    fill (0);
  } else {
    fill(247, 217, 23);
  }
  ellipse (200, 200, 200, 200);
  // Moon
  fill (255);
  // Moon Appears at Nighttime
  if (mousePressed) {
    ellipse (1000, 200, 200, 200);
  }
  // Button Nose
  fill (0);
  ellipse (600, 350, 40, 40);
  fill (255);
  ellipse (590, 350, 10, 10);
  ellipse (610, 350, 10, 10);
  // Pipe
  fill (55, 23, 9);
  beginShape ();
  vertex (600, 400);
  vertex (600, 450);
  vertex (850, 450);
  vertex (850, 350);
  vertex (800, 350);
  vertex (800, 400);
  endShape ();
}
