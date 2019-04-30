class button{
  
  int x,y,w,h;
  String text;
  color colour;

 //object for button
 //x1 = x co ord
 //y1 = y co ord
 //w= width;
 //h = height
 //colour = rgb values for button colour
  button(int x1, int y1, int w, int h, String t, int r, int g, int b){
    x = x1;
    y = y1;
    w = 0;
    h = 0;
    text = t;
    colour = color(r,g,b); 
}

void update(){
  fill(colour);
  rect(x,y,w,h);
  fill(0);
  text(text,x+(w/2),y+(h/2));
}

//if button is clicked on within the rect then return true
public boolean pressed(){
if(x<mouseX && x+w>mouseX){
  if(y<mouseY && y+h>mouseY){
    return true;
  }  
}
return false;
}
}
