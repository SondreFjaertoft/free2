// GLOBAL VARIABLES
class Obstacles{
float obs1X,obs2X, obs3X, obs4X, obs5X, obs6X;
float obs1Y,obs2Y, obs3Y, obs4Y, obs5Y, obs6Y;



float x;
float obstacleY;
float obstacleX;
//movement speed of obsticles
int moveSpeed;


PImage obs;

// CONSTRUCTOR
Obstacles(){

  obs = loadImage("obs.png");
  
  x = 0;
  
  //obs1X = 0;
  //obs2X = -230;
  //obs3X = -400; 
  //obs4X = -320; 
  //obs5X = -650;
  obstacleX = random(-100, 100);
  
  //obs1Y = 200 ;
  //obs2Y = 200 ;
  //obs3Y = 300 ;
  //obs4Y = 200 ; //stjerne
  //obs5Y = 300;
  obstacleY = random(100, 300);
 
  moveSpeed = 1;
  
  
}

// FUNCTIONS

void obstacleMove(){
//obs1X =obs1X + moveSpeed;
//obs2X =obs2X + moveSpeed;
//obs3X =obs3X + moveSpeed;
//obs4X =obs4X + moveSpeed;
//obs5X =obs5X + moveSpeed;
//obs6X =obs6X + moveSpeed;
obstacleX = obstacleX + moveSpeed;
}




void obstaclesDisplay()
{
 imageMode(CORNER);
 fill(255);
 //image(obs, obs1Y, obs1X, 300, 20);
 //image(obs, 0, obs2X, obs2Y,20);
 //image(obs, obs3Y, obs3X, 200, 20);
 //image(obs, 0, obs5X, obs5Y ,20);
 
 //image(obs, obs6Y, obs6X, 500-obs6Y, 20);
 image(obs, obstacleY, obstacleX, 500-obstacleY, 20);
 imageMode(CENTER);}

}