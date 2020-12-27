class Balls {
  PImage balls;
  float x,y;
  
  float yi;
  
  float z = 30;
  
  float grav = 0.5;
  float speed ;

  boolean ground = false;
  
  
  Balls(){
    x = random(0,width);
     y = random(-200,0);
      balls = loadImage("fir.png");
  
  }
  
  void gravity(){
    speed = speed + grav;
    
  }
  void display(){
    
    fill(200);
    image(balls,x,y, 30,30);
    
   
    
  }
  
 void bounce(){
    y = y + speed;
   if ( y > height){
      
      speed = speed *-0.95;
      y = height;
    
     
   }
   
   
 }

}
