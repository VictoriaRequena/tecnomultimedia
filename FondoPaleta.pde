class FondoPaleta {
  PImage [] imgFondos = new PImage [4];

  int img;

  FondoPaleta() {
    for (int i=0; i<imgFondos.length; i++) {
      imgFondos[i] = loadImage("Fondo"+i+".png");
      imgFondos[i].resize(width, height);
    }
  }

  PImage fondos(int numeroFondo) {
    img = numeroFondo;
    return imgFondos[img];
  }
  //void fondos(int numeroFondo) {
  //  img = numeroFondo;
  //  imageMode(CENTER);
  //  image(imgFondos[img], width/2, height/2);
  //}
}
