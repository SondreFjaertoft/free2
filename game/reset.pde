Sound sound;

class Reset{
//GLOBAL VARIABLES



//CONSTRUCTOR
Reset(){
imageMode(CENTER);
sound = new Sound();

}


//FUNCTIONS
void gameOver() {
//sjekker om player kommer bort i veggene, dersom den gjør det blir spillet resett
if(player.playerX - player.playerHeight/2 < 0 || player.playerY - player.playerWidth/2 < 0 || player.playerY + player.playerWidth/2 > width || player.playerX + player.playerHeight/2 > height) {
sound.soundDeath(); 
gameEngine.gameOverPage();
 
}

//høgre hinder 
for(int i = 0; i < 2; i++){
if(player.playerX - player.playerHeight < obstaclesCollection[i].obstaclesRX && player.playerY + player.playerWidth/2 > obstaclesCollection[i].obstaclesRY && player.playerX + player.playerHeight > obstaclesCollection[i].obstaclesRX + 20){
sound.soundDeath();
gameEngine.gameOverPage();

} 

//venstre hinder 
else if(player.playerX - player.playerHeight < obstaclesCollection[i].obstaclesLX && player.playerY -player.playerWidth/2 < obstaclesCollection[i].obstaclesLY && player.playerX + player.playerHeight> obstaclesCollection[i].obstaclesLX + 20){
sound.soundDeath();
gameEngine.gameOverPage();
 
} 


}

}
}