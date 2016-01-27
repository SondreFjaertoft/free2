class Awards extends Obstacles{
// GLOBAL VARIABLES
PImage star;


//CONSTRUCTOR
Awards(){
star = loadImage("star.png");
}



//FUNCTIONS

void starDisplay(){
image(star, 500, 400, 50, 50);
}
}