int[] statbutton = new int[5];
int[] inventorybutton = new int[5];
int[] mapbutton = new int[5];
int[] radiobutton = new int[5];
int[] testbutton = new int[5];

void setup(){
  size(800,800,P2D);
  /* button x, y, w, h, text, r, g, b
  statbutton = new button(90,70,80,50,"Stat",0,255,0);
  inventorybutton = new button(180,70,80,50,"Inventory",0,255,0);
  mapbutton = new button(270,70,80,50,"Map",0,255,0);
  radiobutton = new button(360,70,80,50,"Radio",0,255,0);
    statbutton.update();
  statbutton.render();
  inventorybutton.update();
  inventorybutton.render();
  mapbutton.update();
  mapbutton.render();
  radiobutton.update();
  radiobutton.render();
  */
  statbutton[0]=90; //x
  statbutton[1]=70; //y
  statbutton[2]=80; //width
  statbutton[3]=50; //height
  statbutton[4]=0; //if button is being pressed 0 is not pressed 1 is pressed
  
  inventorybutton[0]=180; // x
  inventorybutton[1]=70; //y
  inventorybutton[2]=80; //w
  inventorybutton[3]=50; //h
  inventorybutton[4]=0; //0 = not pressed 1 = pressed
  
  mapbutton[0]=270;
  mapbutton[1]=70;
  mapbutton[2]=80;
  mapbutton[3]=50;
  mapbutton[4]=0;
  
  radiobutton[0]=360;
  radiobutton[1]=70;
  radiobutton[2]=80;
  radiobutton[3]=50;
  radiobutton[4]=0;
  
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
  rect(statbutton[0],statbutton[1],statbutton[2],statbutton[3]);
  fill(0,0,0);
  textSize(16);
  text("Stat",112,105);
  
  //inventory button
  fill(0,255,0);
  rect(inventorybutton[0],inventorybutton[1],inventorybutton[2],inventorybutton[3]);
  fill(0,0,0);
  textSize(16);
  text("Inventory",183,105);
  
  //map button
  fill(0,255,0);
  rect(mapbutton[0],mapbutton[1],mapbutton[2],mapbutton[3]);
  fill(0,0,0);
  textSize(16);
  text("Map",293,105);
  
  
  //radio button

  fill(0,255,0);
  rect(radiobutton[0],radiobutton[1],radiobutton[2],radiobutton[3]);
  fill(0,0,0);
  textSize(16);
  text("Radio",383,105);
  
  //stat();
  if(statbutton[4]==1){
      stat();
  }
  if(inventorybutton[4]==1){
      inventory();
  }
  
  
  if(mapbutton[4]==1){
      Map();
  }
  
  if(radiobutton[4]==1){
      radio();
  }
  
}

void mousePressed(){
  
  //(mouseY<(button[1]+button[3]) makes sure anything clicked to the left 
  //of the button doesnt activate the button 
  //(mouseY>(button[1])) makes sure of the right side
  
  
  if((mouseY<(statbutton[1]+statbutton[3]))&&(mouseY>(statbutton[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(statbutton[0]+statbutton[2]))&&(mouseX>(statbutton[0]))){
          statbutton[4]=1;
          inventorybutton[4]=0;
          mapbutton[4]=0;
          radiobutton[4]=0;
    }
  }
  
  if((mouseY<(inventorybutton[1]+inventorybutton[3]))&&(mouseY>(inventorybutton[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(inventorybutton[0]+inventorybutton[2]))&&(mouseX>(inventorybutton[0]))){
          inventorybutton[4]=1;
          statbutton[4]=0;
          mapbutton[4]=0;
          radiobutton[4]=0;
    }      
  }
  
  if((mouseY<(mapbutton[1]+mapbutton[3]))&&(mouseY>(mapbutton[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(mapbutton[0]+mapbutton[2]))&&(mouseX>(mapbutton[0]))){
          mapbutton[4]=1;
          statbutton[4]=0;
          inventorybutton[4]=0;
          radiobutton[4]=0;
    }
  }
  
  if((mouseY<(radiobutton[1]+radiobutton[3]))&&(mouseY>(radiobutton[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(radiobutton[0]+radiobutton[2]))&&(mouseX>(radiobutton[0]))){
          radiobutton[4]=1;
          statbutton[4]=0;
          inventorybutton[4]=0;
          mapbutton[4]=0;
    }
  }
  /*
          testbutton[4]=0;
  if((mouseY<(testbutton[1]+testbutton[3]))&&(mouseY>(testbutton[1]))){
    //(mouseX<(button[0]+button[2])) anything below the button
    //
    if((mouseX<(testbutton[0]+testbutton[2]))&&(mouseX>(testbutton[0]))){
          testbutton[4]=1;
    }
  }
  */
  
  
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
    radio();
  }
  
  
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
void Map(){
  
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

void radio(){
  
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
  text("word",636,656);
  
}
