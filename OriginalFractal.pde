int lim = 400;
public void myFractal(int x, int y, int siz) {
  rect(x, y, siz, siz);
  if(siz > lim) {
    myFractal(x+siz/2, y, siz/2);
    myFractal(x-siz/2, y, siz/2);
  }
}
public void mouseDragged() {
  if(mouseX > 1) {
    lim = mouseX;
  }
}
public void setup () {
  size(500, 500);
  rectMode(CENTER);
} 
public void draw () {
  background(0);
  myFractal(250, 250, 200);
}
