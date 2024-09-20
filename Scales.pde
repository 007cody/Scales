void setup() {
  size(540, 540);
}

void draw() {

  for (int y= 0; y<1000; y+=60) {

    for (int x = 20; x < 1000; x +=60) {

      scales(x, y);
    }
  }
  for (int y= -20; y<1000; y+=60) {

    for (int x = 0; x < 1000; x +=60) {
      scales(x, y);
    }
  }
  
}


void scales(int x, int y) {

  //hexagons
  fill(x*0.5, y*0.5, x+y);
  beginShape();
  vertex(x, y);
  vertex(x+20, y);
  vertex(x+40, y+20);
  vertex(x+40, y+40);
  vertex(x+20, y+60);
  vertex(x, y+60);
  vertex(x-20, y+40);
  vertex(x-20, y+20);
  vertex(x, y);
  endShape(CLOSE);
  
   stroke(x*0.5, y*0.5, x+y);
   arc(x,y,230,230,radians(30),radians(150));
}
