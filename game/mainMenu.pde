class MainMenu { 
  // GLOBAL VARIABLES
  PImage playImg, highScoreImg, setupImg, menuImg, unMuteImg, tutorialImg;
  float playWidth, playHeight, playY, playX, highScoreWidth, highScoreHeight, highScoreY, highScoreX, setupWidth, setupHeight, setupY, setupX, tutorialWidth, tutorialHeight, tutorialY, tutorialX;
  boolean playGame, clearGame = false, hideMainMenu = false, showHighScore = false, mute = false, showTutorial = false, menuIsActive = false;
  private boolean wantSound = true;
  private boolean soundPressed = false;

  //CONSTRUCTOR
  MainMenu() {
    playWidth = 200;
    playHeight = 50;
    playY = width/2;
    playX = height/2 - 70;

    highScoreWidth = 200; 
    highScoreHeight = 50; 
    highScoreY = width/2; 
    highScoreX = height/2;

    setupWidth = 200; 
    setupHeight = 50; 
    setupY = width/2; 
    setupX = height/2 +140;

    tutorialWidth = 200;
    tutorialHeight = 50;
    tutorialY = width/2;
    tutorialX = height/2 + 70;



    playImg = loadImage("playImg.png");
    highScoreImg = loadImage("highScoreImg.png");
    setupImg = loadImage("setupImg.png");
    menuImg = loadImage("menyImg.png");
    unMuteImg = loadImage("unMuteImg.png");
    tutorialImg = loadImage("tutorialImg.png");
  }




  //FUNCTIONS

  void menu() {
    createMenu();
    menuPlay();
    menuPlayStart();
    showHighScore();
    menuHeighScore();
    goBackToMainMenu();
    mute();
    tutorial();
    showTutorial();
  }

  void createMenu() {
    if (hideMainMenu == false) {
      imageMode(CENTER);
      image(playImg, playY, playX, playWidth, playHeight);
      if (wantSound) {
        image(setupImg, setupY, setupX, setupWidth, setupHeight);
      } else { 
        image(unMuteImg, setupY, setupX, setupWidth, setupHeight);
      }
      image(highScoreImg, highScoreY, highScoreX, highScoreWidth, highScoreHeight);
      image(tutorialImg, tutorialY, tutorialX, tutorialWidth, tutorialHeight);
    }
  }

  void menuPlay() {
    //mainMenu.clearGame = false;
    if (mouseX > playY - 100 && mouseX < playY + 100 && mouseY > playX - 25 && mouseY < playX +25 && mouse == true && playGame == false) {
      gameEngine.replay();
      gravity.velocityX = 0;
    
      playGame = true;
      mouse = false;
     
    }
  }


  void menuPlayStart() {

    if (playGame == true ) {
      gameEngine.gameStartPage();
      
    }
  }





  void menuHeighScore() {
    if (mouseX > highScoreY - 100 && mouseX < highScoreY + 100 && mouseY > highScoreX - 25 && mouseY < highScoreX +25 && mouse == true && playGame == false && playGame == false ) {
      mouse = false;
      hideMainMenu = true;
      showHighScore = true;
      
    }
  }

  void showHighScore() {
    if (showHighScore == true) {
      score.checkScore();
      score.listScore();
    }
  }


  void goBackToMainMenu() {
    if (hideMainMenu == true) {
      image(mainMenu.menuImg, mainMenu.playY, mainMenu.playX + 300, mainMenu.playWidth, mainMenu.playHeight);
    }
    if (mouseX > mainMenu.playY - 100 && mouseX < mainMenu.playY + 100 && mouseY > mainMenu.playX - 25 + 300 && mouseY < mainMenu.playX +25 + 300 && mouse == true ) {
      mouse = false;
      showHighScore = false;
      hideMainMenu = false;
      showTutorial = false;
      
      
    }
  }





  void mute() {

    if (wantSound) {
      background.play();
    } else {
      background.pause();
    }  

    if (mouseX > setupY - 100 && mouseX < setupY + 100 && mouseY > setupX - 25 && mouseY < setupX +25 && mouse == true && playGame == false) {
      mouse = false;
      

      if (soundPressed==false) 
      {
        soundPressed = true;
        wantSound = !wantSound;
      }
    } else {
      soundPressed = false;
    }
  }

  void tutorial() {
    if (mouseX > tutorialY - 100 && mouseX < tutorialY + 100 && mouseY > tutorialX - 25 && mouseY < tutorialX +25 && mouse == true && playGame == false) {
      mouse = false;
      hideMainMenu = true;
      showTutorial = true;
      
    }
  }
  
  void showTutorial() {
   if(showTutorial == true){
      text("Trykke space \n ungå hinder \n eller dø", width/2 , height/2);
   }
  }
  
}