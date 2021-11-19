class Personaje {

  float posX, posY, tam;
  PImage imgpersonaje;

  Personaje (float posX_, float posY_, float tam_) {

    posX= posX_;
    posY= posY_;
    imgpersonaje= loadImage ("personaje.png");
    tam= tam_;
  }


  void dibujarpersonaje () {

    image (imgpersonaje, posX, posY, tam, tam);
  }

  void moverpersonaje () {

    if (keyCode== RIGHT && posX<width-tam) {
      posX++;
    }
    if (keyCode==LEFT && posX>0) {
      posX--;
    }
  }
}
