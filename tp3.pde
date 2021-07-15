/*
TP3 Ilusion Optica 
Victoria Requena
Legajo: 88147/6
URL video explicativo:  https://youtu.be/IH8zNESbMRs
(En el video olvide mencionar que con el boton de reinicio tambien vuelve a su punto de inicio el valor de mouseY. Tambien quisiera disculparme por la calidad de imagen, intente grabarlo varias veces para mejorarla pero no funciono)
*/

int cant=10;
int tam;
int grosor=8;
float tono;

void setup() {
  
size(500,500);
surface.setResizable(true);
background(0);
}

void draw() {

tam = width/cant;
for (int a=0; a<cant; a++) {
for (int b=0; b<cant; b++) {
tono= map (mouseY,0,200,0,50);
fill (0);
stroke (tono);
strokeWeight (grosor);
rect(a*tam, b*tam, tam, tam);
    }
  }
for (int c=0; c<cant;c++) {
for (int d=0; d<cant;d++) {
fill(255,255);
noStroke ();
ellipse (d*tam,c*tam,12,12);
}
}
}

void mousePressed() {
grosor=20;
}

void keyPressed() {
if (keyCode=='r'); {
grosor=8;
mouseY=0;
}
}
