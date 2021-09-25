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
  drawBackground();
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
  strokeWeight(3);
  for (int y = 20; y < 95; y += 20){
    line(startX, startY+y, endX, endY+y);
  }
}

void drawFlash(int x, int y)
{
  image(img, x, y, width/3, height/3);
}

void drawBackground()
{
  for (int c = 0; c <= 300; c+=1){
    strokeWeight(40);
    if (Math.random() < .8){
      stroke(c-150, c-40, 255, 60);  
    }
    else {
      stroke(255, 255, 255);
    }
    
    line(0, c, 300, c);
    
    //line(0, c, 300, c);
    }
    //if (Math.random() < .5){
    //  stroke(52, c, 235);
    //  line(0, c, 300, c);
    //}
    //else {
    //  stroke(200, c, 255);
    //  line(0, c, 300, c);
    //}
}
