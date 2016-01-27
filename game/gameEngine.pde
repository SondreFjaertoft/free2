Player player; 
Obstacles obstacles;
class GameEngine{
// GLOBAL VARIABLES
PImage bg;
  

  
//CONSTRUCTOR
GameEngine(){
player = new Player();   
obstacles = new Obstacles();
bg = loadImage("background.png");

}



//FUNCTIONS
void gameStartPage(){
text("click to start", width/2, height/2 - 80);
if(start == true){
background(bg);
obstacles.obstacles();
player.player();
obstacles.obstacleMove();
jump();
score();
reset();
star();
}
}


void gameOverPage(){

velocityX = 0;
obstacles.moveSpeed = 0;
velocityY = 0;
text("Game Over", width/2, height/2 - 80);
text("Click to play again", width/2, height/2 );
text("Your score is: " + score, width/2, height/2 + 80);

if(mousePressed) {
setup();
}
} 

void backgroundImage(){
background(bg);
}


}