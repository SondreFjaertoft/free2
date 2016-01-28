ObstaclesDisplay [] obstaclesCollection = new ObstaclesDisplay[3];

class Obstacles{

  
  
Obstacles(){
for (int i =  0; i < 3; i++) {
    obstaclesCollection[i] = new ObstaclesDisplay(i);
  }

}


void obstacles(int s){
  for(int i = 0; i < 3; i++){
  obstaclesCollection[i].obstaclesCreateRight();
  obstaclesCollection[i].obstaclesCreateLeft();
  obstaclesCollection[i].obstaclesMove(s);
}
}



}