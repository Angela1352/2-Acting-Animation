// Angela Chen
// 2-3
// Feb 16, 2022

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//variables -----
int counter, counter2, counter3, counter4, counter5, counter6; //glitch, background, windows, rec, clapboard, frame
int cloud;
float cameraX, cameraY, cameraS, clapboardX;
PFont font1, font2;
Minim minim;
AudioPlayer song, song2;

void setup () {
  size(800, 600, P2D);
  cameraX = 10;
  cameraY = 20;
  cameraS = 1;
  clapboardX = -1000;
  counter = 0;
  counter2 = 0;
  counter3 = 0;
  counter4 = 0;
  counter5 = 0;
  counter6 = 0;
  cloud = -800;
  font1 = createFont("font1.otf", 20);
  font2 = createFont("font2.ttf", 20);
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song2 = minim.loadFile("song2.mp3");
  song.play();
}


void draw () { //-----------------------------------
  //background
  strokeWeight(20);
  stroke(169, 121, 88);
  line(0, 450, 800, 450);
  stroke(171, 126, 92);
  line(0, 430, 800, 430);
  stroke(167, 130, 99);
  line(0, 410, 800, 410);
  stroke(166, 134, 104);
  line(0, 390, 800, 390);
  stroke(164, 140, 118);
  line(0, 370, 800, 370);
  stroke(165, 136, 110);
  line(0, 350, 800, 350);
  stroke(159, 143, 127);
  line(0, 330, 800, 330);
  stroke(153, 147, 140);
  line(0, 310, 800, 310);
  stroke(149, 148, 144);
  line(0, 290, 800, 290);
  stroke(148);
  line(0, 270, 800, 270);
  stroke(144, 148, 152);
  line(0, 250, 800, 250);
  stroke(137, 147, 157);
  line(0, 230, 800, 230);
  stroke(133, 146, 160);
  line(0, 210, 800, 210);
  stroke(132, 146, 161);
  line(0, 190, 800, 190);
  stroke(126, 144, 165);
  line(0, 170, 800, 170);
  stroke(121, 141, 163);
  line(0, 150, 800, 150);
  stroke(119, 141, 167);
  line(0, 130, 800, 130);
  stroke(114, 142, 171);
  line(0, 110, 800, 110);
  stroke(109, 140, 170);
  line(0, 90, 800, 90);
  stroke(100, 135, 173);
  line(0, 70, 800, 70);
  stroke(92, 133, 174);
  line(0, 50, 800, 50);
  stroke(85, 131, 175);
  line(0, 30, 800, 30);
  stroke(82, 130, 177);
  line(0, 10, 800, 10);
  camera(cameraX, cameraY, cameraS);
  scene2();
  clapboard(clapboardX-100, 0);
  frame();
}


