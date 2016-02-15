class Score{
// GLOBAL VARIABLES
int points;
String highScore;
int newHighScore;


//CONSTRUCTOR
Score(){
points = 0;

}



//FUNCTIONS

void saveScore(){
  //save score
highScore = ("" + score.points);
String[] list = split(highScore, ' ');
saveStrings("test.txt", list);
}

void listScore(){
text("Your high score is: " + newHighScore,  width/2, height/2 + 140);

}

void checkScore(){
 String lines[] = loadStrings("test.txt");
//text("Your high score is: " + lines[0],  width/2, height/2 + 140);
newHighScore = parseInt(lines[0]);
//text("Your high score is: " + newHighScore,  width/2, height/2 + 140);
if(points > newHighScore){
saveScore();

}

}


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