//obsticles X position
int obs1X,obs2X, obs3X, obs4X, obs5X;
int obs1Y,obs2Y, obs3Y, obs4Y, obs5Y;
//movement speed of obsticles
int moveSpeed;

//player
float playerWidth, playerHeight, playerY, playerX;

boolean left, right, space, start; 

PImage img, bg, star, obs;

int score;

float gravity;
float velocityX;
float velocityY;



void setup(){
 size(500,700);
 
 
  obs1X = 0;
  obs2X = -230;
  obs3X = -400; 
  obs4X = -320; 
  obs5X = -650;
  
  obs1Y = 200 ;
  obs2Y = 200 ;
  obs3Y = 300 ;
  obs4Y = 200 ; //stjerne
  obs5Y = 300;

  moveSpeed = 1;
  velocityY = 6;
  
  playerWidth = 60;
  playerHeight = 50;
  playerY = width/2;
  playerX = height/2;

  score = 0;
  textSize(40);
  start = false;
  
  img = loadImage("flyingCow.png");
  bg = loadImage("background.png");
  star = loadImage("star.png");
  obs = loadImage("obs.png");
  
  gravity = 0.6;
  
  
  textAlign(CENTER, CENTER);
}


void draw(){
imageMode(CENTER);
background(bg);
gameStartPage();

}




void obstacleMove(){
obs1X =obs1X + moveSpeed;
obs2X =obs2X + moveSpeed;
obs3X =obs3X + moveSpeed;
obs4X =obs4X + moveSpeed;
obs5X =obs5X + moveSpeed;
}


void obstacles()
{
 imageMode(CORNER);
 fill(255);
 image(obs, obs1Y, obs1X, 300, 20);
 image(obs, 0, obs2X, obs2Y,20);
 image(obs, obs3Y, obs3X, 200, 20);
 
 image(obs, 0, obs5X, obs5Y ,20);
 imageMode(CENTER);
}


void star(){
image(star, obs4Y,obs4X, 50, 50);

}

void player() {
image(img, playerY - playerWidth/2, playerX - playerHeight/2, playerWidth, playerHeight);
//rect(playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
}


void jump(){
playerX += velocityX; 
velocityX += gravity;

if(space == true) {
velocityX = -10;
}

 

if(left == true && playerY - playerWidth > 0){
  playerY = playerY- velocityY;
}

if(right == true && playerY  < 500){
  playerY = playerY +velocityY;
}

}

void score(){
  

text(score,40,50);  
  
if(playerX < obs1X){
  score =  1;
}

if(playerX < obs2X){
  score =  2;
}

if(playerX < obs3X){
  score = 3;
}


if(playerX < obs5X){
  score = 4;
}
  
}

void reset() {
//sjekker om player kommer bort i veggene, dersom den gjør det blir spillet resett
if(playerX - playerHeight < 0 || playerY - playerWidth < 0 || playerY  > 500 || playerX - playerHeight/2 > 700) {
gameOverPage();
}

//høgre hinder nr 1
if(playerX - playerHeight < obs1X && playerY > obs1Y && playerX > obs1X + 20){
gameOverPage();
} 

//venstre hinder nr2
else if(playerX - playerHeight < obs2X && playerY -playerWidth < obs2Y && playerX> obs2X + 20){
gameOverPage();
} 

//høgre hinder nr 3
if(playerX - playerHeight < obs3X && playerY > obs3Y && playerX > obs3X + 20){
gameOverPage();
} 

//venstre hinder nr 4
if(playerX - playerHeight < obs5X && playerY - playerWidth< obs5Y && playerX > obs5X + 20){
gameOverPage();
} 
}

void gameStartPage(){
text("click to start", width/2, height/2 - 80);
if(start == true){
background(bg);
obstacles();
player();
obstacleMove();
jump();
score();
reset();
star();
}

}

void gameOverPage(){

velocityX = 0;
moveSpeed = 0;
velocityY = 0;
text("Game Over", width/2, height/2 - 80);
text("Click to play again", width/2, height/2 );
text("Your score is: " + score, width/2, height/2 + 80);

if(mousePressed) {
setup();
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