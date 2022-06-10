// https://www.youtube.com/watch?v=V6YXQiK6uj0&ab_channel=MelinaVuitra
int  tam;
color colorRect;
boolean click;
void setup() {
  size(500, 500);
  tam = 500;
}
void draw() {
  strokeWeight(10);
  for (int i= 0; i < 420; i=i+30) {
    noFill();
    if (click) {
      colorRandom();
    } else {
      colorNegro();
    }
    rectMode(CENTER);
    stroke(colorRect);
    rect(width/2, height/2, tam-i, tam-i);
  }
  fill(colorRect);
  rectMode(CORNER);
  rect(width/2-20, height/2-20, 40, 40);
}
//mousex > width/2-20 borde izquierdo
//mousex < (width/2 - 20 ) + 40 borde derecho
//mousey > height/2-20 borde superior
//mousey < (heigth/2-20) + 40 borde inferior
void mouseClicked() {
  if (mouseX > width/2 - 20 && mouseX < (width/2 - 20) + 40 && mouseY > height/2 - 20 && mouseY < (height/2 - 20)+ 40) {
    click = !click;
  }
}
void colorRandom () {
  colorRect = color (random(255), random(255), random(255));
}

void colorNegro () {
  colorRect = color (0, 0, 0);
}
