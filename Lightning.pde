double startX = 0.0;
double startY = 0.0;
double endX = 0.0;
double endY = 0.0;
double xDirection = 1;
double yDirection = 1;

void setup()
{
  size(300,300);
  background(255);
  strokeWeight(2);
}
void draw()
{
  if(startX < width && startX > 0 && startY < height && startY > 0){
    fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    line((float)startX, (float)startY, (float)endX, (float)endY);
    startX = endX;
    startY = endY;
    endX += (((int)(Math.random() * 21) - 17) * xDirection);
    endY += (((int)(Math.random() * 21) - 17) * yDirection);
  }
    
}
void mousePressed()
{
    startX = (width / 2);
    startY = (height / 2);
    endX = (startX);
    endY = (startY);
    /*if(Math.random() < 0.5){
      xDirection = -1;
    }else{
      xDirection = 1;
    if(Math.random() < 0.5){
      yDirection = -1;
    }else{
      yDirection = 1;
    }*/
    xDirection = Math.random() - 0.5;
    yDirection = Math.random() - 0.5;
    System.out.println((float)startX + ", "  + (float)startY);
    
}
