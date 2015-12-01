class PreciseDelete {


  float RectXpos;
  float RectYpos;
  float RectWidth;
  float RectHeight;
  String RectLabel;


  PreciseDelete(float _RectXpos, float _RectYpos, float _RectWidth, float _RectHeight, String _RectLabel) {

    RectXpos = _RectXpos;
    RectYpos = _RectYpos;
    RectWidth = _RectWidth;
    RectHeight = _RectHeight;
    RectLabel = _RectLabel;
  }

  void drawRect() {

    fill(#168127); //dark green
    rect(RectXpos, RectYpos, RectWidth, RectHeight);
    fill(255);
    text(RectLabel, RectXpos + (RectWidth / 2), RectYpos + (RectHeight / 2));
  }

  //boolean removeOne(){

  //      boolean removeOne = false;






  //}

  //boolean buttonPressed() {

  //boolean buttonPressed = false;


  //if (mouseX > buttonXpos && mouseX < buttonXpos + buttonwidth && mouseY > buttonYpos && mouseY < buttonYpos + buttonheight && click == true) {

  //  //moveon integer is -1 so the first num is in array slot 0
  //  buttonPressed = true;
  //  return buttonPressed;
  //} else {

  //  buttonPressed = false;
  //  return buttonPressed;
  //}
}
//}