class Intro{
  PImage background;
  
  String info = "LAVA"; // text used
  String names = "By Alex,Ivan and Khalid";
PFont f; 
float y = -50;
Balls[] ball = new Balls[30];
  Intro(){
    background = loadImage("bi.jpg");
   
    f = createFont("Algerian", 80); 
    
     for(int i=0; i<ball.length;i++){
  ball[i] = new Balls();
  
  }
  }
  void display(){
background(200);
tint(200,200,200);
image(background,0,height/5,width,height); 
fill(255); 
textFont(f); //using the font
textSize(110);
fill(252, 44, 3);
textAlign(CENTER); //centering the text
text(info,width/2,y); // displaying the text and adding a 3d component



if(y<height/8){
y++; // decreasing the y and 
}else{



  fill(255);
  textSize(30);
  text("Press any button to start the game",width/2,height/1.5); 
  textSize(25);
  textAlign(LEFT);
fill(252);
  text(names,0,height-20); 
   textAlign(RIGHT);
   text("CS-104 Final Project Spring 2020",width,height-20); 
   textAlign(CENTER);
}

for ( int i = 0; i < ball.length-1; i++){
   ball[i].display();
  ball[i].bounce();
  ball[i].gravity();
  }
  }
  
  
  void press(){
    
    if (keyPressed){
      cliS.play();
    println("N");
    intro =false;
    story = true;
   
    }keyPressed= false;
  }
  
  void menu(){
    background(200);
  }

}
