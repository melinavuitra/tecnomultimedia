//Créditos de: //<>//
//https://www.youtube.com/watch?v=NZ1ywY1jWsY&t=19s&ab_channel=Armandochannel
//Bob Esponja - La pelicula
PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, imgplay;
int   desvanecer, opacidad2, opacidad3, opacidad4, opacidad5, opacidad6, opacidad7, opacidad8, opacidad9, opacidad10, opacidad11;
PFont txt1;
float vel;
boolean play;

void setup() {
  size(800, 400);
  txt1 = createFont("Spongeboy.ttf", 10);
  textFont(txt1);
  desvanecer = 100; 
  cargarImagenes();
  background(0);
}

void draw () {
  background(0);
  if (!play) {
    //botón play
    fill(255);
    circle (width/2, height/2, 200);
    fill(0);
    triangle(380,170,380,240,440,height/2);

  } else {
    //incremento vel mientras no hayan pasado todas las pantallas
    if (vel < 49) 
      vel= vel + 0.03;
    if (vel < 4) {
      //uso tint ya que es una imagen sola
      tint(255, desvanecer);
      image(img1, 0, 0, 800, 400);
      desvanecer = desvanecer - 2;
    } else {
      noTint();
      if (vel >= 4 && vel < 8) {
        imagen2();
        fill(0, 0, 0, opacidad2);
        //uso rect para bajar opacidad a la imagen y al texto a la vez
        rect(0, 0, width, height);
        opacidad2 = opacidad2 + 2;
      } else {
        if (vel >=8 && vel < 12) {
          imagen3();
          fill(0, 0, 0, opacidad3);
          rect(0, 0, width, height);
          opacidad3= opacidad3 + 2;
        } else {
          if (vel >= 12 && vel < 16) {
            imagen4();
            fill(0, 0, 0, opacidad4);
            rect(0, 0, width, height);
            opacidad4 = opacidad4 + 2;
          } else {
            if (vel >= 16 && vel < 20) {
              imagen5();
              fill(0, 0, 0, opacidad5);
              rect(0, 0, width, height);
              opacidad5 = opacidad5 + 2;
            } else {
              if (vel >= 20 && vel < 24) {
                imagen6();
                fill(0, 0, 0, opacidad6);
                rect(0, 0, width, height);
                opacidad6 = opacidad6 + 2;
              } else {
                if ( vel >= 24 && vel < 28) {
                  imagen7();
                  fill(0, 0, 0, opacidad7);
                  rect(0, 0, width, height);
                  opacidad7 = opacidad7 + 2;
                } else {
                  if (vel >= 28 && vel < 32) {
                    imagen8();
                    fill(0, 0, 0, opacidad8);
                    rect(0, 0, width, height);
                    opacidad8 = opacidad8 + 2;
                  } else {
                    if (vel >= 32 && vel < 36) {
                      imagen9();
                      fill(0, 0, 0, opacidad9);
                      rect(0, 0, width, height);
                      opacidad9 = opacidad9 + 2;
                    } else {
                      if (vel >= 36 && vel < 40) {
                        imagen10();
                        fill(0, 0, 0, opacidad10);
                        rect(0, 0, width, height);
                        opacidad10 = opacidad10 + 2;
                      } else {
                        if (vel >= 40 && vel < 44) {
                          imagen11();
                          fill(0, 0, 0, opacidad11);
                          rect(0, 0, width, height);
                          opacidad11 = opacidad11 + 2;
                        } else {
                          if ( vel >= 44 && vel < 48) {
                            imagen12();
                          } else {
                            //si terminó, vuelve al principio
                            if (vel >= 48) {
                              resetVariables();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void mousePressed() {
  float distancia = dist(mouseX, mouseY, width/2, height/2); 
  int radio = 200 / 2;                                 
  if (distancia < radio) {  //si está dentro del circulo
    play = true;
  }
}
