class inventory{
  
  
 void display(){
  
fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,255,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("word", 95, 665);
  
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(239,639,320,40);
  fill(0,255,0);
  text("word2",245,665);
  
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(561,639,150,40);
  fill(0,255,0);
  textSize(15);
  text("word3",565,665);
  
  }
  
  void items(){
    //use keys to display items and their details ie press key 1-3 for items 1-3
    //with each item display image of that item
    
    testbutton[0]=400; //x
    testbutton[1]=400; //y
    testbutton[2]=80; //width
    testbutton[3]=50; //height
    testbutton[4]=0;
  
    fill(0,255,0);
    rect(testbutton[0],testbutton[1],testbutton[2],testbutton[3]);
    fill(0,0,0);
    textSize(16);
    text("Radio",383,105);
  
    if(testbutton[4]==1){
      r.display();
    }
    
  }
}
