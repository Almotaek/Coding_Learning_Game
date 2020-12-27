class TfSetup{
  int mod;
  boolean won;
  boolean lost;
  boolean go =false;
  boolean another;
  boolean end=false;
 boolean thing = false;
    PImage background;
  PImage button;
  float a= width/32;
  float b= height/16;
  int lostCounter=0;
  boolean aAnswer=false;
  boolean bAnswer=false;
  boolean cAnswer=false;
  boolean dAnswer=false;
  boolean mcq;
  
  TfSetup(int tmod){
    mod=tmod;
    background = loadImage("bi.jpg");
  }
  
  
  void tfDiplay(){
    println(end);
    if(end ==true){
    menu=true;
    trueFalse=false;
    PtrueFalse=false;
  }
    if(!end){
    
     if(!thing&&!another){
background(200);
tint(200,200,200); 
image(background,0,height/5,width,height); 
  fill(255);
  textSize(25);
  textAlign(CENTER);
  
  text("TEXT PORTION \n Press any button to go", width/2, 150);
    fill(0);
   textSize(25);
rectMode(CORNER);
fill(168, 119, 50,50);
rect(0,height/3,width,height/2);
fill(0);
     if(mod==1){
  text("Variables can hold primitive \n values or references to objects and arrays. \n Avariable is a named pointer to a location \n in memory where data is stored.", width/2, height/2);
     }else{
         text("Each array must have a type just like variables.", width/2, height/2);

       
     }
  
  if(keyPressed){
    cliS.play();
thing=true;
    keyPressed = false;
  }
     }
  
    
    
    
    
    
   println("u are there");
    
    
     if(thing&&!another){

    //  textFont(f); 
    background(200);
    tint(200, 200, 200); 
    image(background, 0, height/5, width, height); 

    fill(0);

    textAlign(CENTER); //centering the text
    rectMode(CORNER);
if(!mCQ){
    //here is the question
    if(mod==1){
    text("There is difference between an \n ArrayList and an Array?", width/2, 2*height/32);
    }else{
      text("JAVA IS NOT THE ONLY \n Programming language?", width/2, 2*height/32);
    }
    textAlign(CORNER); //centering the text
    textSize(25);

if(mouseX>width/6&&mouseX<width/6+200&&mouseY>height/2&&mouseY<height/2+75&&mousePressed){
  cliS.play();

won=true;
}

if(mouseX>width/1.5&&mouseX<width/1.5+200&&mouseY>height/2&&mouseY<height/2+75&&mousePressed){
  cliS.play();

lost=true;
}

    rect(width/6, height/2, 200, 75);
    rect(width/1.5, height/2, 200, 75);

    fill(255, 0, 0);      
    text("TRUE", width/6+50, height/2+35);
    text("False", width/1.5+50, height/2+35);
    
    if(won){
      
      textSize(25);
fill(255);
textAlign(CENTER); //centering the text
text("you won! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component

    }
    
    if (lost){
              textSize(25);
fill(255);
textAlign(CENTER); //centering the text
text("you lost! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component

    }
    
    
    
    if(keyPressed&&won){
         Order=false;
   POrder=false;
      cliS.play();
//////////////////////////////////////
  thing =true;
another=true;
  won =false;
  lost =false;


keyPressed =false;

   
 }
 
 if(keyPressed&&lost){
      Order=false;
   POrder=false;
   cliS.play();
thing =true;
  won =false;
  lost =false;
 lostCounter++;
 another=true;

keyPressed =false;

   
 }
 
 if(lostCounter==2){
   Order=false;
   POrder=false;
     won =false;
  lost =false;
  // module1=false;
  //module2=false;
 
  thing =true;
 
another=true;
keyPressed =false;
 }
}
     }else if(another){

       
       
       
       
background(200);
tint(200,200,200); 
image(background,0,height/5,width,height); 
  fill(255);
  textSize(45);
  textAlign(CENTER);
  
  text("TEXT PORTION \n Press any button to go", width/2, 150);
    fill(0);
   textSize(25);
rectMode(CORNER);
fill(168, 119, 50,50);
rect(0,height/3,width,height/2);
fill(0);
     if(mod==1){
  text("A type is the kind of data stored in that variable. \n This could be a whole number, adecimal number, \n or a character. The type keeps track of how \n much memory the computershould store.", width/2, height/2);
     }else{
         text("An array keeps track of two important items: \n (1) the list keeps track of the elementsin the list themselves, \n (2) the list keeps track of the order of those elements.", width/2, height/2);

     }
  
  if(keyPressed){
       Order=false;
   POrder=false;
    cliS.play();
 go =true;
    keyPressed = false;
  }
  
  
  
  
       
       
       
      if(go){
        
        
   
   
    if(keyPressed&&won){
         Order=false;
   POrder=false;
   end=true;
  thing =true;
  another=false;
  trueFalse=false;
  PtrueFalse=false;
  won =false;
  lost =false;
 go =false;
  menu=true;
  // module1=false;
  //module2=false;
  //enter = true;
mCQ=false;
PmCQ=false;
keyPressed =false;

   
 }
  
     
         background(200);
    tint(200, 200, 200); 
    image(background, 0, height/5, width, height); 

  //below is for the 
  if(mod==1){
  String tfVariables= ("What is a variable?");
  text(tfVariables, width/2-50, 50);
  }else{
  String tfArrays= ("You can make an array of:");
  text(tfArrays, width/2, 50);

  
  
  
  
  
  //tf.answering(hintArVar);
 }println(aAnswer);
 
 
 
 
 
     
     
    
     
    textSize(20);
        if(bAnswer==true) {
             textAlign(RIGHT);  
            text("WRONG!", width/2 , height/2);

    }
        if(cAnswer==true) {
          textAlign(RIGHT);
          text("WRONG!", width-20 , 7*b);

    }
        if(dAnswer==true) {
          textAlign(RIGHT);  
          text("WRONG!", width-20, 9*b);
    }
    
    
    if(aAnswer==true) {
      textAlign(RIGHT);  
      text("CORRECT!", width-20 , 3*b);
won =true;
    }
    
    
//    if(keyPressed&&won){
//Order=false;
 
//  trueFalse=false;
//  PtrueFalse=false;
//  won =false;
//  lost =false;
//  // module1=false;
//  //module2=false;
//menu=true;
//mCQ=false;
//PmCQ=false;
//keyPressed =false;

   
// }
      
      
      
      
      
  
    if(lostCounter==2){
     
    }

    if (cAnswer==true) {
      text("WRONG!", a+300, 7*b);
      //if false button is hit, then this displays
    }
    if (aAnswer==true) {
  
textSize(25);
fill(255);
textAlign(CENTER); //centering the text
text("you won! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component
      //if true button is hit, then this displays
    
won =true;
    
  }
  
  
   
    
  textAlign(CORNER); //centering the text
      textSize(25);
      fill(0);
      rect(a, 2*b, 550,75);
      rect(width/32, 4*height/16, 350,75);
      rect(width/32, 6*height/16, 385,75);
      rect(width/32, 8*height/16, 300,75);
      

      
     if (mousePressed && mouseX<= a+550 && mouseX>= a && mouseY <= (2*b) + 75 && mouseY >= (2*b) ) {
aAnswer= true;
won =true;
    }
    
    if (mousePressed && mouseX<= a+250 && mouseX>= a && mouseY <= 4*height/16 + 75 && mouseY >= 4*height/16 ) {
bAnswer=true;
    }
    
    if (mousePressed && mouseX<= a+250 && mouseX>= a && mouseY <= 4*height/16 + 75 && mouseY >= 6*height/16 ) {
cAnswer= true;

    }
    
    if (mousePressed && mouseX<= a+250 && mouseX>= a && mouseY <=  8*height/16 + 75 && mouseY >=  8*height/16 ) {
dAnswer= true;
    }

if(mod==1){
      fill(255,0, 0);      
      text("A: Information stored in the computer", width/12, 3*height/16);
      text("B: an object ", width/12, 5*height/16);
      text("C: Nothing", width/12, 7*height/16);
      text("D: None of the above.", width/12, 9*height/16);
      
}else{
   fill(255,0, 0);      
      text("A: All of the above", width/16, 3*height/16);
      text("B: boolean", width/16, 5*height/16);
      text("C: int", width/16, 7*height/16);
      text("D: String", width/16, 9*height/16);
     
  
}
     
 if(keyPressed&&won){
      Order=false;
   POrder=false;
   Order=false;
   POrder=false;
      end=true;
   go =false;
    textSize(25);
    another=false;
    
fill(255);
textAlign(CENTER); //centering the text
text("you won! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component
      //if true button is hit, then this displays
   menu=true;

     trueFalse=false;
  PtrueFalse=false;
   
   
   mCQ=false;
   keyPressed=false;
   
 // trueFalse=false;
 //mCQ=false;
 //  fillInTheBlank=false;
 // Order=false;
  
 // PtrueFalse=false;
 //  PmCQ=false;
 // PfillInTheBlank=true;
 // POrder=false;
  
 //  HtrueFalse=false;
 //HmCQ=false;
 // HfillInTheBlank=false;
 // HOrder=false;
   
   
 }
 
 

    
    
    
    
    
    
    
     }
    
    
    
    
     }
  
  
  
     
  
     }
     else{
     trueFalse =false;
     PtrueFalse =false;
     menu =true;}
}
}
