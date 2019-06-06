class Blob {
  PVector pos = new PVector(0, 0);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);
  
  Blob (int a, int b) {
    pos.x = a;
    pos.y = b;
  }
  
  void update() {
    vel.x += acc.x;
    vel.y += acc.y;
    
    pos.x += vel.x * slowDown;
    pos.y += vel.y * slowDown;
    
    acc.x = 0;
    acc.y = 0;
  }
  
  void render() {
    stroke(1);
    fill(255, 150, 0);
    ellipse(pos.x, pos.y, 20, 20);
  }
}
