

// GLOBAL VARIABLES
class ObstaclesDisplay {
  PImage obs;
  float obstaclesRY;
  float obstaclesLY;
  float obstaclesRX;
  float obstaclesLX;
  boolean cashedL;
  boolean cashedR;
  //movement speed of obsticles
  float moveSpeed;




  // CONSTRUCTOR
  ObstaclesDisplay(int i) {
    obstaclesRX = - 500+(i*500);
    obstaclesLX = - 750+(i*500);
    obs = loadImage("Grein.png");
    obstaclesRY = random(150, 320);
    obstaclesLY = random(150, 320);
  }

  // FUNCTIONS





  void obstaclesMove(float s) {
    moveSpeed = s;
    obstaclesRX = obstaclesRX + moveSpeed;
    obstaclesLX = obstaclesLX + moveSpeed;
  }

  void obstaclesCreateRight() {
    imageMode(CORNER);
    image(obs, obstaclesRY, obstaclesRX, 500-obstaclesRY, 12);
  }


  void obstaclesCreateLeft() {
    image(obs, 0, obstaclesLX, obstaclesLY, 12);
  }

  void obstacleCreateNew() {

    if ( obstaclesRX > 700) {
      obstaclesRX = -300;
      obstaclesRY = random(150, 320);
      cashedR = false;
    }



    if ( obstaclesLX > 700) {
      obstaclesLX = -300;
      obstaclesLY = random(150, 320);
      cashedL = false;
    }
  }
}