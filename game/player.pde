class Player {
  // GLOBAL VARIABLES                          
  float playerWidth, playerHeight, playerY, playerX;                          // setter variabler
  PImage img;


  //CONSTRUCTOR          Setter verdi til variablene
  Player() {
    playerWidth = 60;
    playerHeight = 50;
    playerY = width/2;
    playerX = height/2;

    img = loadImage("Apekatt2.png");      //laster inn bilde av spilleren (ape)
  }


  //FUNCTIONS      Tegner spilleren
  void player() {
    imageMode(CENTER);
    image(img, playerY, playerX, playerWidth, playerHeight);
    //rect(playerY - playerWidth/2, playerX - playerHeight, playerWidth, playerHeight);
  }
}