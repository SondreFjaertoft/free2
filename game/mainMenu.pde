class MainMenu{ 
// GLOBAL VARIABLES
PImage playImg, highScoreImg, setupImg, menuImg;
float playWidth, playHeight, playY, playX, highScoreWidth, highScoreHeight, highScoreY, highScoreX, setupWidth, setupHeight, setupY, setupX;
boolean playGame,clearGame;

//CONSTRUCTOR
MainMenu(){
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
  setupX = height/2 +70;
  
  
  playImg = loadImage("playImg.png");
  highScoreImg = loadImage("highScoreImg.png");
  setupImg = loadImage("setupImg.png");
  menuImg = loadImage("menyImg.png");
}




//FUNCTIONS

void menu(){
createMenu();
menuPlay();
menuPlayStart();
}

void createMenu(){
imageMode(CENTER);
image(playImg, playY, playX, playWidth, playHeight);
image(setupImg, setupY, setupX, setupWidth, setupHeight);
image(highScoreImg, highScoreY, highScoreX, highScoreWidth, highScoreHeight);
}

void menuPlay(){
if(mouseX > playY - 100 && mouseX < playY + 100 && mouseY > playX - 25 && mouseY < playX +25 && mouse == true){
playGame = true;
mouse = false;
}
}

void menuPlayStart(){
if(playGame == true){

gameEngine.gameStartPage();


}

}


}