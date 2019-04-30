class drops
{
    float x = random(400,675);
    float y = 145;
    float yspeed = random(2,5);
    float ylimit = 415;
    float len = random(5,20);
    
    void rainfall(){
      //creates effect of gravity by accelerating the fall of the rain
     y = y + yspeed;
     yspeed = yspeed + 0.15;
     
     //when the rain reaches the limit i set it respawns the drop at random y num
     //and randomises its speed
     if(y > ylimit){
       y = random(150,425);
       yspeed = random(2,5);
     }
  }
  void show(){
    //indivual raindrop with varying len
    stroke(255,0,255);
    line(x,y,x,y+len);   
  }
}
