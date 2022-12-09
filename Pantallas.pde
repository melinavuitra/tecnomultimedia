class Pantallas {
  PImage pantallaInicio;
  PImage panelHamburguesas;
  PImage celular;
  PImage ticket;
  String textoComprar;
  PFont fuente2;
  String estado;
  ControlApp control;

  Pantallas (ControlApp control_) {
    control = control_;
    pantallaInicio=loadImage("PantallaInicio.png");
    panelHamburguesas=loadImage("PanelHamburguesas.png");
    ticket = loadImage("Ticket.png");
    celular=loadImage("celular.png");
    image(celular, 0, 0, 300, 650);
  }

  void actualizar(String estado_) {
    estado = estado_;
  }

  void dibujar(String estado, carritoDeCompra unCarrito) {

    if (estado.equals("PantallaInicio")) {
      inicio();
    } else { 
      if (estado.equals("PantallaCompra")) {
        compra();
      } else if (estado.equals("PantallaCarrito")) {
        carritoCompra(unCarrito);
      } else if (estado.equals("PantallaFinal")) {
        pantallaFinal();
      } else if (estado.equals("PantallaComprobante")) {
        pantallaComprobante(unCarrito);
      }
    }
  }

  void inicio () {
    push();
    image(pantallaInicio, 0, 0, 300, 650);
    textoComprar = "COMPRAR";
    fill(0);

    rect(width/2-100, height/2+55, 200, 50);
    fill(255);
    textAlign(CENTER);
    textSize(25);
    //textFont(fuente2);
    text(textoComprar, width/2, height/2+90);
    pop();
  }

  void compra () {

    //Imagen hamburguesas
    image(celular, 0, 0, 300, 650);
    image(panelHamburguesas, 0, 0, 300, 650);
    push();
    fill(0);
    rect(width/2-100, height/2-295, 200, 40);
    fill(255);
    textAlign(CENTER);
    textSize(25);
    text("Ver compra", width/2, height/2-268);
    pop();
  }

  void carritoCompra (carritoDeCompra unCarrito) {
    image(celular, 0, 0, 300, 650);
    unCarrito.dibujar();
    rect(width/2-100, height/2+230, 200, 50);
    push();
    fill(255);
    textAlign(CENTER);
    text("Confirmar", width/2, height/2+262);
    pop();
  }

  void pantallaFinal () {
    image(celular, 0, 0, 300, 650);
    push();
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("Gracias por su compra!", width/2, height/2);

    text("Créditos:\n\n Melina Vuitra \n Joaquin De Vigo Urcos", width/2, height/2+180);
    image(pantallaInicio, 0, -80, 300, 650);
    pop();

    push();
    fill(0);
    textAlign(CENTER);
    textSize(22);

    //rect ver ticket
    rect(width/2-100, height/2+20, 200, 50);
    fill(255);
    text("Ver Comprobante", width/2, height/2+53);
    fill(0);

    //rect volver a comprar
    rect(width/2-100, height/2+80, 200, 50);
    fill(255);
    text("Volver a comprar", width/2, height/2+113);
    pop();
  }

  void pantallaComprobante(carritoDeCompra unCarrito) {
    image(celular, 0, 0, 300, 650);
    image(ticket, 0, 0, 300, 650);
    unCarrito.dibujarComprobante();
    push();
    rect(width/2-100, height/2+250, 200, 40);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Volver a comprar", width/2, height/2+278);
    pop();
  }
///CHEQUEO BOTONES DE CAMBIO DE ESTADOS Y CAMBIO EL ESTADO DE CONTROL APP
  void pressed () {
    player1 = minim.loadFile("BotonesMasMenos.wav");
    if (mousePressed) {
      if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 + 55) && mouseY < height/2 + 105) && (this.control.estado.equals("PantallaInicio"))) {
        this.control.estado = "PantallaCompra";
        player1.play();
      } else {
        if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 - 295) && mouseY < height/2 - 235) && (this.control.estado.equals("PantallaCompra"))) {
          if (this.control.sumaCantidad > 0 ) {
            this.control.estado = "PantallaCarrito";
            player1.play();
          }
        } else {
          if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 + 230) && mouseY < height/2 + 285) && (this.control.estado.equals("PantallaCarrito"))) {
            this.control.estado = "PantallaFinal";
            player1.play();
          } else {
            if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 + 80) && mouseY < height/2 + 130) && (this.control.estado.equals("PantallaFinal"))) {
              control.reset=true;
              player1.play();
            } else {
              if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 + 20) && mouseY < height/2 + 70) && (this.control.estado.equals("PantallaFinal"))) {
                this.control.estado = "PantallaComprobante";
                player1.play();
              } else {
                //rect(width/2-100, height/2+250, 200, 40);
                if ((mouseX > width/2-100 && mouseX < width/2 + 100 && mouseY > (height/2 + 250) && mouseY < height/2 + 290) && (this.control.estado.equals("PantallaComprobante"))) {
                  control.reset=true;
                  player1.play();
                }
              }
            }
          }
        }
      }
    }
  }
}
