import oscP5.*;
PGraphics textura;
PImage imgTextura, imgTextura2;
FondoPaleta Fp;

int  numFondo;

float minimaIntensidad = 80;
float maximaIntensidad = 98;

float intermedio = 57;
float minimaAltura= 50; //AGUDO , GRAVE
float maximaAltura = 80;


float amp = 0.0;
float pitch = 0.0;

float maximoPico;

OscP5 osc ;

GestorSenial intensidad;
GestorSenial altura;

Principal p;

String estado;

int contadorE;
int contadorC;

int cantE;
int cantC;

int degradado;
int bordes;
boolean antesHabiaSonido = false;
boolean accionE = true;

void setup() {
  size(500, 600);
  numFondo = int (random (0, 4));
  textura = createGraphics(width, height);
  Fp = new FondoPaleta();
  p = new Principal();
  estado = "1";
  cantE = int (random(1, 5));
  cantC  = int (random(1, 3));
  degradado = 2;
  bordes = int (random (1, 3));//

  intensidad = new GestorSenial (minimaIntensidad, maximaIntensidad);
  altura = new GestorSenial (minimaAltura, maximaAltura);
  osc = new OscP5(this, 12345);
  background (Fp.fondos(numFondo));
  imgTextura = loadImage("textura3.png");
  

}

void draw() {

  
  intensidad.actualizar(amp);
  altura.actualizar (pitch);

  boolean haySonido = intensidad.filtradoNorm() > 0.2;

  //eventos de inicio y fin del sonido
  boolean empezoElSonido = haySonido && !antesHabiaSonido;
  boolean terminoElSonido = !haySonido && antesHabiaSonido;

  if (numFondo == 0 || numFondo == 1 || numFondo == 2) {
    if (empezoElSonido) {
      contadorE++;
      contadorC++;
      println (cantE, cantC, degradado, bordes, "contadorC"+contadorC);
    }

    if ( haySonido ) {
      if (estado.equals ("1")) {
        p.dibujarEllipseLisa_Fb();
        p.agrandarE();
        if (cantE==1  && degradado == 2 || contadorE>3 && degradado == 2) {
          p.dibujarEllipseDegradada_Fb();
          p.agrandarE();
        }
        if (contadorE >= cantE) {
          estado = "2";
        }
      }

      if (estado.equals ("2")) {
        p.agrandarE();
      }

      if (contadorE == cantE+1) {
        p.agrandarE();
        estado = "3";
      }

      if (estado.equals ("3")) {
        p.dibujarCirculoFino_Fb ();
        if (cantE==1 && bordes == 2) {
          p.dibujarCirculoGrueso_Fb();
        }
        if (contadorC > cantC) {
          estado = "4";
        }
      }

      if (estado.equals("4") && amp > 100.800) {
        contadorE = 0;
        contadorC = 0;
        setup();
      }
    }

    if ( terminoElSonido ) {
      p.ActualizarE();
      p.ActualizarC();
    }
  }
  
  if (numFondo == 3) { //FONDO NEGRO
    if (empezoElSonido) {
      contadorE++;
      contadorC++;
      println (cantE, cantC, contadorE);
    }

    if ( haySonido ) {

      if (estado.equals ("1")) {
        p.dibujarEllipse_Fn();
        p.agrandarE();
        if (contadorE>=cantE) {
          estado = "2";
        }
      }

      if (estado.equals ("2")) {
        p.agrandarE();
      }

      if (contadorE == cantE+1) {
        p.agrandarE();
        estado = "3";
      }

      if (estado.equals ("3")) {
        p.dibujarCirculoFino_Fn ();
        if (cantE==1 && bordes == 2) {
          p.dibujarCirculoGrueso_Fb();
        }
        if (contadorC >= cantC ) {
          estado = "4";
        }
      }

      if (estado.equals("4") && amp > 100.800) {
        contadorE = 0;
        contadorC = 0;
        numFondo = int (random (0, 4));
        setup();
      }
    }

    if ( terminoElSonido ) {
      p.ActualizarE();
      p.ActualizarC();
    }
  }


  antesHabiaSonido = haySonido;
}


void oscEvent( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {
    amp = m.get(0).floatValue();
    //println("amp: " + amp);
  }
  if (m.addrPattern().equals("/pitch")) {
    pitch = m.get(0).floatValue();
    //println("pitch: " + pitch);
  }
}
