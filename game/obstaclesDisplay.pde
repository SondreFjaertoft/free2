

// GLOBAL VARIABLES
class ObstaclesDisplay {          //lager variabler
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
  ObstaclesDisplay(int i) {          // setter verdi til variablene
    obstaclesRX = - 500+(i*500);
    obstaclesLX = - 750+(i*500);
    obs = loadImage("Grein.png");
    obstaclesRY = random(150, 320);
    obstaclesLY = random(150, 320);
  }

  
  
  // FUNCTIONS
  void obstaclesMove(float s) {              //gjør slik at hinderet flytter seg med 1 moveSpeed per gjenomkøyring
    moveSpeed = s;
    obstaclesRX = obstaclesRX + moveSpeed;
    obstaclesLX = obstaclesLX + moveSpeed;
  }

  // tegner hinder til høgre
  void obstaclesCreateRight() {
    imageMode(CORNER);
    image(obs, obstaclesRY, obstaclesRX, 500-obstaclesRY, 12);
  }

  //tegner hinder til venstre
  void obstaclesCreateLeft() {
    image(obs, 0, obstaclesLX, obstaclesLY, 12);
  }

  // Gjør slik at når hinderet har gått gjenom hele skjermen, så flytter det seg til toppen igjen. (samme hindere kommer tilbake). Både hinderet til venstre og til høgre
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