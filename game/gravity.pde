class Gravity extends Player {
  // GLOBAL VARIABLES
  float gravity;
  float velocityX;
  float velocityY;



  //CONSTRUCTOR
  Gravity() {                // sette verdi på variablane
    gravity = 0.5;
    velocityY = 6;
    space = false;
  }





  //FUNCTIONS
  // Dersom du trykke inn space flytter spilleren seg -12 piksla oppover. Derretter vil den dale nedover
  void jump() {
    imageMode(CENTER);
    player.playerX += velocityX; 
    velocityX += gravity;

    if (space == true) {
      velocityX = -12;
      space = false;
    }


  // trykker du inn venstre tast flytter du spilleren til høgre. Den gjør det også slik at det fungerer kun dersom du er innafor bilderammen.
    if (left == true && player.playerY + player.playerWidth > 0) {
      player.playerY = player.playerY- velocityY;
    }

  // trykker du inn høgre tast flytter du spilleren til høgre. Den gjør det også slik at det fungerer kun dersom du er innafor bilderammen.
    if (right == true && player.playerY  < 500) {
      player.playerY = player.playerY +velocityY;
    }
  }
}