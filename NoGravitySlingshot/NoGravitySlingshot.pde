Blob blob;

float slowDown = 0.05;

PVector originalMouse = new PVector(-1, -1);

void setup() {
  size(600, 600);
  
  blob = new Blob(300, 300);
}

void draw() {
  background(255);
  blob.update();
  blob.render();
  
  if (originalMouse.x != -1 || originalMouse.y != -1) {
    fill(150, 250, 0);
    line(originalMouse.x, originalMouse.y, mouseX, mouseY);
  }
}

void mousePressed() {
  blob.vel.x = 0;
  blob.vel.y = 0;
  
  blob.pos.x = mouseX;
  blob.pos.y = mouseY;
  
  originalMouse.x = mouseX;
  originalMouse.y = mouseY;
}

void mouseDragged() {
  blob.pos.x = mouseX;
  blob.pos.y = mouseY;
}

void mouseReleased() {
  blob.acc.x = originalMouse.x - mouseX;
  blob.acc.y = originalMouse.y - mouseY;
  
  originalMouse.x = -1;
  originalMouse.y = -1;
}
