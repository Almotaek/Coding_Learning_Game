int userID;
class Text_Input{


Text_Input(){
  
   background = loadImage("bi.jpg");
   writing =true;
  
}

void InputDisplay(){
  
   usernamerequest();
}

void usernamerequest()
{
  background(200);
  tint(200,200,200);
  image(background,0,height/5,width,height);
  fill(255,0,0);
  textSize(60);
  textAlign(CENTER);
  text("Enter your username",width/2,height/3);
  
  noStroke();
  
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("USERNAME: "+username, 0.01*width, 0.05*height);
  
  textAlign(CENTER);
  textSize(60);
  fill(255);
  rectMode(CENTER);
  rect(width/2, height*0.65,0.6*width, 0.1*height,55,55,55,55);
  
  fill(0);
  text(typing,width/2,height*0.675);
  
  fill(255,0,0);
  rectMode(CENTER);
  
  buttonXmin=(width/2)-((0.3*width)/2);
  buttonXmax=(width/2)+((0.3*width)/2);
  buttonYmin=(height*0.8)-((0.08*height)/2);
  buttonYmax=(height*0.8)+((0.08*height)/2);
  
  rect(width/2, height*0.8,0.3*width, 0.08*height,55,55,55,55);
  fill(255);
  text("SUBMIT",width/2,height*0.825);
  
  if(keyPressed) {
    cliS.play();
  if(writing){
  if(key==TAB || key==ENTER || key==RETURN || key==ESC || key==DELETE)
  {
  }else if(key==BACKSPACE)
  {
    if(typing.length()>=1)
    {
    typing=typing.substring(0, typing.length()-1);
    }
  }else
  {
    if(typing.length()<=10)
    {
    typing = typing + key;
    typing=typing.toUpperCase();
    } 
  }
  }
  keyPressed =false;
}

if (mousePressed){
  cliS.play();
  if(writing){
  if(mouseX>=buttonXmin && mouseX<=buttonXmax && mouseY>=buttonYmin && mouseY<=buttonYmax)
  {
    username=typing;
    userID=table.getRowCount();
    typing="";
    mousePressed =false;
    userName = false;
    writing =false;
    menu = true;
    
  }
  }
}
  
  
  
  
}





}
