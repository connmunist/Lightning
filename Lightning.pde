int startX = 150;
int startY = 0;
int endX=150;
int endY=0;
PImage img;

void setup()
{
  img = loadImage("jp2.png");
  frameRate(6);
  size(300,300);
  strokeWeight(6);
  background(102);
  //noLoop();

}

void draw(){
   image(img,0,0);
    while (endY < 300){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endX = startX + ((int)(Math.random()*18)-9);
    endY = startY + ((int)(Math.random()*9));
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
    }
}

void mousePressed()
{
 startX = 150;
 startY = 0;
 endX = 150;
 endY = 0;
  redraw();
}
