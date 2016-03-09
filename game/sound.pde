

class Sound {


  AudioPlayer bonusPoint;
  AudioPlayer regularPoint;
  AudioPlayer deathSound;



  void soundBanana()
  {
    minim = new Minim(this);

    bonusPoint.rewind();
    bonusPoint.play();
  }

  void soundObstacle()
  {
    minim = new Minim(this);

    regularPoint.rewind();
    regularPoint.play();
  }

  void soundDeath()
  {
    //minim = new Minim(this);
    // deathSound.rewind();
    deathSound.play(600);
  }

  void BackgroundSoundStop()
  {
    background.close();
    minim.stop();
  }

  void soundDeathStop()
  {
    deathSound.close();
    minim.stop();
  } 

  void soundObstacleStop()
  {
    regularPoint.close();
    minim.stop();
  }
}