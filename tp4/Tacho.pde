class Tacho {
  PImage imagenTacho;
  int x,y;
  
  //CONSTRUCTOR DE LA CLASE TACHO
  Tacho () {
    imagenTacho = loadImage("tacho.png");
    x = 30;
    y = 380;
  }

  void dibujar () {
    image(imagenTacho, x,y, 200,200);
  }
}
