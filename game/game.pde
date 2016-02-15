boolean left, right, space, start, reStart;
GameEngine gameEngine;


void setup(){
size(500,700);                    //sets a size for the window
gameEngine = new GameEngine();    //makes a new object of GameEngine
}


void draw(){
imageMode(CENTER);                       //draws the background image
gameEngine.backgroundImage();
gameEngine.gameStartPage();
}

void keyPressed() {
  if(keyCode == LEFT) {             //checks if left arrow key is pressed
    left = true;}
  
  if(keyCode == RIGHT) {            //checks if right arrow key is pressed
    right = true;}
  
  
  if(keyCode == ' ') {              //checks if "space" key is pressed
    space = true;
    start = true;
    reStart = true;}
  }


void keyReleased() {                
    if(keyCode == LEFT) {            //checks if left arrow key is released
    left = false;}
  
  if(keyCode == RIGHT) {            //checks if right arrow key is released
    right = false;}
  
 
  
  if(keyCode == ' ') {             // checks if "space" bar is released
    space = false;
    reStart = false;}
}

void mousePressed(){              //checks if mousekey is pressed
if (mousePressed ){
start = true;}
} 