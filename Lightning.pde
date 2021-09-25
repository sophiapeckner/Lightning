PImage img;
int startX = 100;
int startY = 150;
int endX = 0;
int endY = 0;

int flashX = startX-35;
int flashY = startY;

void setup() {
  size(300, 300);
  img = loadImage("flash.png");
}

void draw() {
  drawBackground();
  drawRoad();
  
  startX = flashX;
  startY = flashY;
  
  delay(250);
  while(startX >= 0){
    endX = startX - (int)(Math.random() * 10) + 1;
    endY = startY + ((int)(Math.random() * 6) - 2);
    
    strokeWeight(2);
    stroke(0);
    line(startX+40, startY, endX+35, endY);
    line(startX+20, startY+20, endX+15, endY+20);
    line(startX+40, startY+40, endX+35, endY+40);
    line(startX+10, startY+60, endX+5, endY+60);
    line(startX, startY+90, endX, endY+90);
    
    startX = endX;
    startY = endY;
  }
  drawFlash(flashX, flashY);
}

void drawRoad() {
  stroke(0);
  rect(0,250,300,50);
}

void drawFlash(int x, int y) {
  image(img, x, y, width/3, height/3);
}

void drawBackground(){
  for (int c = 0; c <= 300; c++){
    strokeWeight(5);
    stroke(c, c, 255, 30);
    line(0, c, 300, c);
  }
}

void mousePressed(){
  flashX += 40;
}
