class Boxes1{
  int rank =0;
float i1,j1,i2,j2,i3,j3,i4,j4;
boolean one =false;
boolean two =false;
boolean three =false;
boolean four =false;

boolean hold1 = false;
boolean hold2 = false;
boolean hold3 = false;
boolean hold4 = false;

boolean in1 =false;
boolean in2 =false;
boolean in3 =false;
boolean in4 =false;


PImage box;
int mod;
  Boxes1(int trank, int tmod){
    mod = tmod;
    box = loadImage("box.png");
  rank=trank;

if(rank==1){

    i1=width-200;
    j1=height-200;
}
if(rank==2){

    i2=width-200;
    j2=height/6+100;
    
}

if(rank==3){

    i3=80;
    j3=height-200;
    
}

if(rank==4){

    i4=80;
    j4=height/6+100;
    
}


  }
  
  void boxes1Display(){
    
    
      
    
    
    
     fill(255);
     tint(150,255,150);
     if(i1!=0){
     image(box,i1,j1,150,150);

textSize(17);
fill(255);
textAlign(CENTER); //centering the text
if(mod==1){
text("Type",i1+75,j1+75); // displaying the text and adding a 3d component

     }else if(i1!=0){
       textSize(17);
       text("=",i1+75,j1+75);
     }
     }
     if(i2!=0){
     image(box,i2,j2,150,150);
     textSize(17);
fill(255);
textAlign(CENTER); //centering the text
if(mod==1){
text("name",i2+75,j2+75); // displaying the text and adding a 3d component
     }else {
       textSize(17);
       text("new ",i2+75,j2+75); 
     }
  }
     if(i3!=0){
     image(box,i3,j3,150,150);
     textSize(17);
fill(255);
textAlign(CENTER); //centering the text
if(mod==1){
text("data ",i3+75,j3+75); // displaying the text and adding a 3d component
     }else if(i3!=0){
       textSize(17);
       text("int",i3+75,j3+75); 
     }
  }
     if(i4!=0){
     image(box,i4,j4,150,150);
     textSize(17);
fill(255);
textAlign(CENTER); //centering the text
if(mod==1){
text(";",i4+75,j4+75); // displaying the text and adding a 3d component
     }else if(i4!=0){
       textSize(17);
       text("[42]",i4+75,j4+75); 
     }
     }
     

      
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2-(width/11),height/6+25,150,150);
    strokeWeight(0);
    
textSize(40);
fill(255,255,255,50);
textAlign(CENTER); //centering the text

text("#1",width/2-(width/11)+75,height/6+25+75); // displaying the text and adding a 3d component

    
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2-(width/11),height/6+185,150,150);
    strokeWeight(0);
    
    textSize(40);
fill(255,255,255,50);
textAlign(CENTER); //centering the text

text("#2",width/2-(width/11)+75,height/6+185+75); // displaying the text and adding a 3d component

    
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2-(width/11),height/6+345,150,150);
    strokeWeight(0);
    
    textSize(40);
fill(255,255,255,50);
textAlign(CENTER); //centering the text

text("#3",width/2-(width/11)+75,height/6+345+75); // displaying the text and adding a 3d component

    
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2-(width/11),height/6+505,150,150);
    strokeWeight(0);
    
    textSize(40);
fill(255,255,255,50);
textAlign(CENTER); //centering the text

