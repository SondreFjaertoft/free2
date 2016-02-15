
import ddf.minim.*;
class Sound{
  

AudioPlayer bonusPoint;
AudioPlayer regularPoint;
AudioPlayer deathSound;
Minim minim;//audio context


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
  minim = new Minim(this);
  deathSound.rewind();
  deathSound.play();
}

void soundStop()
{
  background.close();
  minim.stop();
  //super.stop();
}
 
 
  
}