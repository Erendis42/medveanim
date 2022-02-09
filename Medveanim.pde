import processing.sound.*;

int unit = 30;
int count;
Module[] mods;
SoundFile file1;
SoundFile file2;

void setup() { 
  surface.setLocation(100,100);
  size(1280, 720);
  noStroke();
  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      boolean r = random(1) > .5;
      mods[index++] = new Module((int)(random(0,width)), (int)(random(0,height)), (int)(random(5,15)),r);
    }
  }
  
  delay(5000);  
  
  file1 = new SoundFile(this, "applause.wav");
  file1.play();
  
  file2 = new SoundFile(this, "horses-galopp.wav");
  file2.play();
}

void draw() {
  background(0);
  for (Module mod : mods) {
    mod.update();
    mod.display();
  }
}
