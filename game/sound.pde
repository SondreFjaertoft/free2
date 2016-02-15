import ddf.minim.*;
class Sound{
  
  
AudioPlayer background;
Minim minim;//audio context

void setup()
{
  minim = new Minim(this);
  background = minim.loadFile("background_sound.mp3", 2048);
  background.play();
}

void draw()
{
}

void stop()
{
  background.close();
  minim.stop();
  //super.stop();
}
 
 
  
}