class Score{
// GLOBAL VARIABLES
int points;




//CONSTRUCTOR
Score(){
points = 0;



}


//FUNCTIONS
void playerScore(){
  

text(points,40,50);  
 
if(player.playerX < obstaclesCollection[0].obstaclesRX && obstaclesCollection[0].cashedR ==false){
 obstaclesCollection[0].cashedR = true;
  points++;
}

if(player.playerX < obstaclesCollection[0].obstaclesLX && obstaclesCollection[0].cashedL ==false){
 obstaclesCollection[0].cashedL = true;
  points++;
}

if(player.playerX < obstaclesCollection[1].obstaclesRX && obstaclesCollection[1].cashedR ==false){
 obstaclesCollection[1].cashedR = true;
  points++;
}

if(player.playerX < obstaclesCollection[1].obstaclesLX && obstaclesCollection[1].cashedL ==false){
 obstaclesCollection[1].cashedL = true;
  points++;
}


//bonus poeng!

if(player.playerX > awards.starX - 25 && player.playerX < awards.starX + 25 && player.playerY > awards.starY - 25 && player.playerY < awards.starY + 25){
  points = points + 10;
  awards.starX = 750;
}
}
 
}