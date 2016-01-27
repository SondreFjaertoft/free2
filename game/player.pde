class Player{
// GLOBAL VARIABLES
float playerWidth, playerHeight, playerY, playerX;
PImage img;


//CONSTRUCTOR
Player() {
  playerWidth = 60;
  playerHeight = 50;
  playerY = width/2;
  playerX = height/2;
  
  img = loadImage("flyingCow.png");
}


//FUNCTIONS
void display() {

}

void player() {
image(img, playerY - playerWidth/2, playerX - playerHeight/2, playerWidth, playerHeight);
//rect(playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
}


}