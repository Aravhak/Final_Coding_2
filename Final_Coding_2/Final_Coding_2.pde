//PVector playerPos;
ArrayList<playerBullet> playerBullets = new ArrayList();
ArrayList<enemyBullet> enemyBullets = new ArrayList();
ArrayList<Enemy> Enemies = new ArrayList();
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
boolean death=false;
int scene = 0;
int score = 0;
int enemyCount;
PFont font;
Player p;

void setup()
{
  size(800, 800, P2D);

  //playerPos = new PVector(400,400);

  p = new Player();
  if (scene==0)
  {
    fill(0, 0, 0);
    rect(0, 0, 800, 800);


    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
  }

  font = createFont("Arial", 30, true);


  if (Enemies.size()<1)
  {
    scene+=1;
  }
}




void draw()
{



  if (death==true)
  {

    scene=99;
  }
  fill(0, 0, 0, 20);
  rect(0, 0, width, height);


  fill(255, 255, 255);
  // ellipse(playerPos.x,playerPos.y,25,25);
  fill(0);

  fill(0, 0, 255);
  rect(300, 250, 200, 20);
  rect(300, 530, 200, 20);
  rect(250, 300, 20, 200);
  rect(530, 300, 20, 200);
  fill(0);

if (scene==0)
{
  fill(0,255,0);
  text("Wave 1",20,20);
  
  
}

if (scene==1)
{
  fill(0,255,0);
  
  text("Wave 2",20,20);
  
  
}



  for (Enemy enemy : Enemies)
  {
    enemy.Update();

    if (dist(enemy.Pos.x, enemy.Pos.y, p.Pos.x, p.Pos.y)<(enemy.w+p.w)/2)
    {

      death=true;
    }
  }

  p.Update();

  if (scene==1)
  {
    Reset();
    scene=3;
    
  }

 if (scene==3)
 {
   Reset();
   scene=4;
   
 }

  if (scene == 0)
  {
    if (Enemies.size()==0)
    {
      scene=1;
    }
  }

  for (playerBullet bullet : playerBullets)
  {
    bullet.Update();
    if (bullet.CheckCollision(300, 250, 200, 20))
    {
      bullet.bulletPos.x=9999;
    }

    if (bullet.CheckCollision(300, 530, 200, 20))
    {
      bullet.bulletPos.x=9999;
    }

    if (bullet.CheckCollision(250, 300, 20, 200))
    {
      bullet.bulletPos.x=9999;
    }

    if (bullet.CheckCollision(530, 300, 20, 200))
    {
      bullet.bulletPos.x=9999;
    }


    for (Enemy enemy : Enemies)
    {
      if (dist(bullet.bulletPos.x, bullet.bulletPos.y, enemy.Pos.x, enemy.Pos.y)<((enemy.w+bullet.bulletW)/2))
      {
        enemy.kill=true;
      }
    }
  }





  for (int i = Enemies.size()-1; i >= 0; i--)
  {
    if (Enemies.get(i).kill == true)
    {
      Enemies.remove(i);
    }
  }

  if (scene==99)
  {

    background(0);

    fill(255, 0, 0);
    textFont(font, 20);
    text("You died, press R to restart", 300, 400);

    for (int i = Enemies.size()-1; i >= 0; i--)
    {
      Enemies.get(i).kill = true;
    }

    if (key=='r')
    {
      death=false; 
      scene = 0; 
      p.Pos.mult(0);
      p.Pos.add(400, 400);
      for (int i = Enemies.size()-1; i >= 0; i--)
      {
        if (Enemies.get(i).kill == true)
        {
          Enemies.remove(i);
        }
      }
    }
  }
}

void mousePressed()
{
  playerBullets.add(new playerBullet(mouseX, mouseY, p.Pos.x, p.Pos.y));
}

void keyPressed()
{
  if (key=='W'|| key == 'w')
  {
    up=true;
  }

  if (key=='A'|| key == 'a')
  {
    left=true;
  }

  if (key=='S'||key=='s')
  {
    down=true;
  }

  if (key=='D'||key=='d')
  {
    right=true;
  }
}

void keyReleased()
{
  if (key=='W'|| key == 'w')
  {
    up=false;
  }

  if (key=='A'|| key == 'a')
  {
    left=false;
  }

  if (key=='S'||key=='s')
  {
    down=false;
  }

  if (key=='D'||key=='d')
  {
    right=false;
  }
}

void Reset()
{
  if (scene==1)
  {
    fill(0, 0, 0);
    rect(0, 0, 800, 800);


    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
  }
  
  
  if (scene==3)
  {
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    Enemies.add(new Enemy());
    
    
    
    
    
    
  }
}