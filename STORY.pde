class Story{
String info = "Woah!\nIn a world where Java is the\nprogramming language used\n to prevent Ineruptions\nof lava, we need your help!\nDue to the coronavirus, our\n software engineer is ill!\nWe hired you for your\n expertise of Java!\nHelp answer the coding\nquestions to save the world\nfrom lava!"; // text used
PFont f; // the font object
PFont f2; // the font object
float y = height; // location of the text\
float k=-50;
float t =height/5;
PImage background;
boolean on = false;
boolean on2 =false;
float d3=0;

Story(){
  
f = createFont("Arial", 80); // font style
f2 = createFont("Algerian", 80); // font style
background = loadImage("bi.jpg"); 

}

void StoryDisplay(){


background(200);
tint(200,200,200); 
image(background,0,t,width,height); 
if(t<height/2 && !on2){
t++;

}else{
on2 =true;

fill(0);
textSize(110);
textFont(f);
textAlign(CENTER); //centering the text
text("Story",width/2,k); // displaying the text and adding a 3d component
fill(255);
textSize(25);
text("Press any button to skip",width/2,k+40); // displaying the text and adding a 3d component


if(k<height/8 && !on){
k++; // decreasing the y and 
}else {
  if (keyPressed){
    cliS.play();
    story = false;
    instruction =true;
    keyPressed=false;
    
  }
  on =true;
fill(0);

textFont(f2); //using the font
textSize(50);
textAlign(CENTER); //centering the text
text(info,width/2,y);  // displaying the text and adding a 3d component

y--;

if(y<height/4 &&on){


  fill(0);
textSize(110);
textFont(f);
textAlign(CENTER); //centering the text
text("Story",width/2,k); // displaying the text and adding a 3d component
fill(255);
textSize(25);
text("Press any button to skip",width/2,k+40); // displaying the text and adding a 3d component

  k--;
}
  
}


}

if(y<height*-1){
  if(t>(height/5)&&on2){
t--;}else{
  story=false;
  instruction =true;///////////////////////////NOT THE RIGHT ORDER!!!!!!! 
  println("out");
}
}

}


}
