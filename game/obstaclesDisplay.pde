// GLOBAL VARIABLES
class ObstaclesDisplay{
PImage obs;
float obstaclesY;
float obstaclesX;
//movement speed of obsticles
int moveSpeed;




// CONSTRUCTOR
ObstaclesDisplay(float _x){
  
  obstaclesX = _x;
  obs = loadImage("obs.png");
  obstaclesY = random(100, 300);
 
  moveSpeed = 1;
}

// FUNCTIONS



void obstaclesRun(){
obstaclesCreate();
obstaclesMove();

}

void obstaclesMove(){
obstaclesX = obstaclesX + moveSpeed;
}

void obstaclesCreate(){
 imageMode(CORNER);
 image(obs, obstaclesY, obstaclesX, 500-obstaclesY, 20);
 imageMode(CENTER);}
}