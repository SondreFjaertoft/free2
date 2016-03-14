ObstaclesDisplay [] obstaclesCollection = new ObstaclesDisplay[2];

class Obstacles {

  //lager to nye objekt av obstaclesDispaly i ei arrayListe
  Obstacles() {
    for (int i =  0; i < 2; i++) {
      obstaclesCollection[i] = new ObstaclesDisplay(i);
    }
  }

  // køyrer dei underliggende funksjonane av begge objekta som er laget av obstaclesDisplay
  void obstacles(float s) {
    for (int i = 0; i < 2; i++) {
      obstaclesCollection[i].obstaclesCreateRight();
      obstaclesCollection[i].obstaclesCreateLeft();
      obstaclesCollection[i].obstaclesMove(s);
      obstaclesCollection[i].obstacleCreateNew();
    }
  }
}