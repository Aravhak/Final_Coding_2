class Enemy extends Entity
{

  PVector enemyStart;
  int randSide;
  boolean kill;

  Enemy()
  {

    R=255;
    G=0;
    B=0;

    kill=false;
    speed=1;

    randSide = (int)random(0, 3);


    if (randSide == 0)// top
    {
      enemyStart = new PVector(random(0, width), 0);
    }

    if (randSide == 1)// bottom
    {
      enemyStart = new PVector(random(0, width), 800);
    }

    if (randSide == 2)//left
    {
      enemyStart = new PVector(0, random(0, width));
    }

    if (randSide == 3)//left
    {
      enemyStart = new PVector(800, random(0, width));
    }

    Pos = new PVector(enemyStart.x, enemyStart.y);
  }




  void Update()
  {
    fill(R, G, B);
    ellipse(Pos.x, Pos.y, 20, 20);

    PVector dir = p.Pos.copy().sub(Pos);
    dir.normalize();
    
    
    
    if (CheckCollision(300, 250, 200, 20))
    {
      speed=0.5;
    }
    else if (CheckCollision(300, 530, 200, 20))
    {
      speed=0.5;
    }
    else if (CheckCollision(250, 300, 20, 200))
    {
      speed=0.5;
    }
    else if (CheckCollision(530, 300, 20, 200))
    {
      speed=0.5;
    }
    else
    {
      speed=1;
    }
    
    
    dir.mult(speed);
    Pos.add(dir);

    
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