// Existential Clock

PFont f;
String message = "time is passing";
float thetaH, thetaM;

void setup() {
  size(600, 600);
  f = createFont("Arial", 20);
  thetaH = 0;
  thetaM = 0;
}

void draw() {

  background(255);
  fill(0);
  textFont(f);                  // Set the font
  textAlign(RIGHT);

  pushMatrix();
  translate(width/2, height/2); // Translate to the center
  rotate(thetaH);                // Rotate by theta
  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text(message, 0, 0); 
  // Increase rotation
  thetaH += 0.002;
  popMatrix();

  pushMatrix();
  translate(width/2, height/2); // Translate to the center
  rotate(thetaM);                // Rotate by theta
  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text("but you cannot feel it", 0, 0); 
  popMatrix();
  // Increase rotation
  thetaM += 0.12;
}
