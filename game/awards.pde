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
  
  // Gjør slik at når "Star" blir kalla, så kører alle underliggende funksjoner.
  void star() {
    starMove();
    starDisplay();
    starReset();
  }

  // Stjerna beveger seg for hver kjøring. 
  void starMove() {

    starX = starX + moveSpeedStar;
  }

  // bilde av stjerna blir tegnet
  void starDisplay() {
    imageMode(CENTER);  
    image(star, starY, starX, 55, 55);
  }

  // Gjør slik at når stjernen passerer 1600 i Y retning, så vil den flytte seg til et random tall mellom -1300 og -1700. (slik at den kommer igjen)
  void starReset() {
    if (starX > 1600) {
      starX = random (-1300, -1700);
    }
  }
}