float theta;


void setup() {
  size(800,800);
}

void draw() {
  background(0);
  float h = height/4;
  float angle = map(mouseX,0,width,0,90);
  theta = radians(angle);
  
  translate(width/2,height);
  line(0,0,0,-h);
  translate(0,-h);
  branch(h);
}


void branch(float h) {
  h *= 0.6;
  
  if (h > 0.5) {
    pushMatrix();
      rotate(theta);
      line(0,0,0,-h);
      translate(0,-h);
      branch(h);
      stroke(mouseX/3,-mouseX,255);
    popMatrix();
    
    pushMatrix();
      rotate(-theta);
      line(0,0,0,-h);
      translate(0,-h);
      branch(h);
    popMatrix();
  }
}