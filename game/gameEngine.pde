Player player; 
Obstacles obstacles;
Awards awards;
Reset reset;
Gravity gravity;
Score score;
Sound sound;

// setter variablene or denne klassen
class GameEngine {
  // GLOBAL VARIABLES
  PImage bg, gameOverBackgroundImg;
  float moveSpeed = 2;  
  private boolean soundHaveBeenPlayed = false;
  boolean checkReset = false;

  //CONSTRUCTOR
  GameEngine() {
    player = new Player();   
    obstacles = new Obstacles();
    awards = new Awards();
    reset = new Reset();
    gravity = new Gravity();
    score = new Score();
    //sound = new Sound();

    // laster inn bilda som blir bruk i denne klassen
    bg = loadImage("backgroundtest2.jpg");
    gameOverBackgroundImg = loadImage ("gameOverBackgroundImg.jpg");
  }



  //FUNCTIONS
  void gameStartPage() { 
  // når man trykker play så køyres denne klassen. Den starter opp alle funksjonene som ligger under. 

    text("click to start", width/2, height/2 - 80);
    if (start == true) {

      background(bg);
      obstacles.obstacles(moveSpeed);
      player.player();
      gravity.jump();
      score.playerScore();
      reset.gameOver();
      awards.star();
      score.checkScore();
    }
  }

  // dersom man dør så kommer man til denne klassen
  void gameOverPage() {
    
    // spiller av død lyden
    if (mainMenu.wantSound == true) {
      if (soundHaveBeenPlayed == false) {
        sound.soundDeath();
        soundHaveBeenPlayed = true;
      }
    }
    
    // låser spillet, slik at ting ikke beveger seg når man er dø.
    gravity.velocityY = 0;
    moveSpeed = 0;
    gravity.gravity = 3;                                            //gravityen blir mye større, slik at spilleren detter rett ned nør man dør
    awards.moveSpeedStar = 0;
    if (player.playerX > 800) {                                    // når spilleren har falt ut av skjermen kommer game ove menyen opp
    image(gameOverBackgroundImg, width/2, height/2 -60 , 280, 421 ); 

      text( score.points, width/2 + 78, height/2 - 18);
      score.listScore();
      image(mainMenu.menuImg, mainMenu.menuY, mainMenu.menuX, mainMenu.menuWidth, mainMenu.menuHeight);

      if (mouseX > mainMenu.menuY - 100 && mouseX < mainMenu.menuY + 100 && mouseY > mainMenu.menuX - 40 && mouseY < mainMenu.menuX +40 && mouse == true) {
        mouse = false;
        mainMenu.playGame = false;
      }
    }
        // blir reStart "true" så køyres replay (press space)
    if (reStart) {
      replay();
    }
  }

    
        // Denne funkjsonen starter spillet på nytt. Den setter alle variablene tilbake til slik det var når spillet startet første gangen.  
  void replay() {
     gameEngine.soundHaveBeenPlayed = false;
    gravity.velocityY = 6;
    moveSpeed = 2;
    gravity.gravity = 0.5;
    awards.moveSpeedStar = 2;
    score.points = 0;
    player.playerY = width/2;
    player.playerX = height/2;
    for (int i = 0; i < 2; i++) {
      obstaclesCollection[i].cashedR = false;
      obstaclesCollection[i].cashedL = false;
      obstaclesCollection[1].obstaclesRX = 0;
      obstaclesCollection[1].obstaclesLX = -250;
      obstaclesCollection[0].obstaclesRX = -500;
      obstaclesCollection[0].obstaclesLX = -750;
    }
    awards.starX = random (-1300, -1700);
  }


    // tegner bakgrunsbildet
  void backgroundImage() {
    background(bg);
  }
}