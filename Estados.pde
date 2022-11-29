void dibujar() {
  /*if (mousePressed) {
    dibujos.beginDraw();
    dibujos.strokeWeight(grosorDibujo);
    dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
    dibujos.endDraw();
  }*/
}
//-----------------------------------------------------------
void detectar(PGraphics _dibujos) {
  dibujos = _dibujos;
  receptor.actualizar(mensajes);
  
  if (capturar == true) {
    
    for (Blob b : receptor.blobs) {
      if (b.entro) {
        println("bodi");
        poly = new FPoly();
        int offset = 20;
        
        println(b.contorno.size());
        for (int i= 0; i<b.contorno.size()-2; i+=offset) { //simplificar la forma salteando vertices
          poly.vertex(b.contorno.get(i) * width, b.contorno.get(i+1) * height);
        }
        poly.setPosition(b.centerX, b.centerY);
        poly.setStatic(true);
        poly.setGrabbable(false);
        poly.setDrawable(false);
        poly.setName("lineas");
        //endShape(CLOSE);
        mundo.add(poly);
      }
    }
    capturar = false;
  }

  dibujos.beginDraw();
  dibujos.background(255);
  dibujos.endDraw();
}
//-----------------------------------------------------------
void jugar() {
  mundo.add(pelota);
  pelotaDesactivada = true;
}
//-----------------------------------------------------------
void reset() {
  mundo.clear();
  mundo.setEdges(color(0));
  background (255);
  backDibujar.stop();
  pelotaDesactivada = false;
  estadoa = false;
  estadob = false;
  estadod = false;
  estadoe = false;
  tiempo = tiempoOriginal;
  tiempito = 3;
  estado = "a";

  meta = new FBox(50, 100);
  meta.isSensor();
  meta.setStatic(true);
  meta.setPosition(width-50/2, random(50, 550));
  meta.setStrokeWeight(grosorLinea);
  meta.setFill(255);
  meta.setStroke(150,150,150);
  meta.setName("meta");
  mundo.add(meta);
  objetos();
}
//-----------------------------------------------------------
void ganar() {
  tiempito --;
  background(random(255), random(255), random(255));
}
//-----------------------------------------------------------
void perder() {
  tiempito --;
  background(0);
}
