 
size (600,600);
background(#17233c);

//resplandor abajo

fill(255,255,255,5);
noStroke();
ellipse(300,550,700,190);
fill(255,255,255,10);
ellipse(300,570,700,190);
fill(255,255,255,15);
ellipse(300,600,700,190);

//luna
stroke(255);
strokeWeight(3);
noFill();
circle(250,300,180);

fill(#17233c);
circle(280,300,140);

noStroke();
circle(290,300,130);

//estrella1
fill(255,255,255);
triangle(98,145,102,145,100,125);
triangle(98,153,102,153,100,175);
triangle(105,148,105,152,120,150);
triangle(95,148,95,152,80,150);

circle(100,150,10);
fill(255,255,255,40);
noStroke();
circle(100,150,20);

//estrella2
fill(255,255,255);
triangle(33,345,37,345,35,325);
triangle(33,353,37,353,35,375);
triangle(40,348,40,352,55,350);
triangle(30,348,30,352,15,350);

circle(35,350,10);
fill(255,255,255,40);
noStroke();
circle(35,350,20);

//estrella3
fill(255,255,255);
triangle(498,25,502,25,500,5);
triangle(498,33,502,33,500,55);
triangle(505,28,505,32,520,30);
triangle(495,28,495,32,480,30);

circle(500,30,10);
fill(255,255,255,40);
noStroke();
circle(500,30,20);

//estrella4
fill(255,255,255);
triangle(398,295,402,295,400,275);
triangle(398,303,402,303,400,325);
triangle(405,298,405,302,420,300);
triangle(395,298,395,302,380,300);

circle(400,300,10);
fill(255,255,255,40);
noStroke();
circle(400,300,20);

//estrella5

fill(255,255,255);
triangle(538,415,542,415,540,395);
triangle(538,423,542,423,540,445);
triangle(545,418,545,422,560,420);
triangle(535,418,535,422,520,420);

circle(540,420,10);
fill(255,255,255,40);
noStroke();
circle(540,420,20);

//puntos random
stroke(255);
strokeWeight(4);
point(368,36);
point(351,131);
point(197,30);
point(228,96);
point(352,370);
point(284,274);
point(544,189);
point(573,580);
point(257,489);
point(199,487);
point(120,568);
point(300,529);
strokeWeight(2);
point(276,424);
point(163,534);
point(180,591);
point(328,584);
point(415,586);
point(219,180);
point(154,168);
point(26,160);
point(21,210);
point(267,320);
point(354,312);
point(87,534);
point(533,511);
point(238,571);
strokeWeight(5);
point(78,218);
point(137,269);
point(15,301);
point(103,350);
point(477,434);
point(567,324);
point(21,526);
point(442,540);
strokeWeight(1);
point(82,401);
point(20,443);
point(159,447);
point(186,417);
point(571,35);
point(547,93);
point(44,571);
point(366,517);
point(394,80);
point(443,28);
point(301,21);
point(320,195);
point(290,163);
point(504,195);
point(493,250);
point(582,454);
point(459,482);
point(509,562);
point(336,413);
point(336,413);
point(353,451);
point(228,456);
point(41,490);
point(113,502);
point(469,368 );
point(385,212);
point(553,272);
point(585,161);
point(579,103);
point(414,370);
point(410,429);
point(381,413);
point(312,464);
point(218,527);
point(110,451);
point(142,390);
point(138,223);
point(568,382);
point(355,556);
point(582,497);



//cometa 1
fill(255);
circle(300,100,5);
noStroke();
fill(255,255,255,40);
triangle( 293,102,306,96,270,50);
//-resplandor cometa 1
fill(255,255,255,80);
noStroke();
circle(300,100,15);

//cometa 2
fill(255);
circle(100,300,5);
noStroke();
fill(255,255,255,40);
triangle( 93,302,106,296,70,250);
//resplandor cometa 2
fill(255,255,255,80);
noStroke();
circle(100,300,15);

//cometa 3
fill(255);
circle(75,450,5);
noStroke();
fill(255,255,255,40);
triangle( 68,452,81,446,45,400);
//resplandor cometa 3
fill(255,255,255,80);
noStroke();
circle(75,450,15);

//cometa 3
fill(255);
circle(500,350,5);
noStroke();
fill(255,255,255,40);
triangle( 493,352,506,346,470,300);
//resplandor cometa 3
fill(255,255,255,80);
noStroke();
circle(500,350,15);


pushMatrix();
//---saturno
noFill();
stroke(255);
strokeWeight(3);
circle(50,50,150);
rotate(PI/8);
ellipse(45,45,400,50);
popMatrix();
stroke(#17233c);
strokeWeight(7);
line(0,21,116,73.5);


//nave
pushMatrix();
stroke(255);
strokeWeight(3);
noFill();
line(505,83,513,66);
circle(495,107,52);
circle(495,107,25);
rotate(PI/8);
fill(#17233c);
//estas coordenadas fueron para poder rotar y a la misma vez
//amoldar la elipse al círculo
ellipse(500,-80,100,30);
popMatrix();

  //tipito

  quad(448,221,459,232,444,244,436,236);
  circle(461,219,15);
  line(448,221,433,221);
  line(459,232,459,245);
  line(444,244,437,249);
  line(437,249,439,262);
  line(436,236,425,236);
  line(425,236,421,251);
  
  //lineas nave
  line(456,125,449,134);
  line(456,139,441,157);
  line(432,167,420,181);
  line(470,142,459,156);
  line(449,164,441,173);
  line(471,152,440,191);
  line(479,155,463,182);
  line(458,192,455,198);
  line(475,185,470,197);
  line(494,148,486,183);
  line(483,197,477,230);
  line(501,148,498,172);
  line(495,197,496,190);
  line(508,163,505,200);
  line(518,154,517,170);
  line(505,205,504,213);
