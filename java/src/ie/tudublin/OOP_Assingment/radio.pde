class radio
{
  void display(){
          
    fill(0,250,0);
    stroke(0,255,0);
    rect(89, 639, 622, 40);
    int x=400;
    int y=125;
    int x1=700;
    int y1=25;
    int i;
    
    for(i=0; i<10; i++){
      line(400,y+=y1,700,y);
      }
    for(i=0; i<10; i++){
      line(x+=x1,150,x,325);
      }
    
      /*x co or lines
    line(400,150,700,150);
    line(400,175,700,175);
    line(400,200,700,200);
    line(400,225,700,225);
    line(400,250,700,250);
    line(400,275,700,275);
    line(400,300,700,300);
    line(400,325,700,325);
    */
    
    //y co ord lines
    /*
    line(400,150,400,325);
    line(425,150,425,325);
    line(450,150,450,325);
    line(475,150,475,325);
    line(500,150,500,325);
    line(525,150,525,325);
    line(550,150,550,325);
    line(575,150,575,325);
    line(600,150,600,325);
    line(625,150,625,325);
    line(650,150,650,325);
    line(675,150,675,325);
    line(700,150,700,325);
    */
    
    
    
    //display animation of radio for each audio file
    
  }
  void audio(){
    //key pressed plays some audio stuff
  }
}
