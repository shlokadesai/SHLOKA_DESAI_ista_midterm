/*
  Shloka Desai
  ISTA 401
  Cruel Tic Tac Toe
*/ 
ArrayList<Square> grid; 
boolean canDraw = false; 
void setup() 
{
   background(255); 
   size(600, 600); 
   grid = new ArrayList<Square>(); 
   getGrid(); 
}


void getGrid() {
  int xCoor = 0; 
  int yCoor = 0; 
  for(int i = 0; i < 400; i++)
  {
    grid.add(new Square (xCoor, yCoor)); 
    xCoor += 30; 
    if(xCoor >= 600) 
    {
      xCoor = 0; 
      yCoor += 30; 
    }
  }
}

float startTime = millis(); 
float count = 0; 
float rate = 5000; 
void draw()
{
    
   
  if(millis() > startTime) 
  { 
    Square r = grid.get((int)random(0, grid.size()));
    if(!r.isOccupied)
      r.isOccupied = true; 
    startTime += rate;
    rate = rate - rate*0.5;
    canDraw = true; 
  } 
  
  
  for(Square s : grid) 
  { 
    s.render(); 
  } 
} 

void mouseClicked() 
{ 
  if(canDraw) 
  {
    for(Square s : grid) 
    {
      s.isClicked(); 
      canDraw = false;
    }
  }
}

void checkIfGameOver() {
  /*
    If I had more time I would check if there were instances of 5 X's or O's in 
    a row and then stop the game if that was the case. 
 */
}
