/* 
Student Name: Joshua Reid
Student Number: C17363071
*/
button statbutton;
button inventorybutton;
button mapbutton;
button radiobutton;

//inventory buttons
button inv1button;


void setup(){
  size(800,800);
  // button x, y, w, h, text, r, g, b
  statbutton = new button(90,70,80,50,"Stat",0,255,0);
  inventorybutton = new button(180,70,80,50,"Inventory",0,255,0);
  mapbutton = new button(270,70,80,50,"Map",0,255,0);
  radiobutton = new button(360,70,80,50,"Radio",0,255,0);
  
}

void draw(){
  background(0);
  line(0,121,800,121);
  stroke(0,255,0);
  line(89,0,89,800);
  stroke(0,255,0);
  line(0,679,800,679);
  stroke(0,255,0);
  line(711,0,711,800);
  stroke(0,255,0);
  stat();
  
  
  
  if(statbutton.isClicked())
  {
    //do thing
  }
  
  
  if(inventorybutton.isClicked())
  {
    //inventory thing
    inventory();
  }
  
  
  if(mapbutton.isClicked())
  {
    //map thing
  }
  
  

  statbutton.update();
  statbutton.render();
  inventorybutton.update();
  inventorybutton.render();
  mapbutton.update();
  mapbutton.render();
  radiobutton.update();
  radiobutton.render();

}

void stat(){
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,0,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("word", 163, 656);
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(239,639,320,40);
  fill(0,0,0);
  text("word2",399,656);
  
  fill(0,255,0);
  stroke(0,255,0);
  rect(561,639,150,40);
  fill(0,0,0);
  textSize(15);
  text("word3",636,656);
}

void inventory(){
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,0,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("word", 163, 656);
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(174,639,148,40);
  fill(0,0,0);
  text("word2",399,656);
  
  fill(0,255,0);
  stroke(0,255,0);
  rect(324,639,322,40);
  fill(0,0,0);
  textSize(15);
  text("word3",636,656);
  
}

void map1(){
  stroke(0,255,0);
  fill(0);
  ellipse(260,70,75,50);
  textSize(20);
  fill(0);
  text("inventory",40,40);
}

void radio(){
  stroke(0,255,0);
  fill(0);
  ellipse(345,70,75,50);
  textSize(20);
  fill(0);
  text("inventory",40,40);
}
/*
int[] button = new int[5];
int[] button2 = new int[5];

void setup(){
  size(800,800,P2D);
  /* button x, y, w, h, text, r, g, b
  statbutton = new button(90,70,80,50,"Stat",0,255,0);
  inventorybutton = new button(180,70,80,50,"Inventory",0,255,0);
  mapbutton = new button(270,70,80,50,"Map",0,255,0);
  radiobutton = new button(360,70,80,50,"Radio",0,255,0);
  
  button[0]=90; //x
  button[1]=70; //y
  button[2]=80; //width
  button[3]=50; //height
  button[4]=0; //if button is being pressed 0 is not pressed 1 is pressed
  
  button2[0]=180; // x
  button2[1]=70; //y
  button2[2]=80; //w
  button2[3]=50; //h
  button2[4]=0; //0 = not pressed 1 = pressed
  
}
void draw(){
  background(0);
  line(0,121,800,121);
  stroke(0,255,0);
  line(89,0,89,800);
  stroke(0,255,0);
  line(0,679,800,679);
  stroke(0,255,0);
  line(711,0,711,800);
  stroke(0,255,0);
  
  //stat button
  fill(0,255,0);
  rect(button[0],button[1],button[2],button[3]);
  fill(0,0,0);
  textSize(16);
  text("Stat",112,105);
  
  //inventory button
  fill(0,255,0);
  rect(button2[0],button2[1],button2[2],button2[3]);
  fill(0,0,0);
  textSize(16);
  text("Inventory",183,105);
  
  //map button
  /*fill(0,255,0);
  rect(button3[0],button3[1],button3[2],button3[3]);
  fill(0,0,0);
  textSize(16);
  text("Map",183,105);
  */
  
  //radio button
  /*
  fill(0,255,0);
  rect(button4[0],button4[1],button4[2],button4[3]);
  fill(0,0,0);
  textSize(16);
  text("Radio",183,105);
  
  
  //stat();
  if(button[4]==1){
    stat();
  }
  
  if(button2[4]==1){
    inventory();
  }
  
  
}

void mousePressed(){
  //(mouseY<(button[1]+button[3]) makes sure anything clicked to the left 
  //of the button doesnt activate the button 
  //(mouseY>(button[1])) makes sure of the right side
  button[4]=0;
  if((mouseY<(button[1]+button[3]))&&(mouseY>(button[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(button[0]+button[2]))&&(mouseX>(button[0]))){
          button[4]=1;
    }
  }
  
    button2[4]=0;
  if((mouseY<(button2[1]+button2[3]))&&(mouseY>(button2[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(button2[0]+button2[2]))&&(mouseX>(button2[0]))){
          button2[4]=1;
    }
  }
  
  
}

void stat(){
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,0,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("word", 163, 656);
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(239,639,320,40);
  fill(0,0,0);
  text("word2",399,656);
  
  fill(0,255,0);
  stroke(0,255,0);
  rect(561,639,150,40);
  fill(0,0,0);
  textSize(15);
  text("word3",636,656);
}

void inventory(){
    fill(0,250,0);
  stroke(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,0,0);
  //text in middle of rectangle = x + width/2 and y + height/2
  text("word", 163, 656);
  
  fill(0,250,0);
  stroke(0,255,0);
  rect(239,639,320,40);
  fill(0,0,0);
  text("word2",399,656);
  
  fill(0,255,0);
  stroke(0,255,0);
  rect(561,639,150,40);
  fill(0,0,0);
  textSize(15);
  text("word3",636,656);
}
*/
