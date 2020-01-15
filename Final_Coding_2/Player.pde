class Player extends Entity
{

  PVector moveBorderX;
  PVector moveBorderY;
  
  Player()
  {
   
    Pos = new PVector(400,400);
    
    R=255;
    G=255;
    B=255;
    
    h=20;
    w=20;
    
    speed=1;
    
    PVector moveBorderX = new PVector(5,0);
    PVector moveBorderY = new PVector(0,5);
    
    
  }
  
  
  void Update()
  {
    fill(R,G,B);
    ellipse(Pos.x, Pos.y, w,h);
    
    if (up)
  {
    Pos.add(0, -speed);
  }

  if (down)
  {
    Pos.add(0, speed);
  }

  if (right)
  {
    Pos.add(speed, 0);
  }

  if (left)
  {
    Pos.add(-speed, 0);
  }
    
    
    if (CheckCollision(300, 250, 200, 20))
    {
      speed=0.7;
    }
    else if (CheckCollision(300, 530, 200, 20))
    {
      speed=0.7;
    }
    else if (CheckCollision(250, 300, 20, 200))
    {
      speed=0.7;
    }
    else if (CheckCollision(530, 300, 20, 200))
    {
      speed=0.7;
    }
    else
    {
      speed=1;
    }
    
    if(Pos.x>800)
    {
      Pos.x-=5;
    }
    
    if(Pos.x<0)
    {
      Pos.x+=5;
      
    }
    
    if(Pos.y>800)
    {
      Pos.y-=5;
    }
    
    if(Pos.y<0)
    {
      Pos.y+=5;
      
    }
    
  }
  
  boolean CheckCollision(float objectx, float objecty, float objectw, float objecth)
    {
      if (Pos.x>objectx)
      {
        if (Pos.x<objectx+objectw)
        {
          if (Pos.y>objecty)
          {
            if (Pos.y<objecty+objecth)
            {
              return true;
            }
          }
        }
      }



      return false;
    }
  
  
}