class Desktop{
  
  
  Desktop(){
  
  }
  
  void drawDesktop(){
    background(0);

    fill(#1F9006);
    rect(width/2-100, height/4-50, 200, 200, 80);
    text("Contacts", width/2-150, height/3+150);
    
    fill(#C6C6C4);
    rect(width/2-100, height/4*3-100, 200, 200, 80);
    text("Tools", width/2-100, height-120);
  }
  
}
