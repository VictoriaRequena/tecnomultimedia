void portada () {
image(fotos[0],0,0, width, height);
textFont (titulo);
fill (255);
text ("El otro", 200,200);
fill (255);
textSize(30);
rect (25,350,100,40);
rect (375,350,100,40);
textFont (textos);
textSize (30);
fill (0);
text ("Creditos",29,380);
textSize (27);
text ("Comenzar",379,377);
fill (255);
textSize(30);
text ("Left",40,350);
text ("Right",390,350); 

if (keyCode==LEFT) {
creditos ();
}
if (keyCode==RIGHT) {
 historia ();
 }

}

void creditos () {
  
background (0);
textFont (titulo);
fill(255);
text ("CREDITOS",140,50);
rect (200,350,100,40);
fill (0);
textFont (textos);
textSize (40);
text ("Volver",200,385);
fill (255);
textSize(20);
//text ("Right",310,385);
textSize (25);
text ("Autor: \n Jorge Luis Borges \n  \n Personajes: \n Jorge Luis Borges de 1972 \n Jorge Luis Borges de 1969", 150,130);


}

void historia () {
  
image(fotos[1],0,0, width, height);
textFont (textos);
textSize (30);
rect (200,350,100,40);
fill (0);
text ("Seguir",220,380);
if (pantallas==0) {
text ("Eran las 10 am,\nyo estaba recostado\nen un banco frente\nal río Charles.",25,50); //quiero que al apretar la tecla derecha salga este texto y aparezca el siguiente pero no logro hacerlo.
}
if (pantallas==1){
image(fotos[1],0,0, width, height);
text ("Tuve la sensación\nde que este momento\nya lo habia vivido.\nEn la otra punta del\nbanco alguien se\nhabia sentado",25,40);
fill (255);
rect (25,350,100,40);
rect (375,350,100,40);
fill (0);
text ("Me voy",30,380);
text ("Me quedo",375,380);
}

}
