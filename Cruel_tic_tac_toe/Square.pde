public class Square {
  //instance variables
  
  int size;
  int xCoor; 
  int yCoor;  
  boolean isOccupied; 
  boolean isClicked; 
  char player; 
  PFont font = createFont("Forte", 26); 
  
  
  public Square (int x_, int y_) {
    xCoor = x_; 
    yCoor = y_; 
    size = 30; 
    isOccupied = false; 
    isClicked = false; 
    player = 'O'; 
  } 
  
  void render() 
  {
    stroke(0); 
    fill(255); 
    rect(xCoor, yCoor, size, size); 
    if(isOccupied)
    {
      if(player == 'X') 
      {
        fill(255, 0, 0);
      }
      else 
        fill(0); 
      textFont(font, 26); 
      text(player, xCoor + 5, yCoor + 25);
    } 
  } 
  
  void isClicked() {
    if(mouseX > xCoor && mouseX < xCoor + 30 && mouseY > yCoor && mouseY < yCoor + 30) 
    { 
      isClicked = true; 
      if(!isOccupied)
      {
        player = 'X'; 
        isOccupied = true; 
      } 
    } 
  } 
 
   
      
    
  
}
  
  
