class button
{
  PVector Pos = new PVector(0,0);
  float Width = 0;
  float Height = 0;
  color Colour;
  String Text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  
  button(int x,int y, int w, int h, String t, int r, int g, int b){
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Colour = color(r,g,b);
    Text = t;
  }
  
  void update()
  {
    if(mousePressed == true && mouseButton == LEFT && Pressed == false){
      Pressed = true;
      if(mouseX >= Pos.x && mouseX <= Pos.x+Width && mouseY >= Pos.y && mouseY <=Pos.y+Height){
        Clicked = true;
      }
    } else{
      Clicked = false;
    }
    if(mousePressed != true){
      Pressed = true;
    }
  }
  
  void render(){//renders button to screen
    fill(Colour);
    rect(Pos.x,Pos.y,Width,Height);
    
    fill(0);
    textAlign(CENTER,CENTER);
 
    text(Text,Pos.x+(Width/2),Pos.y+(Height/2));//this will place the text in the middle of the button
  }
  //check if button clicked
  boolean isClicked(){
    return Clicked;
  }
  
}
/*class button{
  
  int x,y,w,h;
  String text;
  color colour;

button(int x1, int y1, int w, int h, String t, int r, int g, int b){
  x = x1;
  y = y1;
  w = 0;
  h = 0;
  text = t;
  colour = color(r,g,b) ;
  
}

void update(){
  fill(colour);
  rect(x,y,w,h);
  fill(0);
  text(text,x+(w/2),y+(h/2));

}

public boolean pressed(){
if(x<mouseX && x+w>mouseX){
  if(y<mouseY && y+h>mouseY){
    return true;
  }
  
}
return false;
}

}
*/
