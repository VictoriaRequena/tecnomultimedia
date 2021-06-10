PImage fondo,otro, carabob;
PFont fuente,otra;
float pxtitulo;
float pxImagenotro;
float pytitulos1, pytitulos2,pytitulos3,pytitulos4;
boolean titulopara,entra;
float pxcara,pycara;

void setup () {
size (600,400);
fondo= loadImage ("imagen1.jpg");
fuente= loadFont ("Ravie-48.vlw");
otra= loadFont ("HoboStd-48.vlw");
otro= loadImage ("imagen2.jpg");
entra=true;
titulopara=true;
pxImagenotro=600;
pxcara=random (350,width);
pycara=random (50,height);
carabob= loadImage ("carabob.png");
pytitulos1= 400;
pytitulos2=400;
pytitulos3=400;
pytitulos4=400;
}

void draw () {
if (titulopara==true){
 image (fondo,0,0,width,height);
textFont (fuente); 
textSize (30);
textAlign (CENTER);
fill (0);
text  ("Bob Esponja:\n Al Rescate",pxtitulo++,200); 
}

  if (pxtitulo == width/2) {
 titulopara=false;
}

if (pxtitulo==width/2 && entra==true) {
 imageMode (CORNER);
  image (otro,pxImagenotro,0,width,height);
  pxImagenotro--;
}

if (pxImagenotro==0) {
  entra=false;
}
if (entra==false) {
imageMode (CORNER);
image (otro,pxImagenotro,0,width,height);
textFont (otra);
textSize (30);
textAlign (CENTER); 
fill (0);
image (carabob,pxcara,pycara,50,50);
text ("Directed By   \n \n TIM HILL",180,pytitulos1--);
text ("Screenplay By  \n \n TIM HILL",420,pytitulos1--);
}
if (frameCount >18 *60) {
text ("Story By \n \n TIM HILL \n \n and \n \n Jonathan Aibel \n \n & \n \n Gleen Berger",175,pytitulos2--);
text ("Music By \n \n Hans Zimmer \n \n and \n \n Steve Mazzaro",430,pytitulos2--);
}
if (frameCount >24 *60) {
text ("Voices of protagonists  \n \n BOB ESPONJA    Tom Kenny \n \n PATRICIO ESTRELLA    Bill Fagerbakke \n \n ARENITA MEJILLAS    Carolyn Lawrence \n \n CALAMARDO    Rodger Bumpass\n\n DON CANGREJO    Clancy Brown \n \n PLANKTON    MR.Lawrence \n \n GARY el caracol    Tom Kenny",300,pytitulos3--);
}
if (frameCount > 38 *60) {
text ("OTTO    Awkwafina \n \n POSEIDON    Matt Berry \n \n TIFFANY HADDOCK    Tiffany Haddish \n \n SABIO    Keanu Reeves \n \n EL JUGADOR    Snoop Dogg \n \n EL DIABLO    Danny Trejo \n \n CANCILLER    Reggie Watts ",300,pytitulos4--);
} 
 
println (mouseX,mouseY);
}
//void keyPressed () {
 // if (keyCode== RIGHT || keyCode==ENTER){
 

 
 
