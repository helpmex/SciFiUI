class inventory{
  
  
 void display(){
   
  fill(0,255,0);
  textSize(30);
  text("Use keys 1-4 to select items",180,50);
  
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
     stroke(0,255,0);
     fill(0,0,0);
     rect(420,150,250,200);
     
     fill(0,100,0);
     stroke(0,255,0);
     tint(0,255,0);
     rect(420,380,250,200);
     
     stroke(0,255,0);
     fill(0,0,0);
     rect(120,150,250,40);
     fill(0,255,0);
     text("thing1",130,175);
     
     fill(0,0,0);
     rect(120,210,250,40);
     fill(0,255,0);
     text("thing2",130,235);
     
     fill(0,0,0);
     rect(120,270,250,40);
     fill(0,255,0);
     text("thing3",130,295);
     
     fill(0,0,0);
     rect(120,330,250,40);
     fill(0,255,0);
     text("thing4",130,355);
     
  }
    
void keyPressed(){
  switch(key) {
      case '1':
        fill(0,255,0);
        text("help",425,410);;
        fill(0,100,0);
        rect(120,150,250,40);
        fill(0,255,0);
        text("thing1",130,175);
        break;
        
      case '2':
        fill(0,255,0);
        text("help",425,410);
        fill(0,100,0);
        rect(120,210,250,40);
        fill(0,255,0);
        text("thing2",130,235);
        break;
        
      case '3':
        fill(0,255,0);
        text("help",425,410); 
        fill(0,100,0);
        rect(120,270,250,40);
        fill(0,255,0);
        text("thing2",130,295);
        
         break;
         
       case '4':  
        fill(0,255,0);
        text("help",425,410);
        fill(0,100,0);
        rect(120,330,250,40);
        fill(0,255,0);
        text("thing4",130,355);
        break;
    }
  }
}
