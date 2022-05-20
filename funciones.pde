void cargarImagenes() {
  img1 = loadImage ("1.jpg");
  img2 = loadImage ("2.jpg");
  img3 = loadImage ("3.jpg");
  img4 = loadImage ("4.jpg");
  img5 = loadImage ("5.jpg");
  img6 = loadImage ("6.jpg");
  img7 = loadImage ("7.jpg");
  img8 = loadImage ("8.jpg");
  img9 = loadImage ("9.jpg");
  img10 = loadImage ("10.jpg");
  img11 = loadImage ("11.jpg");
  img12 = loadImage ("12.jpg");
}

void imagen2 () {
  image(img2, 0, 0, width, height);
  textSize(13);
  fill(240, 227, 75);
  text("Directed and Pruduced by", 230, 100);
  textSize(22);
  fill(255);
  text("Stephen Hillenburg", 210, 130);
  
}

void imagen3 () {
  image(img3, 0, 0, width, height);
  textSize(15);
  fill(240, 227, 75);
  text("Written and Storyboarded by", 400, 100);
  textAlign(CENTER, CENTER);
  textSize(24);
  fill(255);
  text("Derek Drymon & \n Tim Hill & \n Stepeh Hillen & \n Kent Osborne & \n Aaron Springer & \n Paul Tibbitt", 400, 220);
  textAlign(CENTER, CENTER);
}

void imagen4 () {
  image(img4, 0, 0, width, height);
  textSize(15);
  fill(240, 227, 75);
  textAlign(LEFT);
  text("Based on a Story and the Series created by", 130, 90);
  fill(255);
  textSize(24);
  text("Stephen Hillenburg", 280, 125);
}

void imagen5 () {
  image(img5, 0, 0, width, height);
  textSize(15);
  fill(240, 227, 75);
  text("Producer", 167, 250);
  fill(255);
  textSize(24);
  text("Julia Pistor", 220, 290);
}

void imagen6 () {
  image (img6, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Executive Producer", 207, 98);
  fill(255);
  textSize(24);
  text("Albie Hecht", 185, 140);
}

void imagen7 () {
  image (img7, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Sequence Director", 411, 270);
  fill(255);
  textSize(24);
  text("Derek Drymon", 270, 300);
}

void imagen8 () {
  image (img8, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Production Designer", 163, 260);
  fill(255);
  textSize(24);
  text("Nick Jennings", 273, 300);
}

void imagen9 () {
  image (img9, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Editor", 560, 255);
  fill(255);
  textSize(24);
  text("Lynn Hobson", 457, 290);
}

void imagen10 () {
  image (img10, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Animation Directors", 400, 100);
  textAlign(CENTER, CENTER);
  textSize(24);
  fill(255);
  text("Dong Kun Won \n Yu Mun Jeong \n Hoon Choi  \n Hee Man Yang  \n Sang Kyun Shin", 400, 200);
  textAlign(CENTER, CENTER);
}

void imagen11 () {
  image (img11, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Music by", 251, 95);
  fill(255);
  textSize(24);
  text("Gregor Narholz", 240, 130);
}

void imagen12 () {
  image (img12, 0, 0, width, height); 
  textSize(15);
  fill(240, 227, 75);
  text("Story edited by", 400, height/2);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(24);
  text("Tim Hill", 400, height/2+30);
  textAlign(CENTER, CENTER);
}

void resetVariables () {
  vel = 0;
  play = false;
  desvanecer = 100;
  opacidad2 = 0;
  opacidad3 = 0 ;
  opacidad4 = 0;
  opacidad5 = 0;
  opacidad6 = 0;
  opacidad7 = 0;
  opacidad8 = 0;
  opacidad9 = 0;
  opacidad10 = 0;
  opacidad11 = 0;
}
