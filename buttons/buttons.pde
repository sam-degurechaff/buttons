color black=#000000;
color white=#ffffff;
color brown=#bc6c25;
color lbrown=#dd1a5e;
color cream=#fefae0;
color dgreen=#283618;
color green =#606c38;
color bkg =cream;

void setup() {
  size(800, 600);
  strokeWeight(8);
}
void draw() {
  background(bkg);
  fill(brown);
  if (touchingRect(100, 100, 200, 100)) {
    fill(white);
  } else {
    fill (brown);
  }
  rect(100, 100, 200, 100);
  fill(green);
  if ( touchingCircle(400, 150, 100)) {
    fill(white);
  } else {
    fill(green);
  }
  circle(400, 150, 100);
}
void mousePressed() {
  if (mouseX>100&&mouseX<300&&mouseY>100&&mouseY<200) {
    bkg=brown;
  }
  if (dist(400, 150, mouseX, mouseY)<100) {
    bkg=green;
    ;
  }
}

void rect(int x, int y, int w, int h, color f) {
  boolean touchingRect(int x, int y, int w, int h) {
    if(mouse
    if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
      return true;
    } else {
      return false;
    }
  }
}

boolean touchingCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    return true;
  } else {
    return false;
  }
}
