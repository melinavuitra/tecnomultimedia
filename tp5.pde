
//video explicando: https://youtu.be/foTNoDRceDU
import ddf.minim.*;
Minim minim;
AudioPlayer player, player1, player2;
ControlApp app;

void setup() {
  size(300, 650);
  app = new ControlApp();
  minim = new Minim(this);
}

void draw() {
  app.actualizar();
  app.dibujar();
  if (app.reset) {
    reset();
  }
}

void mouseClicked() {
  app.click();
}

void mousePressed() {
  app.pressed();
}

void reset() {
  app = new ControlApp();
}
