class bullet
{
  
  PVector bulletPos;
  PVector dir;
  float speed;
  int bulletW;
  boolean kill;
  
  bullet()
  {
    bulletPos = new PVector(400,400);
    dir=new PVector(1,0);
    speed = 3;
    bulletW = 5;
    kill=false;
    
  }
  
  
  
  boolean CheckCollision(float objectx, float objecty, float objectw, float objecth)
  {
    if(bulletPos.x>objectx)
    {
      if(bulletPos.x<objectx+objectw)
      {
        if(bulletPos.y>objecty)
        {
          if(bulletPos.y<objecty+objecth)
          {
            return true;
           
          }
        }
      }
      
    }
    
    
    
    return false;
  }
  
  
  
  
  
}