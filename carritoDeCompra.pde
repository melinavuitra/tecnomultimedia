class carritoDeCompra {

  Hamburguesas[] hamburguesas;
  carritoDeCompra(Hamburguesas[] unasHamburguesas) {
    hamburguesas=unasHamburguesas;
  }

  void dibujar () {
    //variable ubicacion para controlar ubicacion de todos los textos;
    int ubicacion = 80;
    float total = 0;
    for (int i = 0; i < hamburguesas.length; i++) {
      fill(0);
      if (hamburguesas[i].botonera.cantidad > 0) {
        textSize(20);
        if (hamburguesas[i].botonera.papas) {
          push();
          textSize(15);
          text("Con papas (+$300c/u)", 20, 42 + ubicacion );
          pop();
          text("$ " + hamburguesas[i].botonera.cantidad * (hamburguesas[i].precio+300), 20, 65 + ubicacion );
          total = total + (hamburguesas[i].botonera.cantidad * (hamburguesas[i].precio+300));
        } 
        if (!hamburguesas[i].botonera.papas) {
          text("$ " + hamburguesas[i].botonera.cantidad * hamburguesas[i].precio, 20, 65 + ubicacion  );
          total = total + (hamburguesas[i].botonera.cantidad * hamburguesas[i].precio);
        }  
        text(hamburguesas[i].nombre + "*" + hamburguesas[i].botonera.cantidad, 20, 25  + ubicacion);
        ubicacion= ubicacion + 70;

      }
    }
    push();
    textAlign(CENTER);
    fill(0);
    textSize(20);
    text("Total:" + total + " ", width/2, 530 );
    pop();
  }
  
    void dibujarComprobante () {
    //variable ubicacion para controlar ubicacion de todos los textos;
    int ubicacion = 80;
    float total = 0;
    for (int i = 0; i < hamburguesas.length; i++) {
      if (hamburguesas[i].botonera.cantidad > 0) {
        textSize(15);
        if (hamburguesas[i].botonera.papas) {
          push();
          textSize(10);
          text("Con papas (+$300c/u)", 30, 90 + ubicacion );
          pop();
          text("$ " + hamburguesas[i].botonera.cantidad * (hamburguesas[i].precio+300), 30, 105 + ubicacion );
          total = total + (hamburguesas[i].botonera.cantidad * (hamburguesas[i].precio+300));
        } 
        if (!hamburguesas[i].botonera.papas) {
          text("$ " + hamburguesas[i].botonera.cantidad * hamburguesas[i].precio, 30, 105 + ubicacion  );
          total = total + (hamburguesas[i].botonera.cantidad * hamburguesas[i].precio);
        }
        
        text(hamburguesas[i].nombre + "*" + hamburguesas[i].botonera.cantidad, 30, 80  + ubicacion);


        ubicacion= ubicacion + 50;
      }
    }
    push();
    textSize(15);
    text("Total:" + total + " ", 30, 460 );
    pop();
  }
}
