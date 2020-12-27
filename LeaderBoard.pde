class leaderBoardSetup {
  PFont f;
  PImage background;
  readfile rf;
  leaderBoardSetup() {
    background=loadImage("bi.jpg");
    table = loadTable("leaderboard.csv", "header");
    rf=new readfile();
    f= createFont("Algerian", 80); // font style
  }

  void boardDisplay() {
    //rf.back();
    
    rf.getdata();
    

    rf.best();
   
    rf.display();
    
  }
}
