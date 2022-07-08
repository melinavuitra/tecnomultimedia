//LINK AL VIDEO : https://youtu.be/hu6USZDIscs

//mannejar la saturacion del color de las pelotas de despiste
float resta;
//play: variable para pantalla inicial - barra espaciadora
boolean play;
//variable para controlar los circulos y actualizar la pantalla
boolean actualizar=true;
int cantNiveles=10;
PFont fuenteJuego;

void setup () {
  size(500, 500);
  fuenteJuego = createFont ("fontGame.ttf",50);
  textFont(fuenteJuego, 25);
  colorMode(HSB);
 
  pantallaInicial();
  //cargoArregloDeColores();
}

void draw () {
  if ((play) && (actualizar)) {
    jugando ();
  }
}
