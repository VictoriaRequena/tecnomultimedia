void botones (String dialogos, int py, int px,String dialogos2, int py2, int px2) {
  rect (25, 350, 100, 40);
  rect (375, 350, 100, 40);
  textFont (textos);
  textSize (25);
  fill (0);
  text (dialogos,py,px);
  text (dialogos2,py2,px2);
  textSize (27);
  fill (255);
  textSize(25);
}

  void otro (){
  text ("Left", 40, 350);
  text ("Right", 390, 350);
}

void boton (String dialogos1, int py1, int px1) {
  fill (255);
  rect (200, 350, 100, 40);
  fill(0);
  text (dialogos1,py1,px1);
  
}
