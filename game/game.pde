boolean left, right, space, start, reStart, mouse;
GameEngine gameEngine;
MainMenu mainMenu;

import ddf.minim.*;
AudioPlayer background;
Minim minim;//audio context

void setup() {

  size(500, 700);                    //sets a size for the window
  gameEngine = new GameEngine();    //makes a new object of GameEngine
  mainMenu = new MainMenu();

  textSize(40);
  textAlign(CENTER, CENTER);

  minim = new Minim(this);
  background = minim.loadFile("background_sound.mp3", 2048);
  // background.play();
  sound.bonusPoint = minim.loadFile("banana_sound1.mp3", 2048);
  sound.regularPoint = minim.loadFile("point_sound.mp3", 300);
  sound.deathSound = minim.loadFile("death_sound.mp3");
}


void draw() {
  imageMode(CENTER);                       //draws the background image
  gameEngine.backgroundImage();
  //gameEngine.gameStartPage();
  mainMenu.menu();
}

void keyPressed() {
  if (keyCode == LEFT) {             //checks if left arrow key is pressed
    left = true;
  }

  if (keyCode == RIGHT) {            //checks if right arrow key is pressed
    right = true;
  }


  if (keyCode == ' ') {              //checks if "space" key is pressed
    space = true;
    start = true;
    reStart = true;
  }
}


void keyReleased() {                
  if (keyCode == LEFT) {            //checks if left arrow key is released
    left = false;
  }

  if (keyCode == RIGHT) {            //checks if right arrow key is released
    right = false;
  }



  if (keyCode == ' ') {             // checks if "space" bar is released
    space = false;
    reStart = false;
  }
}

void mousePressed() {              //checks if mousekey is pressed
  if (mousePressed ) {
    start = true;
    mouse = true;
  }
} 