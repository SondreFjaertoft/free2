Player player; 
Obstacles obstacles;
Awards awards;
Reset reset;
Gravity gravity;
Score score;
//Sound sound;

class GameEngine{
// GLOBAL VARIABLES
PImage bg;
float moveSpeed = 2;  

  
//CONSTRUCTOR
GameEngine(){
player = new Player();   
obstacles = new Obstacles();
awards = new Awards();
reset = new Reset();
gravity = new Gravity();
score = new Score();
//sound = new Sound();

bg = loadImage("Beste.png");

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

  
//gravity.velocityX = 0;
gravity.velocityY = 0;
moveSpeed = 0;
gravity.gravity = 3;
awards.moveSpeedStar = 0;
if(player.playerX > 750){
text("Game Over", width/2, height/2 - 80);
text("Click to play again", width/2, height/2 );
text("Your score is: " + score.points, width/2, height/2 + 80);
score.listScore();if(reStart == true) {
background.close();
minim.stop();
//super.stop();
setup();
}}
} 

void backgroundImage(){
background(bg);
}

 


}