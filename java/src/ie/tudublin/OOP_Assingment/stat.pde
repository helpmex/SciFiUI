class stat
{
  void display(){
    
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,255,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("HP   90/90", 95, 665);
  
  stroke(0,255,0);
  fill(0,100,0);
  tint(0,255,0);
  rect(239,639,320,40);
  rect(320,649,225,20);
  fill(0,255,0);
  text("LEVEL 1",245,665);
  
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(561,639,150,40);
  fill(0,255,0);
  textSize(15);
  text("AP   70/70",565,665);
  
  }
  
  void character(){
     //display image in middle with a few player statistics
     stroke(0,255,0);
     fill(0,0,0);
     rect(275,160,250,325);
     fill(0,100,0);
     stroke(0,255,0);
     tint(0,255,0);
     rect(250,525,100,50);
     rect(450,525,100,50);
     fill(0,255,0);
     text("DAMAGE 18", 257,557);
     text("ARMOUR 50", 457,557);
     textSize(25);
     text("Howard",354,610);
     
     imageMode(CENTER);
     image(vaultboy,400,323,249,324);
  }
  
}
