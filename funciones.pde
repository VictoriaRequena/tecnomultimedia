void botones (String dialogos1, int py1, int px1, String dialogos2, int py2, int px2) {
  rect (25, 350, 100, 40);
  rect (375, 350, 100, 40);
  textFont (textos);
  textSize (25);
  fill (0);
  text (dialogos1, py1, px1);
  text (dialogos2, py2, px2);
  textSize (27);
  fill (255);
  textSize(25);
}

void otro () {
  text ("Left", 40, 350);
  text ("Right", 390, 350);
}

void otro2 () {
  textSize (17);
  text ("Presiona ENTER para reiniciar", 5, 380);
}

void boton (String dialogos, int py, int px) {
  fill (255);
  rect (200, 350, 100, 40);
  fill(0);
  text (dialogos, py, px);
}
