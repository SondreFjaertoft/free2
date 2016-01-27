class Reset{
//GLOBAL VARIABLES



//CONSTRUCTOR
Reset(){


}


//FUNCTIONS
void gameOver() {
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



}