class Kiosco {
  //declaro la variable del objeto tacho
  Tacho tachoDelKiosco;

  PImage puestoKiosco;

  //creo el arreglo de instancias de circulos "basura"
  Basura[] basuras = new Basura [10];
  
  //CONSTRUCTOR DE LA CLASE KIOSCO
  Kiosco () {
    for (int i = 0; i < basuras.length; i++) {
      //inicializo los objetos circulos "basura", del arreglo
      //le paso la posicion x, de manera tal que no se choquen
      basuras[i] = new Basura((i*height/basuras.length));
    }
    //inicializo el objeto tacho
    tachoDelKiosco = new Tacho ();
    
    //cargo la imagen
    puestoKiosco = loadImage("puestoKiosco.jpg");
  }

  void actualizar() {
    //recorro el arreglo con el flor
    for (int i = 0; i<10; i++) {
      //en actualizar chequeo si se presiono el mouse y si estoy tocando algun circulo "basura"
      basuras[i].actualizar();
      //moverconDrag chequea todo el tiempo si estoy presionando el mouse, y si estoy tocando algun circculo "basura"
      //en caso de que esto sea verdadero, las posiciones del circulo pasan a ser las variables mouseX y mouseY para dar la impresion
      //de "arrastre"
      basuras[i].moverConDrag();
    }
  }

  void dibujar () {
    image(puestoKiosco, 0, 0, 600, 600);
    //llamo al metodo de la clase tacho para que se dibuje
    tachoDelKiosco.dibujar();
    
    //uso el for para ir dibujando los circulos "basura" con 
    for (int i = 0; i<basuras.length; i++) {
      basuras[i].dibujar();
    }
    
    //texto indicativo
    pushStyle();
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Recogé la basura del kiosco", width/2, height/2+80);
    popStyle();
  }
}