void camera (float x, float y, float s) {

  //clouds
  cloud = cloud + 3;
  fill(255);
  stroke(255);
  ellipse(cloud+400, 50, 30, 50);
  ellipse(cloud+380, 65, 50, 40);
  ellipse(cloud+420, 65, 50, 40);

  ellipse(cloud-90, 60, 50, 50);
  ellipse(cloud-60, 75, 50, 40);
  ellipse(cloud-110, 75, 50, 40);

  ellipse(cloud+590, 100, 60, 60);
  ellipse(cloud+640, 100, 60, 60);
  ellipse(cloud+690, 100, 60, 60);
  ellipse(cloud+615, 80, 40, 70);
  ellipse(cloud+660, 80, 60, 80);

  if (cloud > 1000) {
    cloud = -800;
  }

  //buildings
  fill(60, 78, 84);
  stroke(0);
  strokeWeight(2);
  rect(170, 160, 140, 300);
  fill(57, 81, 89);
  rect(60, 80, 140, 450);
  fill(76, 98, 105);
  rect(0, 250, 120, 200);

  fill(192);
  strokeWeight(8);
  stroke(240);
  ellipse(450, 330, 200, 200);
  fill(179, 0, 0);
  stroke(100);
  strokeWeight(14);
  rect(340, 410, 220, 80, 30);

  fill(92, 119, 129);
  strokeWeight(2);
  stroke(0);
  rect(610, 200, 150, 300);
  rect(650, 100, 70, 60);
  rect(630, 140, 110, 80);
  stroke(92, 119, 129);
  rect(620, 202, 130, 50);
  rect(653, 104, 65, 55);

  //windows
  counter3 = counter3 + 1;

  if (counter3 < 50) {
    fill(0);
    stroke(0);
    strokeWeight(2);
    rect(85, 100, 30, 20, 2);
    rect(85, 140, 30, 20, 2);
    rect(85, 180, 30, 20, 2);
    rect(85, 220, 30, 20, 2);
    rect(145, 100, 30, 20, 2);
    rect(145, 140, 30, 20, 2);
    rect(145, 180, 30, 20, 2);
    rect(145, 220, 30, 20, 2);
    rect(145, 260, 30, 20, 2);
    rect(145, 300, 30, 20, 2);
    rect(145, 340, 30, 20, 2);
    rect(145, 380, 30, 20, 2);
    rect(145, 420, 30, 20, 2);
    rect(145, 460, 30, 20, 2);
    rect(145, 500, 30, 20, 2);

    rect(15, 270, 15, 15);
    rect(15, 310, 15, 15);
    rect(15, 350, 15, 15);
    rect(15, 390, 15, 15);
    rect(15, 430, 15, 15);
    rect(15, 470, 15, 15);
    rect(50, 270, 15, 15);
    rect(50, 310, 15, 15);
    rect(50, 350, 15, 15);
    rect(50, 390, 15, 15);
    rect(50, 430, 15, 15);
    rect(50, 470, 15, 15);
    rect(85, 270, 15, 15);
    rect(85, 310, 15, 15);
    rect(85, 350, 15, 15);
    rect(85, 390, 15, 15);
    rect(85, 430, 15, 15);
    rect(85, 470, 15, 15);

    rect(220, 180, 25, 40, 20, 20, 0, 0);
    rect(220, 240, 25, 40, 20, 20, 0, 0);
    rect(220, 300, 25, 40, 20, 20, 0, 0);
    rect(220, 360, 25, 40, 20, 20, 0, 0);
    rect(220, 420, 25, 40, 20, 20, 0, 0);
    rect(270, 180, 25, 40, 20, 20, 0, 0);
    rect(270, 240, 25, 40, 20, 20, 0, 0);
    rect(270, 300, 25, 40, 20, 20, 0, 0);
    rect(270, 360, 25, 40, 20, 20, 0, 0);
    rect(270, 420, 25, 40, 20, 20, 0, 0);

    rect(660, 110, 50, 3);
    rect(660, 120, 50, 3);
    rect(660, 130, 50, 3);
    rect(650, 150, 25, 40, 20, 20, 0, 0);
    rect(695, 150, 25, 40, 20, 20, 0, 0);
    rect(630, 210, 40, 30, 2);
    rect(630, 260, 40, 30, 2);
    rect(630, 310, 40, 30, 2);
    rect(630, 360, 40, 30, 2);
    rect(630, 410, 40, 30, 2);
    rect(700, 210, 40, 30, 2);
    rect(700, 260, 40, 30, 2);
    rect(700, 310, 40, 30, 2);
    rect(700, 360, 40, 30, 2);
    rect(700, 410, 40, 30, 2);
  }

  if (counter3 > 50) {
    fill(255, 255, 143);
    stroke(255, 255, 143);
    rect(85, 100, 30, 20, 2);
    rect(85, 140, 30, 20, 2);
    rect(85, 180, 30, 20, 2);
    rect(85, 220, 30, 20, 2);
    rect(145, 100, 30, 20, 2);
    rect(145, 140, 30, 20, 2);
    rect(145, 180, 30, 20, 2);
    rect(145, 220, 30, 20, 2);
    rect(145, 260, 30, 20, 2);
    rect(145, 300, 30, 20, 2);
    rect(145, 340, 30, 20, 2);
    rect(145, 380, 30, 20, 2);
    rect(145, 420, 30, 20, 2);
    rect(145, 460, 30, 20, 2);
    rect(145, 500, 30, 20, 2);

    rect(15, 270, 15, 15);
    rect(15, 310, 15, 15);
    rect(15, 350, 15, 15);
    rect(15, 390, 15, 15);
    rect(15, 430, 15, 15);
    rect(15, 470, 15, 15);
    rect(50, 270, 15, 15);
    rect(50, 310, 15, 15);
    rect(50, 350, 15, 15);
    rect(50, 390, 15, 15);
    rect(50, 430, 15, 15);
    rect(50, 470, 15, 15);
    rect(85, 270, 15, 15);
    rect(85, 310, 15, 15);
    rect(85, 350, 15, 15);
    rect(85, 390, 15, 15);
    rect(85, 430, 15, 15);
    rect(85, 470, 15, 15);

    rect(220, 180, 25, 40, 20, 20, 0, 0);
    rect(220, 240, 25, 40, 20, 20, 0, 0);
    rect(220, 300, 25, 40, 20, 20, 0, 0);
    rect(220, 360, 25, 40, 20, 20, 0, 0);
    rect(220, 420, 25, 40, 20, 20, 0, 0);
    rect(270, 180, 25, 40, 20, 20, 0, 0);
    rect(270, 240, 25, 40, 20, 20, 0, 0);
    rect(270, 300, 25, 40, 20, 20, 0, 0);
    rect(270, 360, 25, 40, 20, 20, 0, 0);
    rect(270, 420, 25, 40, 20, 20, 0, 0);

    rect(660, 110, 50, 3);
    rect(660, 120, 50, 3);
    rect(660, 130, 50, 3);
    rect(650, 150, 25, 40, 20, 20, 0, 0);
    rect(695, 150, 25, 40, 20, 20, 0, 0);
    rect(630, 210, 40, 30, 2);
    rect(630, 260, 40, 30, 2);
    rect(630, 310, 40, 30, 2);
    rect(630, 360, 40, 30, 2);
    rect(630, 410, 40, 30, 2);
    rect(700, 210, 40, 30, 2);
    rect(700, 260, 40, 30, 2);
    rect(700, 310, 40, 30, 2);
    rect(700, 360, 40, 30, 2);
    rect(700, 410, 40, 30, 2);
  }

  if (counter3 == 100) {
    counter3 = 0;
  }

  //road
  fill(100);
  stroke(100);
  rect(0, 450, 800, 150);
  fill(80);
  stroke(0);
  rect(0, 450, 800, 24);
  fill(255);
  stroke(255);
  rect(0, 525, 80, 12);
  rect(175, 525, 100, 12);
  rect(350, 525, 100, 12);
  rect(525, 525, 100, 12);
  rect(700, 525, 100, 12);

  pushMatrix();
  translate(x, y);
  scale(s);

  //camera base
  fill(25);
  stroke(0);
  strokeWeight(2);
  rect(100, 125, 600, 400, 50, 50, 30, 30);
  rect(260, 50, 200, 130, 150, 150, 10, 10);
  rect(120, 100, 100, 30, 100);
  rect(550, 107, 100, 20, 5);
  fill(#d62d20);
  rect(565, 90, 70, 25, 2);

  //camera scope
  fill(35);
  rect(270, 60, 180, 110, 150, 150, 10, 10);
  fill(#0a0f18);
  stroke(#0a0f18);
  rect(290, 90, 140, 90, 10);
  fill(0);
  rect(315, 108, 90, 65, 10);
  fill(163);
  rect(323, 114, 75, 50, 10);

  //camera buttons
  fill(0);
  stroke(80);
  rect(130, 145, 50, 60, 10);
  rect(190, 145, 50, 60, 10);
  ellipse(500, 160, 30, 30);
  ellipse(590, 150, 25, 25);
  ellipse(630, 155, 20, 20);
  ellipse(665, 165, 20, 20);

  //camera details
  ellipse(590, 400, 120, 120);
  ellipse(590, 400, 90, 90);
  fill(255);
  stroke(255);
  strokeWeight(4);
  ellipse(155, 165, 23, 23);
  line(155, 170, 165, 190);
  ellipse(215, 165, 23, 23);
  line(215, 170, 225, 190);
  fill(0);
  ellipse(155, 165, 23, 23);
  ellipse(215, 165, 23, 23);
  fill(255);
  line(149, 164, 159, 164);
  line(155, 160, 155, 170);
  line(209, 164, 219, 164);
  fill(120);
  stroke(0);
  rect(528, 290, 170, 25, 10, 0, 0, 10);
  rect(548, 250, 150, 25, 10, 0, 0, 10);
  rect(568, 210, 130, 25, 10, 0, 0, 10);

  //camera screen
  fill(0);
  stroke(0);
  strokeWeight(2);
  rect(140, 220, 360, 200, 10, 10, 0, 0);
  fill(#151E3D);
  rect(140, 420, 360, 60, 0, 0, 10, 10);
  fill(255);
  rect(150, 230, 340, 240, 10);

  counter = counter + 1;

  if (counter < 8) {
    fill(50);
    rect(150, 230, 340, 240, 10);
  }

  if (counter > 8) {
    fill(100);
    rect(150, 230, 340, 240, 10);
  }

  if (counter > 16) {
    fill(200);
    rect(150, 230, 340, 240, 10);
  }

  if (counter == 24) {
    counter = 0;
  }

  counter = counter + 1;
  strokeWeight(0);

  if (counter < 3) {
    fill(5, 9, 83);
    rect(150, 230, 40, 100);
  }

  if (counter > 3) {
    fill(9, 83, 5);
    rect(250, 230, 240, 40);
  }

  if (counter > 9) {
    fill(2, 24, 1);
    rect(150, 340, 140, 60);
  }

  if (counter > 12) {
    fill(0, 4, 0);
    rect(150, 340, 140, 60, 10);
  }

  if (counter > 15) {
    fill(56, 67, 83);
    rect(300, 240, 100, 60);
  }

  if (counter > 18) {
    fill(4, 7, 65);
    rect(190, 420, 100, 20);
  }

  if (counter > 21) {
    fill(6, 10, 93);
    rect(300, 340, 60, 100);
  }

  if (counter > 18) {
    fill(230);
    rect(340, 300, 30, 80);
  }

  if (counter > 20) {
    fill(2, 56, 12);
    rect(440, 340, 40, 90);
  }

  if (counter > 15) {
    fill(3, 71, 16);
    rect(230, 320, 60, 150);
  }

  if (counter == 24) {
    counter = 0;
  }

  popMatrix();

  cameraX = cameraX - 3.2;
  cameraY = cameraY - 4.8;
  cameraS = cameraS + 0.012;
}


void scene2 () {

  counter2 = counter2 + 1;

  if (counter2 > 125) {

    //background
    strokeWeight(20);
    stroke(169, 121, 88);
    line(0, 590, 800, 590);
    stroke(171, 126, 92);
    line(0, 570, 800, 570);
    stroke(167, 130, 99);
    line(0, 550, 800, 550);
    stroke(166, 134, 104);
    line(0, 530, 800, 530);
    stroke(164, 140, 118);
    line(0, 510, 800, 510);
    stroke(165, 136, 110);
    line(0, 490, 800, 490);
    stroke(159, 143, 127);
    line(0, 470, 800, 470);
    stroke(153, 147, 140);
    line(0, 450, 800, 450);
    stroke(149, 148, 144);
    line(0, 430, 800, 430);
    stroke(148);
    line(0, 410, 800, 410);
    stroke(144, 148, 152);
    line(0, 390, 800, 390);
    stroke(137, 147, 157);
    line(0, 370, 800, 370);
    stroke(133, 146, 160);
    line(0, 350, 800, 350);
    stroke(132, 146, 161);
    line(0, 330, 800, 330);
    stroke(126, 144, 165);
    line(0, 310, 800, 310);
    stroke(121, 141, 163);
    line(0, 290, 800, 290);
    stroke(119, 141, 167);
    line(0, 270, 800, 270);
    stroke(114, 142, 171);
    line(0, 250, 800, 250);
    stroke(109, 140, 170);
    line(0, 230, 800, 230);
    stroke(100, 135, 173);
    line(0, 210, 800, 210);
    stroke(92, 133, 174);
    line(0, 190, 800, 190);
    stroke(85, 131, 175);
    line(0, 170, 800, 170);
    stroke(82, 130, 177);
    line(0, 150, 800, 150);
    stroke(72, 125, 179);
    line(0, 130, 800, 130);
    stroke(62, 122, 182);
    line(0, 110, 800, 110);
    stroke(53, 119, 182);
    line(0, 90, 800, 90);
    stroke(49, 115, 178);
    line(0, 70, 800, 70);
    stroke(46, 113, 178);
    line(0, 50, 800, 50);
    stroke(42, 105, 171);
    line(0, 30, 800, 30);
    stroke(39, 100, 167);
    line(0, 10, 800, 10);
    stroke(38, 97, 166);
    line(0, 0, 800, 0);

    //clouds
    cloud = cloud + 3;
    fill(255);
    stroke(255);
    ellipse(cloud+400, 50, 30, 50);
    ellipse(cloud+380, 65, 50, 40);
    ellipse(cloud+420, 65, 50, 40);

    ellipse(cloud-90, 60, 50, 50);
    ellipse(cloud-60, 75, 50, 40);
    ellipse(cloud-110, 75, 50, 40);

    ellipse(cloud+590, 100, 60, 60);
    ellipse(cloud+640, 100, 60, 60);
    ellipse(cloud+690, 100, 60, 60);
    ellipse(cloud+615, 80, 40, 70);
    ellipse(cloud+660, 80, 60, 80);

    if (cloud > 1000) {
      cloud = -800;
    }

    //buildings
    fill(60, 78, 84);
    stroke(0);
    strokeWeight(2);
    rect(170, 160, 140, 300);
    fill(57, 81, 89);
    rect(60, 80, 140, 450);
    fill(76, 98, 105);
    rect(0, 250, 120, 200);

    fill(192);
    strokeWeight(8);
    stroke(240);
    ellipse(450, 330, 200, 200);
    fill(179, 0, 0);
    stroke(100);
    strokeWeight(14);
    rect(340, 410, 220, 80, 30);

    fill(92, 119, 129);
    strokeWeight(2);
    stroke(0);
    rect(610, 200, 150, 300);
    rect(650, 100, 70, 60);
    rect(630, 140, 110, 80);
    stroke(92, 119, 129);
    rect(620, 202, 130, 50);
    rect(653, 104, 65, 55);

    //windows
    counter3 = counter3 + 1;

    if (counter3 < 50) {
      fill(0);
      stroke(0);
      strokeWeight(2);
      rect(85, 100, 30, 20, 2);
      rect(85, 140, 30, 20, 2);
      rect(85, 180, 30, 20, 2);
      rect(85, 220, 30, 20, 2);
      rect(145, 100, 30, 20, 2);
      rect(145, 140, 30, 20, 2);
      rect(145, 180, 30, 20, 2);
      rect(145, 220, 30, 20, 2);
      rect(145, 260, 30, 20, 2);
      rect(145, 300, 30, 20, 2);
      rect(145, 340, 30, 20, 2);
      rect(145, 380, 30, 20, 2);
      rect(145, 420, 30, 20, 2);
      rect(145, 460, 30, 20, 2);
      rect(145, 500, 30, 20, 2);

      rect(15, 270, 15, 15);
      rect(15, 310, 15, 15);
      rect(15, 350, 15, 15);
      rect(15, 390, 15, 15);
      rect(15, 430, 15, 15);
      rect(15, 470, 15, 15);
      rect(50, 270, 15, 15);
      rect(50, 310, 15, 15);
      rect(50, 350, 15, 15);
      rect(50, 390, 15, 15);
      rect(50, 430, 15, 15);
      rect(50, 470, 15, 15);
      rect(85, 270, 15, 15);
      rect(85, 310, 15, 15);
      rect(85, 350, 15, 15);
      rect(85, 390, 15, 15);
      rect(85, 430, 15, 15);
      rect(85, 470, 15, 15);

      rect(220, 180, 25, 40, 20, 20, 0, 0);
      rect(220, 240, 25, 40, 20, 20, 0, 0);
      rect(220, 300, 25, 40, 20, 20, 0, 0);
      rect(220, 360, 25, 40, 20, 20, 0, 0);
      rect(220, 420, 25, 40, 20, 20, 0, 0);
      rect(270, 180, 25, 40, 20, 20, 0, 0);
      rect(270, 240, 25, 40, 20, 20, 0, 0);
      rect(270, 300, 25, 40, 20, 20, 0, 0);
      rect(270, 360, 25, 40, 20, 20, 0, 0);
      rect(270, 420, 25, 40, 20, 20, 0, 0);

      rect(660, 110, 50, 3);
      rect(660, 120, 50, 3);
      rect(660, 130, 50, 3);
      rect(650, 150, 25, 40, 20, 20, 0, 0);
      rect(695, 150, 25, 40, 20, 20, 0, 0);
      rect(630, 210, 40, 30, 2);
      rect(630, 260, 40, 30, 2);
      rect(630, 310, 40, 30, 2);
      rect(630, 360, 40, 30, 2);
      rect(630, 410, 40, 30, 2);
      rect(700, 210, 40, 30, 2);
      rect(700, 260, 40, 30, 2);
      rect(700, 310, 40, 30, 2);
      rect(700, 360, 40, 30, 2);
      rect(700, 410, 40, 30, 2);
    }

    if (counter3 > 50) {
      fill(255, 255, 143);
      stroke(255, 255, 143);
      rect(85, 100, 30, 20, 2);
      rect(85, 140, 30, 20, 2);
      rect(85, 180, 30, 20, 2);
      rect(85, 220, 30, 20, 2);
      rect(145, 100, 30, 20, 2);
      rect(145, 140, 30, 20, 2);
      rect(145, 180, 30, 20, 2);
      rect(145, 220, 30, 20, 2);
      rect(145, 260, 30, 20, 2);
      rect(145, 300, 30, 20, 2);
      rect(145, 340, 30, 20, 2);
      rect(145, 380, 30, 20, 2);
      rect(145, 420, 30, 20, 2);
      rect(145, 460, 30, 20, 2);
      rect(145, 500, 30, 20, 2);

      rect(15, 270, 15, 15);
      rect(15, 310, 15, 15);
      rect(15, 350, 15, 15);
      rect(15, 390, 15, 15);
      rect(15, 430, 15, 15);
      rect(15, 470, 15, 15);
      rect(50, 270, 15, 15);
      rect(50, 310, 15, 15);
      rect(50, 350, 15, 15);
      rect(50, 390, 15, 15);
      rect(50, 430, 15, 15);
      rect(50, 470, 15, 15);
      rect(85, 270, 15, 15);
      rect(85, 310, 15, 15);
      rect(85, 350, 15, 15);
      rect(85, 390, 15, 15);
      rect(85, 430, 15, 15);
      rect(85, 470, 15, 15);

      rect(220, 180, 25, 40, 20, 20, 0, 0);
      rect(220, 240, 25, 40, 20, 20, 0, 0);
      rect(220, 300, 25, 40, 20, 20, 0, 0);
      rect(220, 360, 25, 40, 20, 20, 0, 0);
      rect(220, 420, 25, 40, 20, 20, 0, 0);
      rect(270, 180, 25, 40, 20, 20, 0, 0);
      rect(270, 240, 25, 40, 20, 20, 0, 0);
      rect(270, 300, 25, 40, 20, 20, 0, 0);
      rect(270, 360, 25, 40, 20, 20, 0, 0);
      rect(270, 420, 25, 40, 20, 20, 0, 0);

      rect(660, 110, 50, 3);
      rect(660, 120, 50, 3);
      rect(660, 130, 50, 3);
      rect(650, 150, 25, 40, 20, 20, 0, 0);
      rect(695, 150, 25, 40, 20, 20, 0, 0);
      rect(630, 210, 40, 30, 2);
      rect(630, 260, 40, 30, 2);
      rect(630, 310, 40, 30, 2);
      rect(630, 360, 40, 30, 2);
      rect(630, 410, 40, 30, 2);
      rect(700, 210, 40, 30, 2);
      rect(700, 260, 40, 30, 2);
      rect(700, 310, 40, 30, 2);
      rect(700, 360, 40, 30, 2);
      rect(700, 410, 40, 30, 2);
    }

    if (counter3 == 100) {
      counter3 = 0;
    }

    //road
    fill(100);
    stroke(100);
    rect(0, 450, 800, 150);
    fill(80);
    stroke(0);
    rect(0, 450, 800, 24);
    fill(255);
    stroke(255);
    rect(0, 525, 80, 12);
    rect(175, 525, 100, 12);
    rect(350, 525, 100, 12);
    rect(525, 525, 100, 12);
    rect(700, 525, 100, 12);

    //frame
    stroke(220);
    strokeWeight(5);
    line(30, 20, 140, 20);
    line(30, 20, 30, 100);
    line(770, 20, 660, 20);
    line(770, 20, 770, 100);
    line(30, 580, 140, 580);
    line(30, 580, 30, 500);
    line(770, 580, 660, 580);
    line(770, 580, 770, 500);

    line(380, 250, 340, 250);
    line(420, 250, 460, 250);
    line(380, 350, 340, 350);
    line(420, 350, 460, 350);
    line(340, 250, 340, 285);
    line(460, 250, 460, 285);
    line(460, 350, 460, 315);
    line(340, 350, 340, 315);

    stroke(255, 0, 0);
    line(380, 300, 420, 300);
    line(400, 280, 400, 320);

    counter4 = counter4 + 1;

    if (counter4 < 8) {
      fill(255, 0, 0);
      ellipse(60, 50, 20, 20);
    }

    if (counter4 > 8) {
    }

    if (counter4 == 16) {
      counter4 = 0;
    }

    textAlign(CENTER, CENTER);
    textFont(font1);
    textSize(25);
    fill(255, 0, 0);
    text("REC", 100, 45);
  }
}

void frame () {

  counter6 = counter6 + 1;
  if (counter6 < 100) { 
  }
  if (counter6 > 100) {
    strokeWeight(5);
    line(380, 250, 340, 250);
    line(420, 250, 460, 250);
    line(380, 350, 340, 350);
    line(420, 350, 460, 350);
    line(340, 250, 340, 285);
    line(460, 250, 460, 285);
    line(460, 350, 460, 315);
    line(340, 350, 340, 315);

    stroke(255, 0, 0);
    line(380, 300, 420, 300);
    line(400, 280, 400, 320);
  }

  if (counter6 > 100) {
    counter6 = 100;
  }
}

void clapboard (float x, float y) {

  counter5 = counter5 + 1;
  //pushMatrix();
  translate(x, y);

  if (counter5 > 120) {
    clapboardX = clapboardX + 40;

    //arm
    fill(176, 224, 230);
    stroke(176, 224, 230);
    rect(-150, 320, 400, 80);

    //clapboard
    fill(0);
    stroke(0);
    rect(230, 240, 350, 250, 0, 0, 20, 20);
    pushMatrix();
    rotate(-0.5);
    rect(85, 300, 350, 35);
    fill(255);
    stroke(255);
    rect(150, 300, 40, 35);
    rect(250, 300, 40, 35);
    rect(350, 300, 40, 35);
    popMatrix();
    rect(300, 240, 40, 35);
    rect(400, 240, 40, 35);
    rect(500, 240, 40, 35);
    strokeWeight(3);
    line(235, 335, 575, 335);
    line(235, 390, 575, 390);
    line(450, 390, 450, 450);
    line(235, 420, 450, 420);
    line(235, 450, 575, 450);
    line(235, 475, 575, 475);
    line(350, 335, 350, 390);
    line(470, 335, 470, 390);

    //text
    textSize(15);
    fill(255);

    text("PROD. NO.", 285, 320);
    text("SCENE", 290, 345);
    text("TAKE", 415, 345);
    text("ROLL", 530, 345);
    text("DATE", 265, 405);
    text("PROD. CO.", 284, 462);
    text("DIRECTOR", 283, 435);
    text("SOUND", 515, 400);

    textFont(font2);
    textSize(26);
    text("Personal Animation", 432, 310);
    text("06/12/06", 360, 405);
    text("4", 295, 370);
    text("2", 420, 370);
    text("5", 530, 370);
    textSize(23);
    text("Angela", 360, 435);
    text("Lord Byng Secondary", 430, 459);
    //popMatrix();

    if (clapboardX > 80) {
      clapboardX = 80;
      song2.play();
    }
  }
}
