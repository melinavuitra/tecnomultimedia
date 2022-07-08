float colores[] = new float [cantNiveles]; 

void cargoArregloDeColores() {
  for (int i = 0; i<colores.length; i++) {
    colores[i] = random(255);
  }
}
