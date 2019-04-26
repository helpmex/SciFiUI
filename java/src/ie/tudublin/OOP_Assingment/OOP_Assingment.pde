/* 
Student Name: Joshua Reid
Student Number: C17363071
*/
button statbutton;
button inventorybutton;
button mapbutton;
button radiobutton;





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
  
  
  
  if(statbutton.isClicked())
  {
    //do thing
  }
  
  
  if(inventorybutton.isClicked())
  {
    //inventory thing
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
   stroke(0,255,0);
  fill(0);
  ellipse(90,70,75,50);
  textSize(20);
  fill(0);
  text("inventory",40,40);
}

void inventory(){
  stroke(0,255,0);
  fill(0);
  ellipse(175,70,75,50);
  textSize(20);
  fill(0);
  text("inventory",40,40);
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
