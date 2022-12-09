class Botonera {

  int botonMenosX, botonMenosY, botonMasX, botonMasY, checkX, checkY;
  int cantidad;
  boolean papas, clickCheck;

  Botonera (int botonMenosX_, int botonMenosY_, int botonMasX_, int botonMasY_, int checkX_, int checkY_ ) {
    botonMenosX = botonMenosX_;
    botonMenosY = botonMenosY_;
    botonMasX = botonMasX_;
    botonMasY = botonMasY_;
    checkX = checkX_;
    checkY = checkY_;
    cantidad=0;
  }

  void dibujar() {
    noFill();
    noStroke();
    circle (botonMenosX, botonMenosY, 20);
    circle (botonMasX, botonMasY, 20);
    if ((papas) && (cantidad>0)) {
      fill(255);
    } else {
      noFill();
    }
    push ();
    rect (checkX, checkY, 13, 13);
    fill(0);
    textSize(20);
    text (cantidad, ((botonMasX - botonMenosX)/2 + botonMenosX)-6, botonMenosY+8);
    pop();
  }


  void chequearDistancia () {
    player = minim.loadFile("BotonesComunes.wav");

    float distancia1 = dist (mouseX, mouseY, botonMenosX, botonMenosY);
    int radio1 = 20/2;

    if (distancia1 < radio1) {
      if (cantidad > 0) {
        player.play();
        cantidad = cantidad - 1 ;
      }
    }
    float distancia2 = dist (mouseX, mouseY, botonMasX, botonMasY);
    int radio2 = 20/2;

    if (distancia2 < radio2) {
      if (cantidad <= 8) {
        player.play();
        cantidad = cantidad + 1;
      }
    }
    if (mouseX > checkX && mouseX < checkX + 13 && mouseY > checkY && mouseY < checkY + 13) {
      if (cantidad>0) {
        papas=!papas;
      }
    }
  }
}
