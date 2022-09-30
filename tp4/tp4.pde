//VIDEO: https://youtu.be/e63dy01XlRQ
//ACLARACIÓN: En un momento del video señalo al arreglo y digo "crear el objeto" en vez de "creo un arreglo". Me refería al arreglo de objetos "basura" y que después lo iba cargando

Kiosco kiosco1;

void setup () {
  
 size (600,600);
 kiosco1 = new Kiosco ();
 
}

void draw () {
  kiosco1.actualizar();
  kiosco1.dibujar(); 
}
