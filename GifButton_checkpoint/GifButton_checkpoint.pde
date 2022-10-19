ArrayList<GifButton> gif=new ArrayList<GifButton>();
ArrayList<Button> myButton=new ArrayList<Button>();

int rectW, rectH;
int rectX, rectY;

//pallete
color red=#E30909;
color pink=#F76BE5;
color blue=#6BB2F7;
color green=#6CE380;
color orange=#F5A439;
color black=#0D0D0D;
color white=#FFFEFC;
color yellow=#FFFC9B;

boolean mouseReleased=false;
boolean wasPressed=false;

int gifControlor;

void setup(){
  background(white);
  size(800, 800); 
  rectW=400; 
  rectH=400;
  rectX=200; 
  rectY=200;
  
  gif.add(new GifButton("frame_", "_delay-0.03s.gif", 48, 1)); //<>//
  gif.add(new GifButton("endframe_", "_delay-0.07s.gif", 9, 1));
  

  myButton.add(new Button("cat", 300, 650, 100, 50, white, pink));
  myButton.add(new Button("dancing", 450, 650, 100, 50, yellow, green));
}

void draw(){
  click();
  for(int i=0; i<myButton.size(); i++){
    Button temp=myButton.get(i);
    temp.act();
    temp.show();
    
    if (temp.clicked){
      println(i);
      gifControlor=i;
      println(gifControlor);
    }
  }
  
  gif.get(gifControlor).act();
}
