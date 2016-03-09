class MainMenu { 
  // GLOBAL VARIABLES
  PImage playImg, highScoreImg, setupImg, menuImg, unMuteImg, tutorialImg, muteIkonImg;
  float playWidth, playHeight, playY, playX, highScoreWidth, highScoreHeight, highScoreY, highScoreX, setupWidth, setupHeight, setupY, setupX, tutorialWidth, tutorialHeight, tutorialY, tutorialX, muteWidth, muteHeight, muteY, muteX;
  boolean playGame, clearGame = false, hideMainMenu = false, showHighScore = false, mute = false, showTutorial = false, menuIsActive = false;
  private boolean wantSound = true;
  private boolean soundPressed = false;

  //CONSTRUCTOR
  MainMenu() {
    playWidth = 200;
    playHeight = 100;
    playY = width/2;
    playX = height/2 - 160;

    highScoreWidth = 200; 
    highScoreHeight = 100; 
    highScoreY = width/2; 
    highScoreX = height/2 - 60;

    setupWidth = 200; 
    setupHeight = 100; 
    setupY = width/2; 
    setupX = height/2 + 140;

    tutorialWidth = 200;
    tutorialHeight = 100;
    tutorialY = width/2;
    tutorialX = height/2 + 40;
    
    muteWidth = 40;
    muteHeight = 40;
    muteY = 450;
    muteX = 50;



    playImg = loadImage("playImg.png");
    highScoreImg = loadImage("highScoreImg.png");
    setupImg = loadImage("setupImg.png");
    menuImg = loadImage("menyImg.png");     // kult bilete her liksom
    unMuteImg = loadImage("unMuteImg.png");
    tutorialImg = loadImage("tutorialImg.png");
    muteIkonImg = loadImage("MuteIkonImg.png");
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
  
  void muteIkon(){
    if(!wantSound){
  image(muteIkonImg, muteY, muteX, muteWidth, muteHeight);
    }
  }

  void menuPlay() {
    //mainMenu.clearGame = false;
    if (mouseX > playY - 100 && mouseX < playY + 100 && mouseY > playX - 40 && mouseY < playX +40 && mouse == true && playGame == false) {
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
    if (mouseX > highScoreY - 100 && mouseX < highScoreY + 100 && mouseY > highScoreX - 40 && mouseY < highScoreX +40 && mouse == true && playGame == false && playGame == false ) {
      mouse = false;
      hideMainMenu = true;
      showHighScore = true;
      
    }
  }

  void showHighScore() {
    if (showHighScore == true) {
      score.checkScore();
      score.listHighScore();
    }
  }


  void goBackToMainMenu() {
    if (hideMainMenu == true) {
      image(mainMenu.menuImg, mainMenu.playY, mainMenu.playX + 400, mainMenu.playWidth, mainMenu.playHeight);
    }
    if (mouseX > mainMenu.playY - 100 && mouseX < mainMenu.playY + 100 && mouseY > mainMenu.playX - 40 + 400 && mouseY < mainMenu.playX +40 + 400 && mouse == true ) {
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

    if (mouseX > setupY - 100 && mouseX < setupY + 100 && mouseY > setupX - 40 && mouseY < setupX +40 && mouse == true && playGame == false) {
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
    if (mouseX > tutorialY - 100 && mouseX < tutorialY + 100 && mouseY > tutorialX - 40 && mouseY < tutorialX +40 && mouse == true && playGame == false) {
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