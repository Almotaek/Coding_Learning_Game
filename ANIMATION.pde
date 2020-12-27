class Animation{
float y = 0;
boolean b1=false;
boolean b2=false;
 PFont f;
int timer=0;
PImage load;

  Animation(){
    f= createFont("Algerian", 80); // font style
    background(255);
  frameRate(10);
  load = loadImage("loading.png");
    
  }
  
  void AnimationDisplay(){
     animation();
}

void animation()
{
  backgroundA();
  if(!b1)
  {
  b1=textA();
  }
  if(b1&& !b2)
  {
    b2=presents();
  }
}

void backgroundA()
{
  int step=3;
   background(0);
   for(int x=0; x<=width; x+=step)
   {
     for(int y=0; y<=height; y+=step)
     {
       noStroke();
       fill(random(map(x,0,width,0,255),255)-random(map(y,0,height,0,150),150));
       //fill(map(x,0,width,0,255));
       rectMode(CORNER);
       rect(x,y,step,step);
     }
   }
}

boolean textA()
{
  float x = width/3;
  
  
  y+=10;
  if(y>=height/3)
  {
    y=height/3;
    return true;
  }
  
  int font=50;
  fill(255,0,0);
   textFont(f);
  char[] alex={'A','L','E','X'};
  char[] ivan={'I','V','A','N'};
  char[] khalid={'K','H','A','L','I','D'};

  
  textAlign(CENTER,BOTTOM);
  textSize(font);
    aniS.amp(0.3);
    aniS.play();
  //text("A",x,y);
  for(int i=0; i<alex.length; i++)
  {
    text(alex[i],x-50,y+i*font);
  }
  for(int i=0; i<ivan.length; i++)
  {
    text(ivan[i],x,y+i*font);
  }
  text("-",x+50,y);
  for(int i=0; i<khalid.length; i++)
  {
    text(khalid[i],x+100,y+i*font);
  }
  text("NOWLEDGE",x+250,y);
  if(y<height/3)
  {
    return false;
  }else
  {
    return true;
  }
}

boolean presents()
{
  textFont(f);
  fill(255,0,0);
  float xp=width/2;
  float yp = height/2;
   textSize(65);
  text("PRESENTS",xp,yp);
  tint(200,200,200);
    image(load,width/2-50,height/1.6,100,100);
    textSize(20);
   
     text("Loading...",width/2,height/1.2);
     aniS.stop();
  timer++;
  if(timer>=100)
  {
     
    animation = false;
    intro = true;
    
      frameRate(60);
    return true;
    
  }else
  {
    
    return false;
  }
  }
  
  
  
  
  
  
  
  
  
}
