class inventory{
   
 void display(){
   
   //title
  fill(0,255,0);
  textSize(30);
  text("Use keys 1-4 to select items",180,50);
  
  //footer text and bar
  textSize(15);
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(89, 639, 148, 40);
  fill(0,255,0);
  text("Weight 69/420", 95, 665);
  
  //footer text and bar  
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(239,639,320,40);
  fill(0,255,0);
  text("Caps 576",245,665);

  //footer text and bar  
  fill(0,100,0);
  stroke(0,255,0);
  tint(0,255,0);
  rect(561,639,150,40);
  fill(0,255,0);
  text("Aido gone :'(",565,665);
  
  }
  
  void items(){
    // displays rects where description text and image goes for each inven item
     stroke(0,255,0);
     fill(0,0,0);
     rect(420,150,250,200);
     
     fill(0,100,0);
     stroke(0,255,0);
     tint(0,255,0);
     rect(420,380,250,200);
     
     //rect of inventory item 1
     stroke(0,255,0);
     fill(0,0,0);
     rect(120,150,250,40);
     fill(0,255,0);
     text("10mm Pistol",130,175);
     
     //rect of inventory item 2
     fill(0,0,0);
     rect(120,210,250,40);
     fill(0,255,0);
     text("Stimpak",130,235);
     
     //rect of inventory item 3
     fill(0,0,0);
     rect(120,270,250,40);
     fill(0,255,0);
     text("issa knife",130,295);
     
     //rect of inventory item 4
     fill(0,0,0);
     rect(120,330,250,40);
     fill(0,255,0);
     text("Overseeer's Guardian",130,355);
     
  }
    
void keyPressed(){
  switch(key) {
      case '1':
        //when 1 is pressed display image of item and its description
        fill(0,255,0);
        text("Damage",475,410);
        text("20",600,410);
        text("Ammo:10mm",475,435);
        text("40",600,435);
        text("Fire Rate",475,460);
        text("100",600,460);
        text("Range",475,485);
        text("150",600,485);
        text("Accuracy",475,510);
        text("50",600,510);
        text("Weight",475,535);
        text("10",600,535);
        text("Value",475,560);
        text("90",600,560);
        //creates effect of button being activated
        fill(0,100,0);
        rect(120,150,250,40);
        fill(0,255,0);
        text("10mm Pistol",130,175);
        //save everything before displaying image from array
        pushMatrix();
        imageMode(CENTER);
        image(inventory[0],545,250,247,197);
        popMatrix();
        break;
        
      case '2':
      //when 2 is pressed display image of item and its description
        fill(0,255,0);
        text("Health",475,410);
        text("+25",600,410);
        text("Weight",475,435);
        text("1",600,435);
        text("Value",475,460);
        text("10",600,460);
        //creates effect of button being activated
        fill(0,100,0);
        rect(120,210,250,40);
        fill(0,255,0);
        text("Stimpak",130,235);
        //save everything before displaying image from array
        pushMatrix();
        imageMode(CENTER);
        image(inventory[1],545,250,247,197);
        popMatrix();
        break;
        
      case '3':
      //when 3 is pressed display image of item and its description
        fill(0,255,0);
        text("Damage",475,410);
        text(">9000",600,410);
        text("Range",475,435);
        text("bruh",600,435);
        text("Weight",475,460);
        text("3",600,460);
        text("Value",475,485);
        text("50",600,485);
        //creates effect of button being activated
        fill(0,100,0);
        rect(120,270,250,40);
        fill(0,255,0);
        text("issa knife",130,295);
        //save everything before displaying image from array
        pushMatrix();
        imageMode(CENTER);
        image(inventory[2],545,250,247,197);
        popMatrix();
         break;
         
       case '4':  
       //when 4 is pressed display image of item and its description
        fill(0,255,0);
        text("Damage",475,410);
        text("180",600,410);
        text("Ammo: .45",475,435);
        text("69",600,435);
        text("Fire Rate",475,460);
        text("70",600,460);
        text("Range",475,485);
        text("800",600,485);
        text("Accuracy",475,510);
        text("100",600,510);
        text("Weight",475,535);
        text("20",600,535);
        text("Value",475,560);
        text("1400",600,560);
        //creates effect of button being activated
        fill(0,100,0);
        rect(120,330,250,40);
        fill(0,255,0);
        text("Overseeer's Guardian",130,355);
        //save everything before displaying image from array
        pushMatrix();
        imageMode(CENTER);
        image(inventory[3],545,250,247,197);
        popMatrix();
        break;
    }
  }
}
