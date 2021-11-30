/* Trabajo Practico n°4 Aventura grafica
 
 Alumna Requena Victoria
 Legajo: 88147/6
 
 Link de video explicativo: https://youtu.be/MIrcdCnGjtw
 Link a diagrama de flujo: https://github.com/VictoriaRequena/tecnomultimedia/blob/Diagrama-de-flujos-TP4/Diagrama%20de%20flujo-%20entrega%2016-09.pdf
 
 */

PImage [] fotos= new PImage [5];
PFont titulo, textos;
int estado=0;
String [] dialogos = {"Autor: \n Jorge Luis Borges \n  \n Personajes: \n Jorge Luis Borges de 1972 \n Jorge Luis Borges de 1969",
  "Eran las 10 am,\nyo estaba recostado\nen un banco frente\nal río Charles.",
  "Tuve la sensación\nde que este momento\nya lo habia vivido.\nEn la otra punta del\nbanco alguien se\nhabia sentado.",
  "Pero como preferia\nestar solo me pare\ny me fui.", "Preferia estar solo, pero no\nqueria levantarme\nenseguida, para no\nmostrarme incivil.",
  "Luego escuche que comenzo\na silbar y a cantar\n'La tapera' de Elias\nRegules.",
  "Tras la afirmacion de\nalgunas preguntas,\nle afirme que el era Jorge\nLuis Borges, que yo\ntambien lo era.",
  "Como no me creia,\nle mencione alguna cosas\nvividas que un\ndesconocido no podria\nsaber.",
  "Me miro con cara rara,\nse levanto y se fue.",
  "Tuve la intencion de\nseguirlo, pero me di cuenta\nque seria inutil ya que\nél estaba negado\na escuchar.",
  "El seguia sin creerme.\n'Esas pruebas no prueban\nnada. Si yo lo estoy\nsoñando, es natural\nque sepa lo que yo sé'.",
  "Luego de explicarle la opcion\nde que todo fuese un sueño,\nle conte sobre la familia\ny nuestra vida: 'No sé\nla cifra de los libros\nque escribirás, pero sé\nque son demasiados.\nDarás clases como tu padre\ny como otros de nuestra sangre'.",
  "El encuentro fue real,\npero el otro conversó\nconmigo en un sueño\ny fue así que pudo\nolvidarme, yo conversé\ncon él en la vigilia y\ntodavia me atormenta\nel encuentro.",
  "Mientras hablaba lo vi muy estusiasmado,\nme interrumpió para decirme que quería\nirse conmigo al 1972.",
  "Me divertia la idea asique le dije que sí,\nnada podía salir mal, y así fue.",
  "Claramente no lo permití, creo que se\nquedo un poco enojado, pero preferia eso\nantes que todo quede patas para arriba.", "Creditos", "Comenzar", "Me voy", "Me quedo", "Se va", "Se queda", "Final 1", "Final 2", "Acepto", "Rechazo", "Fin", "Volver"};



void setup () {

  size (500, 400);
  for (int i=0; i<fotos.length; i++) {
    fotos[i] = loadImage("foto"+i+".jpg");
  }
  titulo= loadFont ("BrushScriptMT-48.vlw");
  textos = loadFont ("CalifornianFB-Italic-48.vlw");
}

