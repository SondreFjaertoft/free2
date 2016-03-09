ObstaclesDisplay [] obstaclesCollection = new ObstaclesDisplay[2];

class Obstacles {



  Obstacles() {
    for (int i =  0; i < 2; i++) {
      obstaclesCollection[i] = new ObstaclesDisplay(i);
    }
  }


  void obstacles(float s) {
    for (int i = 0; i < 2; i++) {
      obstaclesCollection[i].obstaclesCreateRight();
      obstaclesCollection[i].obstaclesCreateLeft();
      obstaclesCollection[i].obstaclesMove(s);
      obstaclesCollection[i].obstacleCreateNew();
    }
  }
}