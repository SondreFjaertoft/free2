
import ddf.minim.*;
class Sound{
  

AudioPlayer bonusPoint;
AudioPlayer regularPoint;
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

void soundStop()
{
  background.close();
  minim.stop();
  //super.stop();
}
 
 
  
}