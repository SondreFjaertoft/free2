


class Score {
  // GLOBAL VARIABLES 
  int points;
  String highScore;
  int newHighScore;


  //CONSTRUCTOR
  Score() {      //setter verdi til variablene
    points = 0;
    sound = new Sound();
  }



  //FUNCTIONS
  //lagrer ei tekst fil i gamefolder med highscore
  void saveScore() {
    highScore = ("" + score.points);
    String[] list = split(highScore, ' ');
    saveStrings("test.txt", list);
  }

  // viser highscore
  void listScore() {
    text(newHighScore, width/2 - 35, height/2 + 60);
  }
  
  // viser highscore
  void listHighScore(){
  text(newHighScore, width/2, height/2 - 53);
  }

  // ser om den nye highscoren er større en den gamle, dersom den er det, køyrer den SaceScore()
  void checkScore() {
    String lines[] = loadStrings("test.txt");
    newHighScore = parseInt(lines[0]);
    if (points > newHighScore) {
      saveScore();
    }
  }


  void playerScore() {
//viser score
    text(points, 40, 50);  

// Dersom den paserer hinderet nr 1 til høgre, får du et poeng + poeng lyden køyrer.
    if (player.playerX < obstaclesCollection[0].obstaclesRX && obstaclesCollection[0].cashedR ==false) {
      obstaclesCollection[0].cashedR = true;
      points++;
      if (mainMenu.wantSound == true) {
        sound.soundObstacle();
      }
    }

// Dersom den paserer hinderet nr 1 til venstre, får du et poeng + poeng lyden køyrer.
    if (player.playerX < obstaclesCollection[0].obstaclesLX && obstaclesCollection[0].cashedL ==false) {
      obstaclesCollection[0].cashedL = true;
      points++;
      if (mainMenu.wantSound == true) {
        sound.soundObstacle();
      }
    }

// Dersom den paserer hinderet nr 2 til høgre, får du et poeng + poeng lyden køyrer.
    if (player.playerX < obstaclesCollection[1].obstaclesRX && obstaclesCollection[1].cashedR ==false) {
      obstaclesCollection[1].cashedR = true;
      points++;
      if (mainMenu.wantSound == true) {
        sound.soundObstacle();
      }
    }

// Dersom den paserer hinderet nr 2 til venstre, får du et poeng + poeng lyden køyrer.
    if (player.playerX < obstaclesCollection[1].obstaclesLX && obstaclesCollection[1].cashedL ==false) {
      obstaclesCollection[1].cashedL = true;
      points++;
      if (mainMenu.wantSound == true) {
        sound.soundObstacle();
      }
    }



// dersom spilleren kommer bort i banana, får du 10 bonus poeng, samt bonus lyden kommer på.
    if (player.playerX + player.playerHeight/2 > awards.starX - 25 && player.playerX - player.playerHeight/2 < awards.starX + 25 && player.playerY + player.playerWidth/2 > awards.starY - 25 && player.playerY - player.playerWidth/2 < awards.starY + 25) {
      points = points + 10;
      if (mainMenu.wantSound == true) {
        sound.soundBanana();
      }
      awards.starX = 750;
    }
  }
}