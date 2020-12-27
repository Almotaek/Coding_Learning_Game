  float[][][] location_and_size=new float[2][4][5];
  String[][] answers=//setup the answers for the questions here
  {
   
    {"INT","","",""},//Answers for question 1
 {"LENGTH","","",""}//Answers for question 2
  };

  void array()//set up the coordinates of the textboxes here
  {
     location_and_size[0][0][0]=width*0.5;//coordinates of textfields for question 1
     location_and_size[0][0][1]=height*0.6;
     location_and_size[0][0][2]=0.2*width;
     location_and_size[0][0][3]=1;
     location_and_size[0][0][4]=3;

     location_and_size[0][1][0]=900;
     location_and_size[0][1][1]=900;
     location_and_size[0][1][2]=0.3*width;
     location_and_size[0][1][3]=2;
     location_and_size[0][1][4]=6;
     
     location_and_size[0][2][0]=900;
     location_and_size[0][2][1]=900;
     location_and_size[0][2][2]=0.3*width;
     location_and_size[0][2][3]=3;
     location_and_size[0][2][4]=6;
     
     location_and_size[0][3][0]=900;
     location_and_size[0][3][1]=900;
     location_and_size[0][3][2]=0.3*width;
     location_and_size[0][3][3]=4;
     location_and_size[0][3][4]=6;
     
     location_and_size[1][0][0]=width*0.5;//coordinates of textfields for question 2
     location_and_size[1][0][1]=height*0.6;
     location_and_size[1][0][2]=0.35*width;
     location_and_size[1][0][3]=1;
     location_and_size[1][0][4]=6;

     location_and_size[1][1][0]=900;
     location_and_size[1][1][1]=900;
     location_and_size[1][1][2]=0.3*width;
     location_and_size[1][1][3]=2;
     location_and_size[1][1][4]=6;
     
     location_and_size[1][2][0]=900;
     location_and_size[1][2][1]=900;
     location_and_size[1][2][2]=0.3*width;
     location_and_size[1][2][3]=3;
     location_and_size[1][2][4]=6;
    
     location_and_size[1][3][0]=900;
     location_and_size[1][3][1]=900;
     location_and_size[1][3][2]=0.3*width;
     location_and_size[1][3][3]=4;
     location_and_size[1][3][4]=6;
  }

class Fill{
  
  int mod;
  Fill(int tmod){
    mod=tmod;
    array();
  for(int i=0; i<fg.length;i++)
    {
    fg[i]=new fill_the_gap_question(i);//inicialize separately in the beginning of the question to start the timer
    }
    
  }
  
  
  void fillDraw(){
    
    fg[fg_question].drawFillTheBlank();
    textq();
    
  }
  
  void textq()
{
  fill(255,255,255,100);
  noStroke();
  rectMode(CENTER);
  rect(width/2, height/4+40,width*0.6,height*0.4+20,30,30,30,30);
  textSize(20);
  fill(255,100,100);
  if(mod==1)
  {
    text1();
    //fg_question=0;
  }else if(mod==2)
  {
    text2();
     //fg_question=1;
  }
}

void text1()
{
  String q1="Type ____ is best for \n keeping track of an integer?";
  text(q1, width/2, height/4);
}

void text2()
{
 String q2="Question: Assuming \n int[] arrayOfInts = new int [42]; \n was already coded.\n What is the command that will result \n in the number of elements printed \n from this array? \n Println(arrayOfInts._____())";
 text(q2, width/2, height/4);
}
  
  
  
}
