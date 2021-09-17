/* Trabajo Practico n°4 Aventura grafica

Alumna Requena Victoria
Legajo: 88147/6

Link de video explicativo:
Link a diagrama de flujo: https://github.com/VictoriaRequena/tecnomultimedia/blob/Diagrama-de-flujos-TP4/Diagrama%20de%20flujo-%20entrega%2016-09.pdf

(En la pestaña funciones aclaro lo que no pude realizar. Intente de varias formas que me sugirieron pero no pude lograrlo, no encuentro el error).

*/

PImage [] fotos= new PImage [5];
PFont titulo,textos;
int pantallas;

void setup () {
  
size (500,400);
  
for (int i=0; i<fotos.length; i++) {
fotos[i] = loadImage("foto"+i+".jpg");
   }
titulo= loadFont ("BrushScriptMT-48.vlw");
textos = loadFont ("CalifornianFB-Italic-48.vlw");

pantallas=0;

}

void draw (){
portada ();

}

void keyPressed () {
  if (keyPressed==true && keyCode==RIGHT && pantallas==0) {
    pantallas=0;
   
  }else if (keyPressed==true && keyCode==RIGHT && pantallas==1) {
    pantallas=1;

}
}
