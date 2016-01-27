class Awards extends Obstacles{
// GLOBAL VARIABLES
PImage star;


//CONSTRUCTOR
Awards(){
star = loadImage("star.png");
}



//FUNCTIONS

void starDisplay(){
image(star, obstacles.obs4Y,obstacles.obs4X, 50, 50);
}
}