Flowers myFlower1;
Flowers myFlower2;
Flowers myFlower3;

int r=60; // radius of petals
float ballX;
float ballY;

void setup() {
  size(600,400);
  background(#43AF76);
  
  int _r1=60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flowers(_r1,_petals,_x,_y,_pc);
  myFlower2 = new Flowers(_r1,_petals,_x+random(-100,100),_y,_pc);
myFlower3 = new Flowers(_r1,_petals,_x+50,_y,_pc);
}

void draw(){
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
noLoop();


}

  
