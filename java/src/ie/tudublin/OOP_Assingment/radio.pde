class radio
{
  void display(){
          
    fill(0,250,0);
    stroke(0,255,0);
    rect(89, 639, 622, 40);
    int x=375;
    int y=125;
    int x1=25;
    int y1=25;
    int i;
    
    //create grid for radio
    for(i=0; i<12; i++){
      line(400,y+=y1,675,y);
      line(x+=x1,150,x,425);
      }
    
    //display animation of radio for each audio file
    
  }
  void audio(){
    //key pressed plays some audio stuff
  }
}
