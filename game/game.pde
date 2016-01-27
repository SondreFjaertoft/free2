
GameEngine gameEngine;

boolean left, right, space, start; 

PImage star;

int score;

float gravity;
float velocityX;
float velocityY;



void setup(){
 size(500,700);
 
  gameEngine = new GameEngine();

  velocityY = 6;
  

  score = 0;
  textSize(40);
  start = false;
  
  
  star = loadImage("star.png");
  
  
  gravity = 0.6;
  
  
  textAlign(CENTER, CENTER);
}


void draw(){
imageMode(CENTER);
gameEngine.backgroundImage();
gameEngine.gameStartPage();

}









void star(){
image(star, obstacles.obs4Y,obstacles.obs4X, 50, 50);

}



void jump(){
player.playerX += velocityX; 
velocityX += gravity;

if(space == true) {
velocityX = -12;
}

 

if(left == true && player.playerY - player.playerWidth > 0){
  player.playerY = player.playerY- velocityY;
}

if(right == true && player.playerY  < 500){
  player.playerY = player.playerY +velocityY;
}

}

void score(){
  

text(score,40,50);  
  
if(player.playerX < obstacles.obs1X){
  score =  1;
}

if(player.playerX < obstacles.obs2X){
  score =  2;
}

if(player.playerX < obstacles.obs3X){
  score = 3;
}


if(player.playerX < obstacles.obs5X){
  score = 4;
}
  
}

void reset() {
//sjekker om player kommer bort i veggene, dersom den gjør det blir spillet resett
if(player.playerX - player.playerHeight < 0 || player.playerY - player.playerWidth < 0 || player.playerY  > 500 || player.playerX - player.playerHeight/2 > 700) {
gameEngine.gameOverPage();
}

//høgre hinder nr 1
if(player.playerX - player.playerHeight < obstacles.obs1X && player.playerY > obstacles.obs1Y && player.playerX > obstacles.obs1X + 20){
gameEngine.gameOverPage();
} 

//venstre hinder nr2
else if(player.playerX - player.playerHeight < obstacles.obs2X && player.playerY -player.playerWidth < obstacles.obs2Y && player.playerX> obstacles.obs2X + 20){
gameEngine.gameOverPage();
} 

//høgre hinder nr 3
if(player.playerX - player.playerHeight < obstacles.obs3X && player.playerY > obstacles.obs3Y && player.playerX > obstacles.obs3X + 20){
gameEngine.gameOverPage();
} 

//venstre hinder nr 4
if(player.playerX - player.playerHeight < obstacles.obs5X && player.playerY - player.playerWidth< obstacles.obs5Y && player.playerX > obstacles.obs5X + 20){
gameEngine.gameOverPage();
} 
}







void keyPressed() {
  if(keyCode == LEFT) {
    left = true;
  }
  
  if(keyCode == RIGHT) {
    right = true;
  }
  
  
  if(keyCode == ' ') {
    space = true;
  }
  
}



void keyReleased() {
    if(keyCode == LEFT) {
    left = false;
  }
  
  if(keyCode == RIGHT) {
    right = false;
  }
  
 
  
  if(keyCode == ' ') {
    space = false;
  }
}

void mousePressed(){
if (mousePressed == true){
start = true;
}
}