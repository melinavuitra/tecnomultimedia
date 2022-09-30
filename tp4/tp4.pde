
Kiosco kiosco1;

void setup () {
  
 size (600,600);
 kiosco1 = new Kiosco ();
 
}

void draw () {
  kiosco1.actualizar();
  kiosco1.dibujar(); 
}
