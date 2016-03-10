Player player; 
Obstacles obstacles;
Awards awards;
Reset reset;
Gravity gravity;
Score score;
Sound sound;


class GameEngine {
  // GLOBAL VARIABLES
  PImage bg;
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


    bg = loadImage("backgroundtest.jpg");
  }



  //FUNCTIONS
  void gameStartPage() { 


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


  void gameOverPage() {
    if (mainMenu.wantSound == true) {
      if (soundHaveBeenPlayed == false) {
        sound.soundDeath();
        soundHaveBeenPlayed = true;
      }
    }

    gravity.velocityY = 0;
    moveSpeed = 0;
    gravity.gravity = 3;
    awards.moveSpeedStar = 0;
    if (player.playerX > 800) {

      text("Game Over", width/2, height/2 - 80);
      text("Click to play again", width/2, height/2 );
      text("Your score is: " + score.points, width/2, height/2 + 80);
      score.listScore();
      image(mainMenu.menuImg, mainMenu.menuY, mainMenu.menuX, mainMenu.menuWidth, mainMenu.menuHeight);

      if (mouseX > mainMenu.menuY - 100 && mouseX < mainMenu.menuY + 100 && mouseY > mainMenu.menuX - 40 && mouseY < mainMenu.menuX +40 && mouse == true) {
        mouse = false;
        mainMenu.playGame = false;
      }
    }

    if (reStart) {
      replay();
    }
  }

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

  void backgroundImage() {
    background(bg);
  }
}