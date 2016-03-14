class MainMenu { 
  // GLOBAL VARIABLES    Setter alle variablene
  PImage playImg, highScoreImg, setupImg, menuImg, unMuteImg, tutorialImg, muteIkonImg, tutorialBackgroundImg, highScoreBackgroundImg;
  float playWidth, playHeight, playY, playX, highScoreWidth, highScoreHeight, highScoreY, highScoreX, setupWidth, setupHeight, setupY, setupX, tutorialWidth, tutorialHeight, tutorialY, tutorialX, muteWidth, muteHeight, muteY, muteX, menuWidth, menuHeight, menuY, menuX;
  boolean playGame, clearGame = false, hideMainMenu = false, showHighScore = false, mute = false, showTutorial = false, menuIsActive = false;
  private boolean wantSound = true;
  private boolean soundPressed = false;

  //CONSTRUCTOR
  MainMenu() {                // setter verdi til variablene
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

    menuWidth = 200;
    menuHeight = 100;
    menuY = width/2;
    menuX = height/2 + 240;

    muteWidth = 40;
    muteHeight = 40;
    muteY = 450;
    muteX = 50;


    // laster inn bildene som blir bruk i denne klassen
    playImg = loadImage("playImg.png");
    highScoreImg = loadImage("highScoreImg.png");
    setupImg = loadImage("setupImg.png");
    menuImg = loadImage("menyImg.png");     // kult bilete her liksom
    unMuteImg = loadImage("unMuteImg.png");
    tutorialImg = loadImage("tutorialImg.png");
    muteIkonImg = loadImage("MuteIkonImg.png");
    tutorialBackgroundImg = loadImage("tutorialBackgroundImg.jpg");
    highScoreBackgroundImg = loadImage("highScoreBackgroundImg.jpg");
  }




  //FUNCTIONS
  // en funkjson som gjør at alle underliggende funksjonene køyrer når "menu" blir køyrt.
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
    hower();
  }

  // denne funksjonen tegner hovedmenyen, så lenge "hideMainMenu" er false.
  void createMenu() {
    if (!hideMainMenu) {
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

  // tegner et mute symbol dersom lyden er mutet.
  void muteIkon() {
    if (!wantSound) {
      image(muteIkonImg, muteY, muteX, muteWidth, muteHeight);
    }
  }

  // Dersom du har musa over play knappen + trykkre, så blir alle spill verdiene nullstilt, og spillet starter på nytt.
  void menuPlay() {
    if (mouseX > playY - 100 && mouseX < playY + 100 && mouseY > playX - 40 && mouseY < playX +40 && mouse == true && playGame == false) {
      gameEngine.replay();
      gravity.velocityX = 0;
      playGame = true;
      mouse = false;
    }
  }

  // når denne køyrer, så vil alle underliggende funksjoner også køyre.
  void hower() {
    howerPlay();
    howerHighScore();
    howerTutorial();
    howerMute();
    howerMenu();
  }

  // gjør bildet større når man har musa over play
  void howerPlay() {
    if (mouseX > playY - 100 && mouseX < playY + 100 && mouseY > playX - 40 && mouseY < playX +40) {
      playWidth = 220;
      playHeight = 120;
    } else {
      playWidth = 200;
      playHeight = 100;
    }
  }

  // gjør bildet større når man har musa over highScore
  void howerHighScore() {
    if (mouseX > highScoreY - 100 && mouseX < highScoreY + 100 && mouseY > highScoreX - 40 && mouseY < highScoreX +40)
    {
      highScoreWidth = 220; 
      highScoreHeight = 120;
    } else {
      highScoreWidth = 200; 
      highScoreHeight = 100;
    }
  }

  // gjør bildet større når man har musa over tutorial
  void howerTutorial() {
    if (mouseX > tutorialY - 100 && mouseX < tutorialY + 100 && mouseY > tutorialX - 40 && mouseY < tutorialX +40) {
      tutorialWidth = 220;
      tutorialHeight = 120;
    } else {
      tutorialWidth = 200;
      tutorialHeight = 100;
    }
  }

  // gjør bildet større når man har musa over mute
  void howerMute() {
    if (mouseX > setupY - 100 && mouseX < setupY + 100 && mouseY > setupX - 40 && mouseY < setupX +40) {
      setupWidth = 220; 
      setupHeight = 120;
    } else {    
      setupWidth = 200; 
      setupHeight = 100;
    }
  }

  // gjør bildet større når man har musa over menu
  void howerMenu() {
    if (mouseX > mainMenu.menuY - 100 && mouseX < mainMenu.menuY + 100 && mouseY > mainMenu.menuX - 40 && mouseY < mainMenu.menuX +40) {
      menuWidth = 220;
      menuHeight = 120;
    } else {
      menuWidth = 200;
      menuHeight = 100;
    }
  }


  // når if setninga i menuPlay blir oppfylt, så blir playGame = true, som gjør at GameStartPage køyrer.
  void menuPlayStart() {

    if (playGame) {
      gameEngine.gameStartPage();
    }
  }




  // når du holder musa over highScore knappen og trykker sjuler du hovedmenyen, og showHighScore blir true
  void menuHeighScore() {
    if (mouseX > highScoreY - 100 && mouseX < highScoreY + 100 && mouseY > highScoreX - 40 && mouseY < highScoreX +40 && mouse == true && playGame == false && playGame == false ) {
      mouse = false;
      hideMainMenu = true;
      showHighScore = true;
    }
  }
  
  // viser hgihscore, samt et bakgrunsbilde
  void showHighScore() {
    if (showHighScore == true) {
       image(highScoreBackgroundImg, width/2, height/2 -60 , 280, 180 ); 
      score.checkScore();
      score.listHighScore();
    }
  }

   //tegner en knapp som viser kun dersom hovedmenyen blir skjult. (tilbake knapp)
  void goBackToMainMenu() {
    if (hideMainMenu == true) {
      image(mainMenu.menuImg, mainMenu.menuY, mainMenu.menuX, mainMenu.menuWidth, mainMenu.menuHeight);
    }
    if (mouseX > mainMenu.menuY - 100 && mouseX < mainMenu.menuY + 100 && mouseY > mainMenu.menuX - 40 && mouseY < mainMenu.menuX +40 && mouse == true ) {
      mouse = false;
      showHighScore = false;
      hideMainMenu = false;
      showTutorial = false;
    }
  }




  //Denne stopper musikken
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

  // når du holder musa over highScore knappen og trykker sjuler du hovedmenyen, og showTutorial blir true
  void tutorial() {
    if (mouseX > tutorialY - 100 && mouseX < tutorialY + 100 && mouseY > tutorialX - 40 && mouseY < tutorialX +40 && mouse == true && playGame == false) {
      mouse = false;
      hideMainMenu = true;
      showTutorial = true;
    }
  }

   // viser tutorial, samt et bakgrunsbilde
  void showTutorial() {
    if (showTutorial == true) {
      image(tutorialBackgroundImg, width/2, height/2 -60 , 280, 421 ); 
    }
  }
}