text("#4",width/2-(width/11)+75,height/6+505+75); // displaying the text and adding a 3d component




    if((i1>width/2-(width/6)&&i1<width/2-(width/6)+(width/3)&&j1>height/6&&j1<height&&!mousePressed)){
      i1 = width/2-(width/11);
      in1 =true;
      if(j1>height/6+25&&j1<height/6+25+150&&!one){
      
      j1=height/6+25;
      one = true;
      }else{one = false;}
      if(j1>height/6+185&&j1<height/6+185+150&&!two){
     two = true;
      j1=height/6+185;
      }else{two = false;}
      if(j1>height/6+345&&j1<height/6+345+150&&!three){
      three = true;
      j1=height/6+345;
      }else{three = false;}
      if(j1>height/6+505&&j1<height/6+505+150&&!four){
     four = true;
      j1=height/6+505;
      }else{four = false;}
      
      
      
    }
    
    if((i2>width/2-(width/6)&&i2<width/2-(width/6)+(width/3)&&j2>height/6&&j2<height&&!mousePressed)){
      i2 = width/2-(width/11);
      in2 =true;
      if(j2>height/6+25&&j2<height/6+25+150&&!one){
      one = true;
      j2=height/6+25;
      }else{one =false;}
      if(j2>height/6+185&&j2<height/6+185+150&&!two){
     two= true;
      j2=height/6+185;
      }else{two =false;}
      if(j2>height/6+345&&j2<height/6+345+150&&!three){
      three = true;
      j2=height/6+345;
      }else{three =false;}
      if(j2>height/6+505&&j2<height/6+505+150&&!four){
     four = true;
      j2=height/6+505;
      }else{four=false;}
      
      
      
    }
    
    if((i3>width/2-(width/6)&&i3<width/2-(width/6)+(width/3)&&j3>height/6&&j3<height&&!mousePressed)){
      in3 =true;
      i3= width/2-(width/11);
      if(j3>height/6+25&&j3<height/6+25+150&&!one){
      one = true;
      j3=height/6+25;
      }else{one = false;}
      if(j3>height/6+185&&j3<height/6+185+150&&!two){
     two = true;
      j3=height/6+185;
      }else{two = false;}
      if(j3>height/6+345&&j3<height/6+345+150&&!three){
      three = true;
      j3=height/6+345;
      }else{three = false;}
      if(j3>height/6+505&&j3<height/6+505+150&&!four){
     four=true;
      j3=height/6+505;
      }else{four =false;}
      
      
      
    }
    
     if((i4>width/2-(width/6)&&i4<width/2-(width/6)+(width/3)&&j4>height/6&&j4<height&&!mousePressed)){
      i4 = width/2-(width/11);
      in4 =true;
      if(j4>height/6+25&&j4<height/6+25+150){
      
      j4=height/6+25;
      }
      if(j4>height/6+185&&j4<height/6+185+150){
     
      j4=height/6+185;
      }
      if(j4>height/6+345&&j4<height/6+345+150){
      
      j4=height/6+345;
      }
      if(j4>height/6+505&&j4<height/6+505+150){
     
      j4=height/6+505;
      }
      
      
      
    }
   
  if(!lost&&!won){
    
     if(mouseX>i1 && mouseX<i1+150&&mouseY>j1&& mouseY<j1+150&&mousePressed&&!hold2&&!hold3&&!hold4){
   hold1 =true;
     
     i1 =mouseX-75;
      j1=mouseY-75;
       
      
       
    }else{hold1= false;}
    
    
     
     if(mouseX>i2 && mouseX<i2+150&&mouseY>j2&& mouseY<j2+150&&mousePressed&&!hold1&&!hold3&&!hold4){
        hold2 =true;
      i2 =mouseX-75;
      j2=mouseY-75;
    }else{hold2= false;}
     
     
 
    
     if(mouseX>i3 && mouseX<i3+150&&mouseY>j3&& mouseY<j3+150&&mousePressed&&!hold2&&!hold1&&!hold4){
        hold3=true;
      i3 =mouseX-75;
      j3=mouseY-75;
    }else{hold3= false;}
    
     
     
    
    
     if(mouseX>i4 && mouseX<i4+150&&mouseY>j4&& mouseY<j4+150&&mousePressed&&!hold2&&!hold3&&!hold1){
        hold4 =true;
      i4 =mouseX-75;
      j4=mouseY-75;
    }else{hold4= false;}
    
     
     
   
    
  }
  
  

  
  
  
  }
  
 
    
    
  
  
  
  
}
