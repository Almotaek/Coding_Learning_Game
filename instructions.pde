class Instructions {

  PImage background;
  PImage One;
  PImage Two;
  PImage Three;
  PImage button;
  PImage start;
  PFont f;
  boolean adIn= false;
  boolean begin=false;
  Instructions() {
    background = loadImage("bi.jpg");
    start = loadImage("start.png");
    button = loadImage("button.png");
    One = loadImage("One.JPG");
    Two = loadImage("Two.JPG");
    Three = loadImage("Three.JPG");
    f= createFont("Algerian", 80); // font style
  }


  void display() {
    textFont(f); 
    background(200);
    tint(200, 200, 200); 
    image(background, 0, height/5, width, height); 
    
    
    

    fill(0);

    textFont(f); //using the font
    textSize(40);
    textAlign(CENTER); //centering the text
    rectMode(CENTER);
    image(start, width/2-100, height/2-100, 200, 200); 
    if(begin== true) {
      image(start, width/2-100, height/2-100, 200, 200); 
      userName=true;
      instruction =false;
      begin =false;
    }
    if(mousePressed && mouseX<width/2 +100 && mouseX> width/2-100 && mouseY<height/2+100 && mouseY>height/2-100) {
      cliS.play();
     begin=true; 
    }
    
    
    
    
    if (adIn == false) {

       fill(168, 119, 50,50);
      image(button,width/2-(3*width/8), 5.5*height/8, 3*width/4, height/8);
      fill(255);
      text("Additional Instructions", width/2, 3* height/4);
      fill(0);
      
    
 


      text("Instructions", width/2, height/16);

      textSize(30);
      textAlign(CORNER); //centering the text
      text("Main Objective:", width/16, 2*height/16);
      textSize(25);
      textAlign(CORNER); //centering the text
      text("Help debug their java program \n to save the world from Lava ", width/16, 3*height/16);
    }
    else {
     
     text("Additional Instructions", width/2, height/16);

 //     textSize(30);
      textAlign(CORNER); //centering the text
   //   text("Objective:", width/16, 2*height/16);
      textSize(15);
      textAlign(CORNER); //centering the text
      // Hey Alex, you can write "\n" to make a new line!
      text("- Select the correct answers to solve the coding issues \n-Each score will be recorded based on the time used \n-Players must complete module one and module two.\n-For multiple choice and true/false questions, the player must select the correct answer from \n the given choices.\n-For 'fill in the blank' questions, the player must \n write the text that will make the statement correct.\n-For 'set in the correct order' questions, the player \n must move the provided concepts in the correct order", width/32, 3*height/32);

      
     //the videos of instructions:
    fill(255);
    image(One,0,height/1.5-125,250,250);
   image(Two,width/2-125,height/2-125,250,250);
    image(Three,width/2-125,height/1.2-125,250,250);
    image(Three,width/1.2-125,height/1.5-125,250,250);
    
    if(mousePressed && mouseX<width&& mouseX> width-100&& mouseY<height&& mouseY> height/2-100) {
      cliS.play();
     begin=true; 
    }
    
    
    image(start, width-100, height-100, 100, 100); 
    
    
    

    }



    if (mousePressed && mouseX<=width/2-(3*width/8)+(3*width/4)   && mouseX>= width/2-(3*width/8)&& mouseY <= (5.5*height/8)+height/8 && mouseY >= (5.5*height/8)) {
    adIn= true;
    cliS.play();
    println("in");
    }
  }
}
