Snowflake meredith;
void setup()
{
  size(500,500);
  meredith= new Snowflake();
}
void draw()
{
  meredith.erase();
  meredith.lookDown();
  meredith.move();
  meredith.wrap();
  meredith.show();
  
}
void mouseDragged()
{
  stroke(0);
  strokeWeight(3);
  line(pmouseX, pmouseX, mouseX, mouseY);
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;
  Snowflake()
  {
    x=(int)(Math.random()*501);
    y=(int)(Math.random()*501);
    isMoving=true;
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    if (y>=0 && y<=500 && get(x,y+4) !=color(0))
    isMoving=false;

      
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    if (isMoving==true)
    y++;

  }
  void wrap()
  {
    if (y>=500)
    y=0;
    x=(int)(Math.random()*501);
  }
}


