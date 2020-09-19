class Button {
  String label;
  float x;  float y; float w; float h;   
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos; y = ypos; w = widthB; h = heightB;
  }
  
  // draw the button in the window
  void Draw() {
    if(MouseIsOver()){
    fill(16,10,190,120); stroke(255); rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(217,180,20); text(label, x + (w / 2), y + (h / 2)-3);
    }
    else{
       fill(16,10,190,120); stroke(141); rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(217,180,20); text(label, x + (w / 2), y + (h / 2)-3);
    }
  }
  
  // returns true if the mouse cursor is over the button
  boolean MouseIsOver() {
    over = 0;
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      over = 1;
      
      return true;
      
    }
    return false;
   
  }
}
