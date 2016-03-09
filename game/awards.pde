class Awards extends Obstacles {
  // GLOBAL VARIABLES
  PImage star;
  float moveSpeedStar;
  float starX;
  float starY;


  //CONSTRUCTOR
  Awards() {
    star = loadImage("Banana.png");
    moveSpeedStar = 2;
    starX = random (-1300, -1700);
    starY = random ( 70, 470);
  }



  //FUNCTIONS
  void star() {
    starMove();
    starDisplay();
    starReset();
  }


  void starMove() {

    starX = starX + moveSpeedStar;
  }

  void starDisplay() {
    imageMode(CENTER);  
    image(star, starY, starX, 55, 55);
  }

  void starReset() {
    if (starX > 1600) {
      starX = random (-1300, -1700);
    }
  }
}