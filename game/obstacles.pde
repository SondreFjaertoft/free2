ObstaclesDisplay [] obstaclesCollection = new ObstaclesDisplay[20];

class Obstacles{

  
  
Obstacles(){
for (int i =  0; i < 20; i++) {
    obstaclesCollection[i] = new ObstaclesDisplay(i);
  }

}


void obstacles(){
  for(int i = 0; i < 20; i++){
  obstaclesCollection[i].obstaclesRun();
}
}



}