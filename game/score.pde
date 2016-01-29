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

for(int i = 0; i < 2; i++){  
if(player.playerX < obstaclesCollection[i].obstaclesRX && obstaclesCollection[0].cashedR ==false){
 obstaclesCollection[0].cashedR = true;
  points++;
}

if(player.playerX < obstaclesCollection[i].obstaclesLX && obstaclesCollection[0].cashedL ==false){
 obstaclesCollection[0].cashedL = true;
  points++;
}
}



//if(player.playerX < obstacles.obs3X){
//  points = 3;
//}


//if(player.playerX < obstacles.obs5X){
//  points = 4;
//}
  
}




}