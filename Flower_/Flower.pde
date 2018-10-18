Flowers myFlower1;
Flowers myFlower2;

int r=60; // radius of petals
float ballX;
float ballY;

void setup() {
  size(600,400);
  background(#F0C5C6);
  
  int _r1=60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _speed=2;
  int _pc=#FFA000;
  int _xDirect=1;
  int _yDirect=1;
  myFlower1 = new Flowers(_r1,_petals,_x,_y,_pc,_speed,_xDirect,_yDirect);
  myFlower2 = new Flowers(_r1,_petals,_x+random(-100,100),_y+random(-100,100),_pc,_speed-1,_xDirect,_yDirect);
}

void draw(){
  myFlower1.display();
  myFlower2.display();
  myFlower1.movebounce();
  myFlower2.movebounce();

}  
