// GLOBAL VARIABLES
class ObstaclesDisplay{
PImage obs;
float obstaclesRY;
float obstaclesLY;
float obstaclesRX;
float obstaclesLX;
//movement speed of obsticles
int moveSpeed;




// CONSTRUCTOR
  ObstaclesDisplay(int i){
  obstaclesRX = - 500+(i*500);
  obstaclesLX = - 750+(i*500);
  obs = loadImage("obs.png");
  obstaclesRY = random(100, 300);
  obstaclesLY = random(150, 400);
  moveSpeed = 1;
}

// FUNCTIONS





void obstaclesMove(int s){
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
}

if( obstaclesLX > 700){
 obstaclesLX = -300;
}
}

}