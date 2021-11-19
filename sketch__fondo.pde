class Fondo {

  PImage [] fondos= new PImage [3];
  int numimg;

  Fondo () {

    for (int i=0; i<fondos.length; i++) {
      fondos[i] = loadImage("foto"+i+".png");
    }
  }

  void dibujarfondo (int num) {
    numimg=num;
    image (fondos[numimg], 0, 0);
    if (numimg>1 && numimg<0 ) {
    }
  }
}
