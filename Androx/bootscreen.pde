class Bootscreen{
  float size;
  
  Bootscreen(){
    size = 0;
  }
  
  void drawBootScreen(){
    fill(#F09711);
    background(0);
    textSize(80);
    text("Androx", width/2-130, height/2-50);
    rect(40, height/2 + 100, size, 5);
    //ellipse(width/2-125, height/2-10, 10, 10);                      // left
    //ellipse(width/2-95, height/2-10, 10, 10);                      // left2
    //ellipse(width/2-65, height/2-10, 10, 10);                      // middle
    //ellipse(width/2-35, height/2-10, 10, 10);                       // right2
    //ellipse(width/2-5, height/2-10, 10, 10);                      // right
    //ellipse(width/2+25, height/2-10, 10, 10);
    //ellipse(width/2+55, height/2-10, 10, 10);
    //ellipse(width/2+85, height/2-10, 10, 10);
    //ellipse(width/2+115, height/2-10, 10, 10);
    
  }
}
