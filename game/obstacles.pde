// GLOBAL VARIABLES
class Obstacles{
int obs1X,obs2X, obs3X, obs4X, obs5X;
int obs1Y,obs2Y, obs3Y, obs4Y, obs5Y;
//movement speed of obsticles
int moveSpeed;


PImage obs;

// CONSTRUCTOR
Obstacles(){
  obs = loadImage("obs.png");
  
  obs1X = 0;
  obs2X = -230;
  obs3X = -400; 
  obs4X = -320; 
  obs5X = -650;
  
  obs1Y = 200 ;
  obs2Y = 200 ;
  obs3Y = 300 ;
  obs4Y = 200 ; //stjerne
  obs5Y = 300;

  moveSpeed = 1;
  
  
}

// FUNCTIONS

void obstacleMove(){
obs1X =obs1X + moveSpeed;
obs2X =obs2X + moveSpeed;
obs3X =obs3X + moveSpeed;
obs4X =obs4X + moveSpeed;
obs5X =obs5X + moveSpeed;
}

void obstacles()
{
 imageMode(CORNER);
 fill(255);
 image(obs, obs1Y, obs1X, 300, 20);
 image(obs, 0, obs2X, obs2Y,20);
 image(obs, obs3Y, obs3X, 200, 20);
 
 image(obs, 0, obs5X, obs5Y ,20);
 imageMode(CENTER);
}

}