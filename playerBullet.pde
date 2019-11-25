class playerBullet extends bullet
{
  
  playerBullet()
  {
    bulletPos = new PVector(400,400);
    dir=new PVector(1,0);
    speed = 3;
    bulletW = 5;
    
    
    
  }
  
  
  
  playerBullet(float _mouseX, float _mouseY, float playerX, float playerY )
  {
    PVector mouse = new PVector(_mouseX, _mouseY);
    bulletPos = new PVector(playerX, playerY);
    speed=3;
    bulletW = 10;

    dir=mouse.sub(bulletPos);
    dir.normalize();
    dir.
    mult(speed);
  }
  
  void Update()
  {
    fill(0, 255, 0);
    ellipse(bulletPos.x, bulletPos.y, bulletW, bulletW);
    fill(0);
    bulletPos.add(dir);
  }
  
  
  
  
  
  
  
  
}