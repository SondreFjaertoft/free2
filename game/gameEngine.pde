Player player; 
Obstacles obstacles;
Awards awards;
Reset reset;
Gravity gravity;
Score score;
Sound sound;


class GameEngine{
// GLOBAL VARIABLES
PImage bg;
float moveSpeed = 2;  
private boolean soundHaveBeenPlayed = false;

  
//CONSTRUCTOR
GameEngine(){
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
void gameStartPage(){ 
textSize(40);
textAlign(CENTER, CENTER);
text("click to start", width/2, height/2 - 80);
if(start == true){
  
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


void gameOverPage(){
 if(!soundHaveBeenPlayed){
 sound.soundDeath();
 soundHaveBeenPlayed = true;
 }
 
//gravity.velocityX = 0;
gravity.velocityY = 0;
moveSpeed = 0;
gravity.gravity = 3;
awards.moveSpeedStar = 0;
if(player.playerX > 800){
text("Game Over", width/2, height/2 - 80);
text("Click to play again", width/2, height/2 );
text("Your score is: " + score.points, width/2, height/2 + 80);
score.listScore();
image(mainMenu.menuImg, mainMenu.playY, mainMenu.playX + 300, mainMenu.playWidth, mainMenu.playHeight);
if(mouseX > mainMenu.playY - 100 && mouseX < mainMenu.playY + 100 && mouseY > mainMenu.playX - 25 + 300 && mouseY < mainMenu.playX +25 + 300 && mouse == true){
mouse = false;
mainMenu.playGame = false;

}

if(reStart == true) {
replay();
}}
} 

void replay(){
gravity.velocityY = 6;
moveSpeed = 2;
gravity.gravity = 0.5;
awards.moveSpeedStar = 2;
score.points = 0;
player.playerY = width/2;
player.playerX = height/2;
 for(int i = 0; i < 2; i++){
obstaclesCollection[i].cashedR = false;
obstaclesCollection[i].cashedL = false;
obstaclesCollection[1].obstaclesRX = 0;
obstaclesCollection[1].obstaclesLX = -250;
obstaclesCollection[0].obstaclesRX = -500;
obstaclesCollection[0].obstaclesLX = -750;
 }
awards.starX = random (-1300, -1700); 
}

void backgroundImage(){
background(bg);
}




}