# SciFi UI Project

# Object Oriented Programming assingment

Name: Joshua Reid

Student Number: C17363071

# Description of the assignment

From reading the brief of the assingment i decided to go with a gui inspired by the Fallout video games series. I decided to attempt to replicate the ui from a pip boy, in the game a pip boy is essentially used to navigate your inventory etc. 

The user may use the mouse to navigate between the different pages of the ui, depending the page the user wil have to use the keyboard to navigate the features of some pages. On the inventory page the user may use the keys 1-4 to navigate the inventory of the player and display different items along with each description of each individual item.

On the radio page the user may use the keys 1-3 to navigate the page, each button activates a different 'radio channel' these channels each play a different song ad displays a different graphic for the grid on the page, along with an animation. 

# Instructions

The buttons at the top of the of the screen labelled (stat, inventory, map, radio). These buttons are used to navigate the program, clicking on a button will display the page labelled. Some pages have interactivity using the keyPressed() function pressing the buttons stated at the top of the screen. Pressing the keys will activate different functions on the page. On the radio page pressing keys will play different audio files and on the inventory page the keys will display different items.

Below are some cample codes of what i found either difficult and or interesting to code.

# Sample Code / What im most proud of

```Java

  fill(0,255,0);
  rect(inventorybutton[0],inventorybutton[1],inventorybutton[2],inventorybutton[3]);
  fill(0,0,0);
  textSize(16);
  text("Inventory",183,105);
  
    if(inventorybutton[4]==1){
      i.display();
      i.items();
      i.keyPressed();
  }
  void mousePressed(){
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
  ```
  
  Here I am creating the buttons for one of the pages, when a button is activated its changed to 1 which
  then activates this button and deactivates the other buttons. When a button is activated the if       statement calls the code necessary for displaying the page. The button if statements uses the coordinates of the button to make sure that the button is activated only when the user clicks within the rectangle. 
  ```
  (mouseY<(button[1]+button[3])
  (mouseY>(button[1]))
  ```
  if user clicks above or below the button it will not activare the button
  ```
  if((mouseX<(statbutton[0]+statbutton[2]))&&(mouseX>(statbutton[0])))
  ```
  if the user clicks to the left or right of the button it wont activate button
  
  these if statements ensure that the user has to click inside the rect of the button
  to activate the button
  
 ```
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
 ```
 
In this sample of code I display the image with its description of each item, when the user presses 1-4 the program displays the item the user selected with its image and description. The image is displayed from an array of images, I use pushmatrix to save evrything before i retrieve the image from the array.
 ```
   minim = new Minim(this);
  player = minim.loadFile( "17 - Dion - The wanderer (1).mp3");
  player2 = minim.loadFile("01 Fallout 4 Main Theme.mp3");
  player3 = minim.loadFile("02 The Commonwealth.mp3");
 ```
  i used the minim library to implement sound, originally i attempted to use the processing sound library but after many issues with the i opted to use minim instead. Loading sound files is a very similar process to loading images, I loaded the audio files in the setup() of the main file then played them through the radio file
  ```
     if(player.position() == player.length()) {
      player.rewind();
      player.play();
    }else{
      //plays audio file
      player.play();
    }
  ```
  This is the code located in each case of the radio switch. This code rewinds the audio file being played if its finished playing its duration then it plays it again. 
  ```
      for(i=0; i<12; i++){
        stroke(0,100,0);
        line(400,y+=y1,675,y);
        line(x+=x1,150,x,425);
      }
 ```
 This is the loop i made to create a grid for the radio page, its not partcularly complicated but it was fun to come up and interesting to implement.
  ```
       for(i=0; i<6; i++){
        line(c += 25,v += 25,c1 = c1 - 25,v);
        line(c,v1 = v1-25,c1,v1);
      }
      
            for(i=0; i<6; i++){
        line(c += 25, v += 25, c, v1 = v1 - 25);
        line(c1 = c1 -25,v,c1,v1);
      }
   ```
   
   The code above was the code used to create the little graphic within the radio graph when the number 3 is inputted by the user. the code creates lines that decrease in length with each iteration of the loop. This was interesting to code.
   
   ![An image](OOP-Assingment1.PNG)
   This is the stats page
   
   ![An image](OOP-Assingment2.PNG)
   This is the Inventory page

   ![An image](OOP-Assingment3.PNG)
   This is the Map page
   
   ![An image](OOP-Assingment4.PNG)
   This is the Radio page
   
   ![YouTube](https://youtu.be/dxbvBceVCAU)
   
