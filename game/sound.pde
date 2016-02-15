
import ddf.minim.*;
class Sound{
  

AudioPlayer bonusPoint;
AudioPlayer regularPoint;
Minim minim;//audio context

void soundBanana()
{
  minim = new Minim(this);
  bonusPoint = minim.loadFile("banana_sound.mp3", 2048);
  bonusPoint.rewind();
  bonusPoint.play();
}

void soundObstacle()
{
  minim = new Minim(this);
  regularPoint = minim.loadFile("point_sound.mp3", 2048);
  regularPoint.rewind();
  regularPoint.play();
}

void soundStop()
{
  background.close();
  minim.stop();
  //super.stop();
}
 
 
  
}