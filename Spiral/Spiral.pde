float r = 0;
float theta = 0;
float increment = 0.01;
float time;
float n;

void setup() {
  size (500,500);
  background(255);
}

void draw() {
  float x = r * cos (theta);
  float y = r * sin (theta);
  
  float n = noise(time)*width;
  
  //Ellipse drawing at x,y
  noStroke();
  fill(#A7CDFF);
  ellipse(x + width/2,y + height/2, n, n);
  
  //increment the angle
  theta += 0.1;
  r += 0.1;
  time += increment;
}
