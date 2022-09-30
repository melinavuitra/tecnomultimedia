class Basura {

  boolean drag;
  boolean estoyDentro;
  float posxBasura;
  float posyBasura;

  Basura (float posx) {
    posxBasura  = posx;
    posyBasura = random ( 500, 550);
  }

  void dibujar () {
    pushStyle();
    fill(0);
    circle (posxBasura, posyBasura, 40);
    popStyle();
  }


  void actualizar() {
    // drag toma el valor de mousePressed (si se esta presionando es verdadero)
    drag = mousePressed;
    // chequeo si estoy dentro de algun circulo "basura"
    float d = dist( posxBasura, posyBasura, mouseX, mouseY );
    estoyDentro = d < 40/2;
  }

  // chequeo si esta el mouse presionado y si el mouse está en la zona de alguna de las basuras
  void moverConDrag() {
    if ( drag && estoyDentro ) {
      //muestra el movimiento del circulo con el mouse:
      posxBasura = mouseX;
      posyBasura = mouseY;   
      //zona a despedir la basura:
      //rect(82,400,90,30);
      //con los datos de esa zona chequeo si la basura se tiró
      if (mouseX > 82 && mouseY > 400 && mouseX < 172 && mouseY < 430  ) {
        //lo saco afuera de la pantalla
        posxBasura = width + 1000;
        posyBasura = height + 1000;
      }
    }
  }
}
