Snowflake [] meredith;

void setup()
{ background(0);
  size(300,300);
  meredith= new Snowflake[150];
  for (int i =0; i<150;i++)
  {
    meredith[i]= new Snowflake();
  }
  // fill(100);
  // rect(250,400,150,100);
}
void draw()
{ for (int i =0; i<150;i++) {
  meredith[i].erase();
  meredith[i].lookDown();
  meredith[i].move();
  meredith[i].wrap();
  meredith[i].show();
  frameRate(20);
}
  
}
void mouseDragged()
{
  stroke(255);
  strokeWeight(5);
  line(pmouseX, pmouseY, mouseX, mouseY);
  strokeWeight(1);
  stroke(0);
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;
  boolean onTop;
  Snowflake()
  {
    x=(int)(Math.random()*301);
    y=(int)((Math.random()*1)-300);
    
    if (onTop==true) {
      y=0;
    }
    else {
  
    y=(int)(Math.random()*301);
    }
   
    isMoving=true;
  }
   void erase()
  {
    fill(0);
    ellipse(x,y,8,8);
  }
  void move()
  {
    if (isMoving==true){
      y++;
    }
    
  }
   void lookDown()
  {
    if (y>=0 && y<=290 && get(x,y+7) !=color(0))
    isMoving=false;
  else {
    isMoving=true;
  }
    
      
  }
  void show()
  { 
    fill(255);
    ellipse(x,y,5,5);
  }
  void wrap()
  {
    if (y>=300) {
      y=0;
      x=(int)(Math.random()*301);
    }
  }

}


