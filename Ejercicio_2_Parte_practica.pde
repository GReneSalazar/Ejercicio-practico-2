boolean isEllipse = true;  // Indica si se debe dibujar una elipse o un cuadrado
color currentColor;        // Color actual de la forma

void setup() {
  size(400, 400);
  currentColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  
  fill(currentColor);
  if (isEllipse) {
    ellipse(width / 2, height / 2, 100, 100);
  } else {
    rectMode(CENTER);
    rect(width / 2, height / 2, 100, 100);
  }
}

void mouseClicked() {
  isEllipse = !isEllipse;  // Cambia entre elipse y cuadrado
  currentColor = color(random(255), random(255), random(255));  // Cambia el color
}
