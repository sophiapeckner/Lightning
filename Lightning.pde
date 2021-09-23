PImage img;
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  img = loadImage("flash.png");
}

void draw()
{
  drawFlash(0, 0);
}

void drawFlash(int x, int y)
{
  image(img, x, y, width/3, height/3);
  
  stroke(0);
  while(endX < 150){
    endX = startX + (int)(Math.random() * 10);
    endY = startY + ((int)(Math.random() * 19) - 9);
    startX = endX;
    startY = endY;
    print("here");
    line(startX, startY, endX, endY);
  }
}
  
//void flash(int x, int y, float sx, float sy)
//{

//  pushMatrix();
//  pushStyle();
//  translate(x,y);
//  scale(sx,sy);
//  beginShape();
//  curveVertex(-93,29); curveVertex(-102,65); curveVertex(-124,33); curveVertex(-130,10); curveVertex(-94,-34); curveVertex(-84,-67); curveVertex(-51,-99); curveVertex(-68,-122); curveVertex(-88,-132); curveVertex(-123,-119); curveVertex(-136,-139); curveVertex(-85,-156); curveVertex(-24,-126); curveVertex(-26,-155); curveVertex(-12,-184); curveVertex(22,-195); curveVertex(55,-189); curveVertex(75,-166); curveVertex(75,-141); curveVertex(57,-122); curveVertex(39,-116); curveVertex(79,-100); curveVertex(109,-119); curveVertex(128,-103); curveVertex(106,-83); curveVertex(79,-74); curveVertex(27,-91); curveVertex(3,-72); curveVertex(-15,-49); curveVertex(35,-45); curveVertex(34,-2); curveVertex(52,25); curveVertex(8,24); curveVertex(7,-13); curveVertex(-41,-17); curveVertex(-68,-4); curveVertex(-93,29); curveVertex(-102,65); curveVertex(-124,33);
//  endShape();
//  popStyle();
//  popMatrix();
//}