void draw () {

  if (estado==0) {  //PORTADA
    image(fotos[0], 0, 0, width, height);
    textFont (titulo);
    fill (255);
    text ("El otro", 200, 200);
    fill (255);
    textSize(30);
    botones (dialogos[16], 29, 380,dialogos[17], 378, 377);
    //botones (dialogos[17], 378, 377);
    otro();
  } else if (estado==1) {   //CREDITOS
    background (0);
    textFont (titulo);
    fill(255);
    text ("CREDITOS", 140, 50);
    fill (0);
    textFont (textos);
    textSize (30);
    boton(dialogos[27], 210, 385);
    fill (255);
    textSize(20);
    text ("Right", 310, 385);
    textSize (25);
    text (dialogos [0], 150, 130);
    
  } else if (estado==2) {    //EMPIEZA SOLO EN EL BANCO
    image(fotos[1], 0, 0, width, height);
    textFont (textos);
    textSize (30);
    fill (0);
    text (dialogos [1], 25, 50);
  } else if (estado==3) {    //ELIGE SE VA O SE QUEDA
    image(fotos[1], 0, 0, width, height);
    botones (dialogos [18], 35, 380,dialogos [19], 375, 380);
    text (dialogos [2], 25, 40);
  } else if (estado==4) {   //SE VA
    image(fotos[1], 0, 0, width, height);
    text (dialogos [3], 25, 50);
  } else if (estado==5) {    //SE QUEDA
    image(fotos[2], 0, 0, width, height);
    fill(255);
    text (dialogos [4], 25, 50);
  } else if (estado==6) {   //SILBIDO
    image(fotos[2], 0, 0, width, height);
    fill(255);
    text (dialogos [5], 25, 50);
  } else if (estado==7) {
    image(fotos[2], 0, 0, width, height);
    text (dialogos [6], 25, 50);
  } else if (estado==8) {  //SE VA O SE QUEDA
    image(fotos[2], 0, 0, width, height);
    botones (dialogos [20], 40, 380,dialogos [21], 380, 380);
    fill (255);
    text (dialogos [7], 25, 50);
  } else if (estado==9) {  //SE VA
    image(fotos[2], 0, 0, width, height);
    text (dialogos [8], 25, 50);
  } else if (estado==10) { //NO INTENTA SEGUIRLO
    image(fotos[2], 0, 0, width, height);
    boton (dialogos[26], 235, 380);
    fill(255);
    text (dialogos [9], 25, 50);
  } else if (estado==11) {  //SE QUEDA
    image(fotos[2], 0, 0, width, height);
    text (dialogos [10], 25, 50);
  } else if (estado==12) {  //HABLA DE LA SU VIDA, DECIDE FINAL
    image(fotos[2], 0, 0, width, height);
    botones (dialogos[22], 35, 380,dialogos[23], 385, 380);
    fill (255);
    text (dialogos [11], 25, 50);
  } else if (estado==13) {  //FINAL 2
    image(fotos[4], 0, 0, width, height);
    boton (dialogos[26], 235, 380);
    fill(255);
    text (dialogos [12], 25, 50);
  } else if (estado==14) { //FINAL 1, ACEPTA O RECHAZA
    image(fotos[3], 0, 0, width, height);
    fill (255);
    botones (dialogos[24], 35, 380,dialogos[25], 385, 380);
    fill(0);
    text (dialogos [13], 25, 50);
  } else if (estado==15) {  //ACEPTA
    image(fotos[3], 0, 0, width, height);
    text (dialogos [14], 25, 50);
    boton (dialogos[26], 235, 380);
  } else if (estado==16) {  //RECHAZA
    image(fotos[3], 0, 0, width, height);
    boton (dialogos[26], 235, 380);
    text (dialogos [15], 25, 50);
  }
}

void keyPressed () {

  if (estado==0 && keyCode==LEFT) {
    estado=1;
  } else if (estado==1 && keyCode==RIGHT) {
    estado=0;
  } else if (estado==0 && keyCode==RIGHT) {
    estado=2;
  } else if (estado==2 && keyCode==LEFT) {
    estado=0;
  } else if (estado==2 && keyCode==RIGHT) {
    estado=3;
  } else if (estado==3 && keyCode==LEFT) {
    estado=4;
  } else if (estado==4 && keyCode==RIGHT) {
    estado=6;
  } else if (estado==3 && keyCode==RIGHT) {
    estado=5;
  } else if (estado==5 && keyCode==RIGHT) {
    estado=6;
  } else if (estado==6 && keyCode==RIGHT) {
    estado=7;
  } else if (estado==7 && keyCode==RIGHT) {
    estado=8;
  } else if (estado==8 && keyCode==LEFT) {
    estado=9;
  } else if (estado==9 && keyCode==LEFT) {
    estado=10;
  } else if (estado==10 && keyCode==ENTER) {
    estado=0;
  } else if (estado==8 && keyCode==RIGHT) {
    estado=11;
  } else if (estado==11 && keyCode==RIGHT) {
    estado=12;
  } else if (estado==12 && keyCode==RIGHT) {
    estado=13;
  } else if (estado==13 && keyCode==ENTER) {
    estado=0;
  } else if (estado==12 && keyCode==LEFT) {
    estado=14;
  } else if (estado==14 && keyCode==LEFT) {
    estado=15;
  } else if (estado==15 && keyCode==ENTER) {
    estado=0;
  } else if (estado==14 && keyCode==RIGHT) {
    estado=16;
  } else if (estado==16 && keyCode==ENTER) {
    estado=0;
  }
}
