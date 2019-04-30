class Map
{
  void display(){
    
    //title
   fill(0,255,0);
   textSize(30);
   text("The CommonWealth",260,50);
    
    //footer
    fill(0,100,0);
    tint(0,255,0);
    stroke(0,255,0);
    rect(89, 639, 622, 40);
    
}
  
  void Image(){
    //image settings for map
   tint(255,400,400);
   imageMode(CENTER);
   image(Map,400,380,570,465);
  }
}
