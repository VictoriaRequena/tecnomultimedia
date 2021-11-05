class Juego {

  Personaje p;
  Nube [] n=new Nube [5];
  Fondo f;
  int contador;
  int pantalla;
  String estado;


  Juego () {
    p= new Personaje (width/2, 300, 100); 
    f= new Fondo ();

    for (int i=0; i<n.length; i++) {
      n [i]= new Nube();
    }
    textSize(20);
    estado = "intro";
  }


  void dibujarjuego () {

    p.dibujarpersonaje ();
    p.moverpersonaje ();

    for (int i=0; i<n.length; i++) {
      n [i].dibujarnube();
      n [i].movernube();
    }
    colision();
    fill (0, 0, 255);
    text ("Nubes no esquivadas", 25, 50);
    text (contador, 50, 100);


    if (estado.equals("intro")) {
      f.dibujarfondo (0);
    }

    if (estado.equals("intro" && key=='c')) {
      estado= "jugando";
    }

    if (estado.equals ("jugando")) {
      f.dibujarfondo (0);
    }

    if (estado.equals("jugando" && contador>=3)) {
      estado= "perdiste";
    }

    if (estado.equals ("perdiste")) {
      f.dibujarfondo (2);
    }
    if (estado.equals ("perdiste" && key=='r')) {
      estado= "jugando";
        reutilizar2 ();
    }

    if (estado.equals ("ganaste")) {
      f.dibujarfondo (1);
    }

    if (estado.equals ("jugando" && frameCount<=20 && contador<3)) {
      estado= "ganaste";
        
    }

    if (estado.equals ("ganaste" && key=='c')) {
      estado= "jugando";
        reutilizar2 ();
    }
  }

}




void colision () {
  for (int i=0; i<n.length; i++) {
    float distancia= dist (p.posX, p.posY, n[i].x, n[i].y);
    if (distancia<n[i].t/2+p.tam/4) {
      n[i].nubecolision ();
      contador++;
    }
  }
}

void reutilizar2 () {
  p= new Personaje (width/2, 300, 100); 
  f= new Fondo ();

  for (int i=0; i<n.length; i++) {
    n [i]= new Nube();
  }
  textSize(20);
  estado = "intro";
  contador=0;
}
}
