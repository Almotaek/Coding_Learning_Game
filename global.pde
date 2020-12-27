void score()//displaying the score
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("SCORE: "+score, 0.8*width, 0.05*height);
  //text("boxnumber: "+boxnumber, 0.8*width, 0.05*height); //debugging
  //text(mouseY, 0.7*width, 0.2*height);
  //text(mouseX, 0.7*width, 0.15*height);
  //text("FRAMERATE: "+frameRate, 0.8*width, 0.2*height);
}

void user()//displaying the username
{
  fill(0);
  textSize(15);
  textAlign(CORNER);
  text("USERNAME: "+username, 0.01*width, 0.05*height);
}

void back()//displaying the background
{
  background(200);
  tint(200,200,200);
  image(background,0,height/5,width,height); 
}
