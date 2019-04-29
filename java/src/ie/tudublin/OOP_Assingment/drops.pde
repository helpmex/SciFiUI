class drops
{
    float x = random(400,675);
    float y = 145;
    float yspeed = random(2,5);
    float ylimit = 415;
    float len = random(5,20);
    
    void rainfall(){
     y = y + yspeed;
     yspeed = yspeed + 0.15;
     
     
     if(y > ylimit){
       y = random(150,425);
       yspeed = random(2,5);
     }
  }
  void show(){
    
    stroke(255,0,255);
    line(x,y,x,y+len);   
  }
}
