class Menu{
  PImage background;
   PImage button;
  PFont f;
  Menu(){
    background = loadImage("bi.jpg");
    button = loadImage("button.png");
    
   f = createFont("Algerian", 80); // font style
  }
  
  
  void menuDisplay(){

    PfillInTheBlank=true;
    trueFalse=false;
    PtrueFalse=false;
  
    
    textFont(f); 
    
background(200);
tint(200,200,200); 
image(background,0,height/5,width,height); 

fill(0);
  textSize(15);
  textAlign(CORNER);
  text("USERNAME: "+username, 0.01*width, 0.05*height);
    
image(button,width/2-(width/4), 20, width/2, height/8);
      fill(255);
      textAlign(CENTER, CENTER);
      textSize((height+width)/30);
      text("Menu", width/2, 50);
      fill(255,3,3);
      
      
      image(button,width/20, height/2, width/3, height/9);
      textSize((height+width)/100);
      fill(255);
      text("VARIABLES", (width/20)+(width/5.8), (height/2)+(height/20));
      
      fill(255, 100, 100);      
      image(button,width/1.6, height/2, width/3, height/9);
       textSize((height+width)/100);
      fill(255);
      text("ARRAYS", (width/1.6)+(width/5.8), (height/2)+(height/20));
      
      image(button,width/2-(width/6), height-90, width/3, height/9);
      textSize((height+width)/100);
      fill(255);
      text("Leader Board", (width/2), height-50);
    
      if (mouseX >=width/1.6 && mouseX <= (width/1.6)+(width/3)
        && mouseY >= height/2 && mouseY <=(height/2)+(height/9) && mousePressed) {
          cliS.play();
     println("clicked 2");
        menu =false;
       module2=true;
       //Order = true;////////////////////////////////////////////////////change
       
       fillInTheBlank=true;
           enter = false;
      }
      //checking if the play button was clicked to start the game:
      if (mouseX >= width/20 && mouseX <= (width/20)+(width/3)
        
     && mouseY >= height/2  && mouseY <= (height/2)+(height/9)&& mousePressed) {
       cliS.play();
       println("clicked 1");
       menu =false;
       module1=true;
       //Order = true;////////////////////////////////////////////////////change
       fillInTheBlank=true;
           enter = false;
      }
      
       if (mouseX >=width/2-(width/6) && mouseX <= width/2-(width/6)+(width/3)
        && mouseY >= height-90 && mouseY <=height-90 +(height/9) && mousePressed) {
          cliS.play();
     println("clicked 3");
     leaderBoard = true;
         menu =false;
      }
 
    
  }
}
