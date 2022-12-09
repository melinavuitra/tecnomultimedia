class ControlApp {
  Pantallas pantallas;
  String estado;

  Hamburguesas[] hamburguesas = new Hamburguesas [6];

  Botonera[] botonera = new Botonera [6]; 

  carritoDeCompra carrito;

  boolean reset;
  int sumaCantidad;

  ControlApp() {
    carrito = new carritoDeCompra(hamburguesas);

    pantallas = new Pantallas(this);

    estado="PantallaInicio";

    botonera[0] = new Botonera (50, 112, 97, 112, 99, 210);
    botonera[1] = new Botonera (190, 112, 237, 112, 236, 210);
    botonera[2] = new Botonera (50, 295, 97, 295, 100, 396);
    botonera[3] = new Botonera (190, 295, 237, 295, 238, 396);
    botonera[4] = new Botonera (54, 482, 101, 482, 101, 584);
    botonera[5] = new Botonera (193, 482, 240, 482, 239, 584);

    hamburguesas[0] = new Hamburguesas (botonera[0], "Burguer Aros", botonera[0].papas, 1, 1200 );
    hamburguesas[1] = new Hamburguesas (botonera[1], "Burguer Aros Roque", botonera[1].papas, 2, 1300);
    hamburguesas[2] = new Hamburguesas (botonera[2], "Burguer Bacon", botonera[2].papas, 3, 1300);
    hamburguesas[3] = new Hamburguesas (botonera[3], "Burguer Guacamole", botonera[3].papas, 4, 1500);
    hamburguesas[4] = new Hamburguesas (botonera[4], "Burguer Picante", botonera[4].papas, 5, 1600);
    hamburguesas[5] = new Hamburguesas (botonera[5], "Burguer Mixta", botonera[5].papas, 6, 1700);
  }

  void actualizar () {
    pantallas.dibujar(estado, carrito);
    pantallas.actualizar(estado);
  }

//////MANEJO LOS ESTADOS PASANDOSELOS A PANTALLA
  void dibujar () {
    if (estado.equals("PantallaInicio")) {
      pantallas.dibujar(estado, carrito);
    } else {
      if (estado.equals("PantallaCompra")) {
        pantallas.dibujar(estado, carrito);
        for (int i = 0; i < botonera.length; i++) {
          botonera[i].dibujar();
          //para chequear si compraron algo o no 
          sumaCantidad = sumaCantidad + botonera[i].cantidad;
        }   
      } else {
        if (estado.equals("PantallaCarrito")) {
          carrito.hamburguesas = hamburguesas;
          pantallas.dibujar(estado, carrito);
        } else {
          if (estado.equals("PantallaFinal")) {
            pantallas.dibujar(estado, carrito);
          } else {
            if (estado.equals("PantallaComprobante")) {
              pantallas.dibujar(estado, carrito);
            }
          }
        }
      }
    }
  }

  void pressed() {
    pantallas.pressed();
  }

  void click() {
    for (int i = 0; i < botonera.length; i++) {
      botonera[i].chequearDistancia();
    }
  }
}
