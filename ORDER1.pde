class Order1{
  boolean finish = false;
  boolean allIn = false;
  int lostCounter  =0;
  PFont f;
  
  Boxes1 box1A;
  Boxes1 box1B;
  Boxes1 box1C;
  Boxes1 box1D;
  
 int mod;
  
  
  Order1(int tmod){
    mod = tmod;
    background = loadImage("bi.jpg");
     f = createFont("Algerian", 80); 
     
      box1A = new Boxes1(1,mod);
     box1B = new Boxes1(2,mod);
     box1C = new Boxes1(3,mod);
     box1D = new Boxes1(4,mod);
    
  }
  
  
  
  
  
  
void order1Display(){
 
background(200);
tint(200,200,200);
image(background,0,height/5,width,height); 



box1A.boxes1Display();
box1B.boxes1Display();
box1C.boxes1Display();
box1D.boxes1Display();


if(box1A.in1&&box1B.in2&&box1C.in3&&box1D.in4){
      
//allIn = true;
    
if(box1A.j1>height/6+25-10&& box1A.j1<height/6+25+10 && box1B.j2>height/6+185-10&&box1B.j2<height/6+185+10  &&  box1C.j3>height/6+345-10 && box1C.j3<height/6+345+10&&  box1D.j4>height/6+505-10&&box1D.j4<height/6+505+10){
          
won =true;


     }else if(!finish&&box1A.i1<=width/2&&box1B.i2<=width/2&&box1C.i3>=(width/2)-145&&box1D.i4>=(width/2)-145) {/////////////////change to check if innnnnnnnnnnnnnnnnn
 
lost =true;
finish = true;

     }

}
if(won){
 println("win");
 textFont(f); //using the font
textSize(25);
fill(255);
textAlign(CENTER); //centering the text
text("you won! press any button to continue",width/2,height/2); // displaying the text and adding a 3d component
}
if(lost){
  
   textFont(f); //using the font
textSize(25);
fill(255);
textAlign(CENTER); //centering the text
text("you lost! press any button to countine",width/2,height/2); // displaying the text and adding a 3d component

}

rectMode(CORNER);
fill(168, 119, 50,50);
rect(0,0,width,height/6);

if (mod==1){
textFont(f); //using the font
textSize(35);
fill(255);
textAlign(CENTER); //centering the text
text("When initializing a variable, the required \n information comes in this order:?",width/2,50); // displaying the text and adding a 3d component
}else{
textFont(f); //using the font
textSize(20);
fill(255);
textAlign(CENTER); //centering the text
text("Given this ‘int[] arrayOfInts’ was already \n coded. What is the order to instantiate \n an array of integer with a length of 42?",width/2,50); // displaying the text and adding a 3d component
}


fill(168, 119, 50,50);
rect(width/2-(width/6),height/6,width/3,height);





    
    
    
   

   
if(keyPressed&&won){
  cliS.play();
  Order=false;
  POrder=false;
  won =false;
  lost =false;
   enter = true;
  // module1=false;
  //module2=false;
  if(!menu){
trueFalse=true;
PtrueFalse=true;
  }


  keyPressed= false;
  
  
  box1A.i1=width-200;
  box1A.j1=height-200;
  
  box1B.i2=width-200;
  box1B.j2=height/6+100;
  
  box1C.i3=80;
  box1C.j3=height-200;
  
  box1D.i4=80;
  box1D.j4=height/6+100;
  
  finish = false;
  
   
}
if(keyPressed&&lost){
  cliS.play();
  
    
  allIn = false;
  lost =false;
 
  

  box1A.i1=width-200;
  box1A.j1=height-200;
  
  box1B.i2=width-200;
  box1B.j2=height/6+100;
  
  box1C.i3=80;
  box1C.j3=height-200;
  
  box1D.i4=80;
  box1D.j4=height/6+100;
  
  
  

  println(box1A.i1);
println("lost and clicked");

finish = false;

  
lostCounter++;
println(lostCounter);
 keyPressed= false;
 
 
  
  
  //Order=false;
  //module1 =false;
  //again = true;
    
     //trueFalse=true;
 }
 //if( box1D.i4==80&&box1C.j3==height-200&& box1B.i2==width-200&&box1A.i1==width-200){
 //  finish = false;
 //}
 
 //println(lost);
if(lostCounter == 2){
  HOrder=true; 
  
  enter = true;
  

  lostCounter=3;
  
}

//if(lostCounter==2){
//  POrder=false;
//  HOrder = true;
//    Order=false;
//  won =false;
//  lost =false;
//   module1=false;
//  module2=false;
//  enter = false;
//trueFalse=true;


//  }

  
  if(lostCounter ==5){
      
    Order=false;
  won =false;
  lost =false;
  // module1=false;
  //module2=false;
    enter = true;
    if(!menu){
trueFalse=true;
PtrueFalse=true;
    }
    lostCounter=0;
  }

  }
  
  
  
  
  
}
