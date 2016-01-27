class Gravity extends Player{
// GLOBAL VARIABLES
float gravity;
float velocityX;
float velocityY;



//CONSTRUCTOR
Gravity(){
gravity = 0.5;
velocityY = 6;
}





//FUNCTIONS
void jump(){
player.playerX += velocityX; 
velocityX += gravity;

if(space == true) {
velocityX = -10;
}

 

if(left == true && player.playerY - player.playerWidth > 0){
  player.playerY = player.playerY- velocityY;
}

if(right == true && player.playerY  < 500){
  player.playerY = player.playerY +velocityY;
}

}





}