import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;

int[] statbutton = new int[5];
int[] inventorybutton = new int[5];
int[] mapbutton = new int[5];
int[] radiobutton = new int[5];
int[] testbutton = new int[5];

stat s;
inventory i;
Map m;
radio r;
drops[] d;

PImage Map;
PImage vaultboy;
PImage[] inventory = new PImage[4];


void setup(){
  size(800,800,P2D);
  i = new inventory();
  m = new Map();
  s = new stat();
  r = new radio();
  d = new drops[100];
  
  //loads the sound files for the radio page using minim
  minim = new Minim(this);
  player = minim.loadFile( "17 - Dion - The wanderer (1).mp3");
  player2 = minim.loadFile("01 Fallout 4 Main Theme.mp3");
  player3 = minim.loadFile("02 The Commonwealth.mp3");
  
  //loads array of images for the inventory page
  for(int i = 0; i<inventory.length; i++){
    inventory[i] = loadImage("inventory"+i+".jpg");
  }
  
  for(int i=0; i < 100; i++){
    d[i] = new drops();
  }
  
  //loads images for map and stat page
  Map = loadImage("Map.png");
  vaultboy = loadImage("vaultboy.jpg");
  
  //co ordinates and size of statbutton
  statbutton[0]=90; //x
  statbutton[1]=70; //y
  statbutton[2]=80; //width
  statbutton[3]=50; //height
  statbutton[4]=0; //if button is being pressed 0 is not pressed 1 is pressed
  
  //co ordinates and size of inventorybutton
  inventorybutton[0]=180; // x
  inventorybutton[1]=70; //y
  inventorybutton[2]=80; //w
  inventorybutton[3]=50; //h
  inventorybutton[4]=0; //0 = not pressed 1 = pressed
  
    //co ordinates and size of mapbutton
  mapbutton[0]=270;
  mapbutton[1]=70;
  mapbutton[2]=80;
  mapbutton[3]=50;
  mapbutton[4]=0;
  
  //co ordinates and size of radiobutton
  radiobutton[0]=360;
  radiobutton[1]=70;
  radiobutton[2]=80;
  radiobutton[3]=50;
  radiobutton[4]=0;
  
}
void draw(){
  
  //outline of the ui
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
  
  //if stat button is clicked then display stat page
  if(statbutton[4]==1){
      s.display();
      s.character();
  }
    //if inven button is clicked then display inven page
  if(inventorybutton[4]==1){
      i.display();
      i.items();
      i.keyPressed();
  }
    //if map button is clicked then display map page
  if(mapbutton[4]==1){
      m.display();
      m.Image();
  }
    //if radio button is clicked then display radio page
  if(radiobutton[4]==1){
      r.display();
      r.keyPressed();
      
      //displays 100 raindrop lines
      for(int i =0; i < 100; i++){
        d[i].rainfall();
        d[i].show();
      }
  }
  
  
}

void mousePressed(){
  /*
  (mouseY<(button[1]+button[3])
  (mouseY>(button[1]))
  if user clicks above or below the button it will not activare the button
  
  if((mouseX<(statbutton[0]+statbutton[2]))&&(mouseX>(statbutton[0])))
  
  if the user clicks to the left or right of the button it wont activate button
  
  these if statements ensure that the user has to click inside the rect of the button
  to activate the button
  
  */
  
  if((mouseY<(statbutton[1]+statbutton[3]))&&(mouseY>(statbutton[1]))){
    if((mouseX<(statbutton[0]+statbutton[2]))&&(mouseX>(statbutton[0]))){
         //below the code activates the button that the user pressed and if deactivates 
         //the other buttons
          statbutton[4]=1;
          inventorybutton[4]=0;
          mapbutton[4]=0;
          radiobutton[4]=0;
    }
  }
  
  if((mouseY<(inventorybutton[1]+inventorybutton[3]))&&(mouseY>(inventorybutton[1]))){
    if((mouseX<(inventorybutton[0]+inventorybutton[2]))&&(mouseX>(inventorybutton[0]))){
         //below the code activates the button that the user pressed and if deactivates 
         //the other buttons
          inventorybutton[4]=1;
          statbutton[4]=0;
          mapbutton[4]=0;
          radiobutton[4]=0;
    }      
  }
  
  if((mouseY<(mapbutton[1]+mapbutton[3]))&&(mouseY>(mapbutton[1]))){
    if((mouseX<(mapbutton[0]+mapbutton[2]))&&(mouseX>(mapbutton[0]))){
         //below the code activates the button that the user pressed and if deactivates 
         //the other buttons
          mapbutton[4]=1;
          statbutton[4]=0;
          inventorybutton[4]=0;
          radiobutton[4]=0;
    }
  }
  
  if((mouseY<(radiobutton[1]+radiobutton[3]))&&(mouseY>(radiobutton[1]))){
    if((mouseX<(radiobutton[0]+radiobutton[2]))&&(mouseX>(radiobutton[0]))){
         //below the code activates the button that the user pressed and if deactivates 
         //the other buttons
          radiobutton[4]=1;
          statbutton[4]=0;
          inventorybutton[4]=0;
          mapbutton[4]=0;
    }
  }
} 
