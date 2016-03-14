

class Sound {


  AudioPlayer bonusPoint;
  AudioPlayer regularPoint;
  AudioPlayer deathSound;


// denne funkjsonen kalles for at bonus lyden skal køyres
  void soundBanana()
  {
    minim = new Minim(this);

    bonusPoint.rewind();
    bonusPoint.play();
  }

// denne funkjsonen kalles for at vanlige poeng lyden skal køyres
  void soundObstacle()
  {
    minim = new Minim(this);

    regularPoint.rewind();
    regularPoint.play();
  }

// denne funkjsonen kalles for at game over lyden skal køyres
  void soundDeath()
  {
    //minim = new Minim(this);
    // deathSound.rewind();
    deathSound.play(600);
  }



}