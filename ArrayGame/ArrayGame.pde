User user; // The person playing the game
Bubble[] bubbles = new Bubble [6]; // Ball and amount of balls displaying on the screen
Time timer; // time table

void setup () {
  size (800, 800); // window size
  
  //declaring each of the integers and initializing the variables
  int userSize = 40; // declaring the value of the size of the user  
  int bubbleSize = 100; //declaring the value of the ball size
  int pointCounter = 0; //declaring the value of point counter 
  
    for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble (bubbleSize, userSize);
  }
  
  user = new User (userSize);
  timer = new Time (counter);
  
}
  
  void draw() {
    //display of each bubble
    background (40,50,10);
    bubbles[0].ascend(); // bubble goes up
    bubbles[0].display(); // place the bubble on the screen
    bubbles[0].top();

    bubbles[1].ascend();
    bubbles[1].display();
    bubbles[1].top();
    
    bubbles[2].ascend();
    bubbles[2].display();
    bubbles[2].top();
    
    bubbles[3].ascend();
    bubbles[3].display();
    bubbles[3].top();
    
    bubbles[4].ascend();
    bubbles[4].display();
    bubbles[4].top();
    
    bubbles[5].ascend();
    bubbles[5].display();
    bubbles[5].top();
    
    bubbles[6].ascend();
    bubbles[6].display();
    bubbles[6].top();
      
    timer.display();
    timer.score();
    player.display();
    
    for (int i = 0; i < bubbles.length; i++) {
      balls[i].spawn();
      balls[i].damage();
    }
    
  }
