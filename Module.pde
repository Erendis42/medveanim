class Module {
  int x, y, Y;
  int speed;
  int phase;
  PImage img;
  int amplitude;
  int yDirection; // upwards by default
  int ySpeed;
  
  // Contructor
  Module(int initialX, int initialY, int initialSpeed, boolean initialPhase) {
    img = loadImage("medveallatka.png");
    x = initialX;
    y = Y = initialY;
    speed = initialSpeed;  
    amplitude = 10;    
    yDirection = (initialPhase ? -1 : 1);
  }
  
  // Custom method for updating the variables
  void update() {    
    x = x - (speed);
    
    if (x <= 0) {
      x = width;
    }
      
      
    if (y <= Y - amplitude) {
      yDirection = 1;
    }
    
    if (y >= Y + amplitude) {
      yDirection = -1;
    }
    
    

    if (yDirection == -1) {
      y += 2*yDirection;
    } else {
      y += 1*yDirection;
    }
  }
  
  void display() {
    image(img, x, y);
  }
}
