class Flowers {

  //Variables

  float r; //radius of the flower petal
  int n_petals; //number of petals
  float x; //x-position of the center of the flower
  float y; //y-position of the center of the flower
  int petalColor; // hexadecimal numver for the color of petals
  int speed; //flower velocity
  int xDirect; // x position
  int yDirect; // y position

  Flowers(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int temp_speed, int temp_xDirect, int temp_yDirect) {
    r = temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    speed=temp_speed;
    xDirect = temp_xDirect;
    yDirect = temp_yDirect;
  }
  
  void display() {
    fill(petalColor); //color of the petals
    int numPetals=5; //number of petals
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      //ballX= width/2 + r*cos(i);
      //ballY= height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0); 
    ellipse(x, y, r*1.2, r*1.2);
    movebounce();
  }
  void movebounce(){
    x = x + (speed * xDirect);
    y = y + (speed * yDirect);
    if (x > width-r || x < r) {
      xDirect *= -1;
    }
   if (y > height-r || y < r) {
      yDirect *= -1; //
   }
}}
