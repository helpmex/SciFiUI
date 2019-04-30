class radio
{
  // calls drops to display on radio page
  drops d = new drops();
  void display(){
    
    //creates rect for grid
    fill(0,100,0);
    tint(0,255,0);
    stroke(0,255,0);
    rect(89, 639, 622, 40);
    
    //variables for grid loop
    int x=375;
    int y=125;
    int x1=25;
    int y1=25;
    int i;
    
    //create grid for radio
    for(i=0; i<12; i++){
        stroke(0,100,0);
        line(400,y+=y1,675,y);
        line(x+=x1,150,x,425);
      }
      
      //title
     fill(0,255,0);
     textSize(30);
     text("Use keys 1-3 to select items",180,50);
     
     //text/rect for audio file 1
     stroke(0,255,0);
     textSize(15);
     fill(0,0,0);
     rect(120,150,250,40);
     fill(0,255,0);
     text("Channel 1",130,175);
     
     //text/rect for audio file 2
     fill(0,0,0);
     rect(120,210,250,40);
     fill(0,255,0);
     text("Channel 2",130,235);
     
     //text/rect for audio file 3
     fill(0,0,0);
     rect(120,270,250,40);
     fill(0,255,0);
     text("Channel 3",130,295);  
  }
  
void keyPressed(){
    //when any key is pressed pause any files that may be playing audio     
    player.pause();
    player2.pause();
    player3.pause();
  switch(key) {
   
    case '1':
    //pause all players before playing
    player.pause();
    player2.pause();
    player3.pause();
    //checks if the audio file is finished then rewinds and replays it
    if(player.position() == player.length()) {
      player.rewind();
      player.play();
    }else{
      //plays audio file
      player.play();
    }
     //creates effect of button being activated
     fill(0,100,0);
     rect(120,150,250,40);
     fill(0,255,0);
     text("Channel 1",130,175);
     //design for grid
     line(400,300,450,350);
     line(450,350,500,300);
     line(500,300,550,250);
     line(550,250,600,300);
     line(600,300,650,350);
     line(650,350,675,325);
     break;
    
    case '2':
    //pause all players before playing
    player.pause();
    player2.pause();
    player3.pause();
    //checks if the audio file is finished then rewinds and replays it
       if(player2.position() == player2.length()) {
      player2.rewind();
      player2.play();
    }else{
      //plays audio file
      player2.play();
    }
    //creates effect of button being activated
      fill(0,100,0);
      rect(120,210,250,40);
      fill(0,255,0);
      text("Channel 2",130,235);
      
      //design for grid when 2 is pressed
      line(400,300,450,250);
      line(400,300,450,350);
      
      line(450,250,500,300);
      line(450,350,500,300);
      
      line(500,300,550,250);
      line(500,300,550,350);
      
      line(550,250,600,300);
      line(550,350,600,300);
      
      line(600,300,650,250);
      line(600,300,650,350);
      
      line(650,250,675,275);
      line(650,350,675,325);
      break;
        
        
    case '3':
    //pause all players before playing
    player.pause();
    player2.pause();
    player3.pause();
    //checks if the audio file is finished then rewinds and replays it
    if(player3.position() == player3.length()) {
      player3.rewind();
      player3.play();
    }else{
      //plays audio file
      player3.play();
    }
    //creates effect of button being activated
      fill(0,100,0); 
      rect(120,270,250,40);
      fill(0,255,0);
      text("Channel 3",130,295);
      stroke(0,255,0);
      
      //loop to create design for grid when button 3 is pressed
      int c = 375;
      int c1 = 700;
      int v = 125;
      int v1 = 450;
      int i;
     
      for(i=0; i<6; i++){
        line(c += 25,v += 25,c1 = c1 - 25,v);
        line(c,v1 = v1-25,c1,v1);
      }
     
      c = 375;
      c1 = 700; 
      v = 125; 
      v1 = 450;   
     
      for(i=0; i<6; i++){
        line(c += 25, v += 25, c, v1 = v1 - 25);
        line(c1 = c1 -25,v,c1,v1);
      }
       break;
    }
  }
}
