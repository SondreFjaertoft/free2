

// GLOBAL VARIABLES
class ObstaclesDisplay{
PImage obs;
float obstaclesRY;
float obstaclesLY;
float obstaclesRX;
float obstaclesLX;
boolean cashedL;
boolean cashedR;
//movement speed of obsticles
float moveSpeed;




// CONSTRUCTOR
  ObstaclesDisplay(int i){
  obstaclesRX = - 500+(i*500);
  obstaclesLX = - 750+(i*500);
  obs = loadImage("obs.png");
  obstaclesRY = random(100, 300);
  obstaclesLY = random(150, 400);
 
}

// FUNCTIONS





void obstaclesMove(float s){
moveSpeed = s;
obstaclesRX = obstaclesRX + moveSpeed;
obstaclesLX = obstaclesLX + moveSpeed;
}

void obstaclesCreateRight(){
 imageMode(CORNER);
 image(obs, obstaclesRY, obstaclesRX, 500-obstaclesRY, 20);
}


void obstaclesCreateLeft(){
 image(obs, 0, obstaclesLX, obstaclesLY, 20);
}

void obstacleCreateNew(){
  
if( obstaclesRX > 700){
    obstaclesRX = -300;
    cashedR = false;
}

if( obstaclesLX > 700){
 obstaclesLX = -300;
 cashedL = false;
}
}

}