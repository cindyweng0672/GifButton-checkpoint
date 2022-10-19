class GifButton {
  PImage[] gif;
  int n;
  String prefix;
  String suffix; 

  int frame; 
  
  int x, y;
  int w, h;
  int speed;

  GifButton(String prefix, String suffix, int n, int speed) {
    this.n=n; 
    this.prefix=prefix; 
    this.suffix=suffix;
    gif=new PImage[n];

    x=rectX;
    y=rectY;
    w=rectW;
    h=rectH;
    this.speed=speed; 

    for (int i=0; i<n; i+=1) {
      gif[i]=loadImage(prefix+i+suffix);
    }
  }

  void act() {
    image(gif[frame], x, y, w, h);
    frame+=speed;
    if (frame>=n-1) {
      frame=0;
    }
  }

  void show() {
  }
}
