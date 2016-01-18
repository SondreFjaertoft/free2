
//obsticles X position
int obs1X,obs2X, obs3X, obs4X, obs5X;
int obs1Y,obs2Y, obs3Y, obs4Y, obs5Y;
//movement speed of obsticles
int moveSpeed;

//player
float playerWidth, playerHeight, playerY, playerX;

boolean left, right, space; 

PImage img, bg, star;

int score;

void setup(){
 size(    500,700);
 
  obs1X = 400; 
  obs2X = 170; 
  obs3X = -150; 
  obs4X = 0; 
  obs5X = -350;
  
  obs1Y = 200 ;
  obs2Y = 200 ;
  obs3Y = 300 ;
  obs4Y = 200 ; //stjerne
  obs5Y = 300;

  moveSpeed = 1;
  
  playerWidth = 60;
  playerHeight = 50;
  playerY = width/2;
  playerX = 700;

  score = 0;
  
  img = loadImage("flyingCow.png");
  bg = loadImage("background.png");
  star = loadImage("star.png");
}


void draw(){
imageMode(CENTER);
background(bg);
obstacles();
player();
obstacleMove();
jump();
score();
reset();

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
 fill(255);
 rect(obs1Y, obs1X, 300, 20);
 rect(0, obs2X, obs2Y,20);
 rect (obs3Y, obs3X, 200, 20);
 image(star, obs4Y,obs4X, 50, 50);
 rect(0, obs5X, obs5Y ,20);
}


void player() {
image(img, playerY - playerWidth/2, playerX - playerHeight/2, playerWidth, playerHeight);
//rect(playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
}


void jump(){
  
if(space == true && playerX - playerHeight > 0) {
 playerX = playerX - 12;
}
else if(playerX < 700 ) {
 playerX = playerX + 6;
}


if(left == true && playerY - playerWidth > 0){
  playerY = playerY-6;
}

if(right == true && playerY  < 500){
  playerY = playerY +6;
}

}

void score(){
  
textSize(40);
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
if(playerX - playerHeight < 0 || playerY - playerWidth < 0 || playerY  > 500 ) {
setup();
}

//høgre hinder nr 1
if(playerX - playerHeight < obs1X && playerY > obs1Y && playerX > obs1X + 20){
setup();
} 

//venstre hinder nr2
else if(playerX - playerHeight < obs2X && playerY -playerWidth < obs2Y && playerX> obs2X + 20){
setup();
} 

//høgre hinder nr 3
if(playerX - playerHeight < obs3X && playerY > obs3Y && playerX > obs3X + 20){
setup();
} 

//venstre hinder nr 4
if(playerX - playerHeight < obs5X && playerY - playerWidth< obs5Y && playerX > obs5X + 20){
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