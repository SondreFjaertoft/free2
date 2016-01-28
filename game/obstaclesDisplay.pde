// GLOBAL VARIABLES
class ObstaclesDisplay{
PImage obs;
float obstaclesY;
float obstaclesRX;
float obstaclesLX;
//movement speed of obsticles
int moveSpeed;




// CONSTRUCTOR
ObstaclesDisplay(int i){
  obstaclesRX = - 1200+(i*600);
  obstaclesLX = - 1500+(i*600);
  obs = loadImage("obs.png");
  obstaclesY = random(100, 300);
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
 image(obs, obstaclesY, obstaclesRX, 500-obstaclesY, 20);
 imageMode(CENTER);}


void obstaclesCreateLeft(){
 imageMode(CORNER);
 image(obs, 0, obstaclesLX, obstaclesY, 20);
 imageMode(CENTER);}


}