float posx, posy, posxCorrecto, posyCorrecto;
int nivel;

//PANTALLA INICIAL
void pantallaInicial() {
  //fondo
  background(0);
  //texto
  fill(255);
  textAlign(CENTER, CENTER);     
  textSize(20);
  text("Hace click en la pelota del color indicado \n\n\n Pulse barra espaciadora para iniciar", width/2+4, height/2);
}

//PLAY
void keyPressed() {
  if (key == ' ') {
    play = true;
    nivel=0;
    cargoArregloDeColores();
  }
}

//MECÁNICA DEL JUEGO
void jugando () {
  //armo el fondo del juego (rect)
  mesaDeJuego();

  //dibujo las pelotas que no son correctas
  pelotasDeDespiste();

  //posiciono la pelota correcta
  fill(colores[nivel], 255, 255);
  posxCorrecto = random (width);
  posyCorrecto = random (height/3.5, height);
  circle(posxCorrecto, posyCorrecto, 30);

  //repinto la pantalla
  actualizar=false;
}

//PELOTAS DE DESPISTE
void pelotasDeDespiste() {
  for (int i=0; i<10; i++) {
    posx=random(width);
    posy=random(height/3.5, height);
    //controlo el color
    resta = random(90, 100);
    //40 60 mas dificil
    fill(colores[nivel], 255-resta, 255-resta);
    circle(posx, posy, 30);
  }
}

//FONDO DEL JUEGO
void mesaDeJuego() {
  background(255);
  fill(0);
  rect(0, height/4, width, height-height/4);
  //muestro puntos
  fill(0);
  textSize(20);
  //muestro nivel
  mostrarNivel(80,40);
  //muestra ejemplo
  mostrarEjemplo(451,20,50);
  
}

void mostrarNivel (int posx, int posy) {
  text("Nivel: " + nivel + " de " + cantNiveles , posx, posy);
}

void mostrarEjemplo (int posx, int posy, int tamCircle) {
  text("¡Buscame!", posx, posy);
  fill(colores[nivel], 255, 255);
  circle (450, 80, tamCircle);
}

void mouseClicked() {
  if (play) {
    if (!actualizar) {
      actualizar=true;
    }
    float distancia = dist (mouseX, mouseY, posxCorrecto, posyCorrecto);
    int radio = 30/2;
    if (distancia < radio) {
      //si entra aca es porque clickeo una correcta entonces sube de nivel
      nivel++;
      //chequeo que se hayan pasado todos los niveles disponibles
      if (nivel == colores.length) {
        //si entra aca es porque ya paso todos los niveles
        background(0);
        fill(255);
        textAlign(CENTER, CENTER);
        text("Creditos\nAlumna: Melina Vuitra \n Tecnologia multimedial 1 \n\n\n\n\n\nPulsa espacio para volver a empezar", width/2, height/2);
        text("¡Ganaste! :) \n Llegaste al nivel: " + nivel , width/2, height/2);
        actualizar=true;
        play=false;
        nivel=0;
      }
    } else {
      //si entra aca es porque perdió
      if (play) {
        play=false;
        if (nivel <= colores.length-1) {
          background(0);
          fill(255);
          textAlign(CENTER, CENTER);         
          text(":( \n Perdiste en el nivel: " + nivel, width/2, height/2);
          text("Pulsa espacio para reiniciar el juego", width/2, height/2+220);
        }
      }
    }
  }
}
