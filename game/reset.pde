

class Reset {
  //GLOBAL VARIABLES



  //CONSTRUCTOR
  Reset() {
    imageMode(CENTER);
    sound = new Sound();
  }


  //FUNCTIONS
  void gameOver() {
    //sjekker om player kommer bort i veggene, dersom den gjør det blir spillet resett
    if (player.playerX - player.playerHeight/2 < 0 || player.playerY - player.playerWidth/2 < 0 || player.playerY + player.playerWidth/2 > width || player.playerX + player.playerHeight/2 > height) {
      gameEngine.gameOverPage();
    }

    //sjekker om player kommer bort i høgre hinder, dersom den gjør det blir spillet resett
    for (int i = 0; i < 2; i++) {
      if (player.playerX - player.playerHeight < obstaclesCollection[i].obstaclesRX - 7 && player.playerY + player.playerWidth/2 > obstaclesCollection[i].obstaclesRY && player.playerX + player.playerHeight > obstaclesCollection[i].obstaclesRX + 12) {

        gameEngine.gameOverPage();
      } 

      //sjekker om player kommer bort i venstre hinder, dersom den gjør det blir spillet resett
      else if (player.playerX - player.playerHeight < obstaclesCollection[i].obstaclesLX - 7 && player.playerY -player.playerWidth/2 < obstaclesCollection[i].obstaclesLY && player.playerX + player.playerHeight> obstaclesCollection[i].obstaclesLX + 12) {

        gameEngine.gameOverPage();
      }
    }
  }
}