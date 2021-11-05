class Nube {

  float x, y, t, vel;
  PImage imgnube;
  boolean colnube;

  Nube () {

    x= random (t/2, width-t/2);
    y= random (-100, -1000);
    t= 50;
    vel= random (2, 3);
    colnube=false;
    imgnube = loadImage ("nube.png");
  }

  void dibujarnube () {

    
    image (imgnube, x, y, t, t);
  }

  void reutilizar () {

    x= random (t/2, width-t/2);
    y= -t;
    t= 50;
    vel= random (2, 3);
  }

  void movernube () {
    y += vel;
    if (y>height || colnube) {
      reutilizar();
      colnube= false;
    }
  }

  void nubecolision () {
    colnube=true;
  }
}
