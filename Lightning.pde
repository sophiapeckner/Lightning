PImage img;
int startX = 100;
int startY = 150;
int endX = 0;
int endY = 0;

int flashX = startX-35;
int flashY = startY;

void setup()
{
  size(300, 300);
  img = loadImage("flash.png");
}

void draw()
{
  drawFlash(flashX, flashY);
  while(startX >= 0){
    endX = startX - (int)(Math.random() * 10) + 1;
    endY = startY + ((int)(Math.random() * 6) - 2);
    
    stroke(255, 255, 15);
    drawLine(startX, startY, endX, endY);
    
    startX = endX;
    startY = endY;
  }
}

void drawLine(int startX, int startY, int endX, int endY)
{
  for (int y = 20; y < 95; y += 20){
    line(startX, startY+y, endX, endY+y);
    //line(startX+5, startY+35, endX+5, endY+35);
    //line(startX-10, startY+50, endX-10, endY+50);
    //line(startX+5, startY+75, endX+5, endY+75);
  }
}

void drawFlash(int x, int y)
{
  image(img, x, y, width/3, height/3);
}
