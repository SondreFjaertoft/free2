boolean left, right, space, start;
GameEngine gameEngine;


void setup(){
size(500,700);
gameEngine = new GameEngine();
}


void draw(){
imageMode(CENTER);
gameEngine.backgroundImage();
gameEngine.gameStartPage();
}

void keyPressed() {
  if(keyCode == LEFT) {
    left = true;}
  
  if(keyCode == RIGHT) {
    right = true;}
  
  
  if(keyCode == ' ') {
    space = true;}
  }


void keyReleased() {
    if(keyCode == LEFT) {
    left = false;}
  
  if(keyCode == RIGHT) {
    right = false;}
  
 
  
  if(keyCode == ' ') {
    space = false;}
}

void mousePressed(){
if (mousePressed ){
start = true;}
} 