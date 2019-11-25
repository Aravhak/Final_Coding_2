PVector playerPos;
ArrayList<playerBullet> playerBullets = new ArrayList();
ArrayList<enemyBullet> enemyBullets = new ArrayList();
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
int scene = 0;
int score = 0;



void setup()
{
  size(800,800,P2D);
  
  playerPos = new PVector(400,400);
  
  if (scene==0)
  {
    fill(0,0,0);
    rect(0,0,800,800);
   
  }
  
  
  
  
  
  
}




void draw()
{
  
  
  
  
  
}

void mousePressed()
{
  playerBullets.add(new playerBullet(mouseX, mouseY, playerPos.x, playerPos.y));
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