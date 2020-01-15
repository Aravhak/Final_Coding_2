class Entity
{
  
  PVector Pos;
  
  int w;
  int h;
  
  int R;
  int G;
  int B;
  
  PVector dir;
 
 float speed;
  
  
  
  Entity()
  {
    
   Pos = new PVector(0,0);
   
   w = 10;
   h = 10;
   
   R = 0;
   G = 0;
   B = 0;
   
   dir=new PVector(1,0);
    
    speed=1;
    
  }
  
  
 
  
  
}