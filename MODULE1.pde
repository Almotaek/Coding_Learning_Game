class Module1{

  int mod;
   int k; 
  PImage background;
  boolean  enter2=false;
  
  //classes of the game:
  Order1 ord1;
    Fill fil;
    TfSetup tf;
  
  
  Module1(int tmod){
      mod = tmod;
      fillInTheBlank=true;
  ord1 = new Order1(mod);
  
  fil = new Fill(mod);
  
  tf = new TfSetup(mod);
  
  
  
 background =loadImage("bi.jpg");

  
  }
  
  
  void play1(){
    
   //println(enter);
    
    
    if ((mCQ||trueFalse)){
      tf.tfDiplay();
      println("heree");
    }else if(mCQ){
  
      
    }else if(fillInTheBlank&&enter){
      fil.fillDraw();
      
    }else if(Order&&enter){
      ord1.order1Display();
      
    }else{
      
      
    }
     if(!enter&&!fillInTheBlank&&!trueFalse&&!Order&&!mCQ&&!menu){
      trueFalse=true;
      PtrueFalse=true;
    }
    
   
  
     
    if(!enter&&PtrueFalse&&!Order){
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
     
  //text("of trueeee falseeeeee", width/2, height/2);
  
  
  if(keyPressed){
    cliS.play();
    println("i am here");
    enter =true;
    PtrueFalse=false;
    keyPressed = false;
  }
  
  
  
  }
    
    
    if(!enter&&!fillInTheBlank&&!Order&&!trueFalse&&!mCQ&&!menu){
      PfillInTheBlank=true;
    }
    
   
 
   if(PfillInTheBlank&&!enter){
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
  text("These are some of the primitive \n data types that are used in Java.", width/2, height/2);
  
     }else{
       text("We can find out the number of elements in the array by \n calling the array andfollowing with the method “.length()”.\n This will determine how many elements\n there arein an array.", width/2, height/2);
     }
  
       
       
       
       
  
  
  if(keyPressed){
    cliS.play();
    println("i am here");
    enter =true;
    PfillInTheBlank =false;
    fillInTheBlank =true;
    keyPressed = false;
  }
  
  
  
  }
  
  if(!enter&&!Order&&!trueFalse&&!mCQ){
      Order=true;
    }
  
  
  if(POrder&&!enter&&!HOrder&&!PfillInTheBlank){
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
  text("Three things are required \n when using a  variable: \n 1. type \n 2. name \n 3. data", width/2, height/2);
     }else{
       text("In order to instantiate an array, one must have the word \n “new”, the type, and the size of the array. Her is an \nexample: var-name = new type [size];", width/2, height/2);
       
       
     }
  if(keyPressed){
    cliS.play();
    enter =true;
    POrder=false;
    keyPressed = false;
  }
  
  
  
  }
  
   if(HOrder&&!enter&&!trueFalse&&!PtrueFalse&&!mCQ){
     
     enter =false;
     POrder = false;
     fill(255);
  textSize(45);
  textAlign(CENTER);
  
  text("HINT!", width/2, 150);
    fill(0);
   textSize(25);
rectMode(CORNER);
fill(168, 119, 50,50);
rect(0,height/3,width,height/2);
fill(0);
     if(mod==1){
  text("First, we need to know what type of memory. \n Second, we need to give it a name!", width/2, height/2);
     }else{   text("We want a new array with type int of size 42", width/2, height/2);
     }
  
     if(keyPressed){
       cliS.play();
       Order = true;
       enter = true;
       HOrder = false;
       keyPressed = false;
       
     }
     
     
   }
  
  
  
   
// if(mCQ){
//   if(mod==1){

//  //below is for the 
//  String tfVariables= ("Do variables store information?");
//  String tfArrays= ("An array requires a type?");
//  //String hintArVar= ("Hint: Try again!");
//// however, for true false change the string that is passed in for the displayQ function
////both questions have the same hint
//  //tf.displayQ();
//  println("FINALLL");
//  textAlign(CORNER); //centering the text
//      textSize(25);
//      rect(a, 2*b, 550,75);
//      rect(width/32, 4*height/16, 350,75);
//      rect(width/32, 6*height/16, 385,75);
//      rect(width/32, 8*height/16, 300,75);

//      fill(255,0, 0);      
//      text("A: Each element of the list and the order.", width/16, 3*height/16);
//      text("B: The type and the size.", width/16, 5*height/16);
//      text("C: The size and the direction.", width/16, 7*height/16);
//      text("D: None of the above.", width/16, 9*height/16);
  
  
//  if (mousePressed && mouseX<= a+200 && mouseX>= a && mouseY <= (2*b) + 75 && mouseY >= (2*b) ) {
//      println("Correct"); 
//      aAnswer= true;
//      //this is the button for True
//    }

//    if (mousePressed && mouseX<= a+200 && mouseX>= a && mouseY <= (6*b) + 75 && mouseY >= (6*b) ) {
//      cAnswer= true;
//      lostCounter++;
//       //this is the button for False
//    }
//    if(lostCounter==2){
//      println("hint");
//    }

//    if (cAnswer==true) {
//      text("WRONG!", a+300, 7*b);
//      //if false button is hit, then this displays
//    }
//    if (aAnswer==true) {
  
//textSize(25);
//fill(255);
//textAlign(CENTER); //centering the text
//text("you won! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component
//      //if true button is hit, then this displays
//    }

//    textSize(30);
//    text("hinnnt", width/2, height/2);
//  }
//  //tf.answering(hintArVar);
// }
  
    //if(menu){
    //  trueFalse=false;
    //  PtrueFalse=false;
    //}
  println("HOrder ="+HOrder);
   println("Order ="+Order);
    println("POrder ="+POrder);
     println("enter ="+HOrder);
      println("PfillIn ="+PfillInTheBlank);
       println("fillIn ="+fillInTheBlank);
       println("TrueFALSE ="+trueFalse);
       println("PTrueFALSE ="+PtrueFalse);
       println("PmCQ ="+PmCQ);
        println("mCQ ="+mCQ);
          println("menue ="+menu);
    
    
  //  println(k++);
      
  
    
    
  }
  
  
  
  
}
