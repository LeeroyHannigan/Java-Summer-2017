public class Location
{
  
  private int x, y;
  
  public Location(int x, int y)
  {
    this.x=x;
    this.y=y;
  }
  
  //Set x location
  public void setX(int x)
  {
    this.x=x;
  }
  
  //Set y location
  public void setY(int y)
  {
    this.y=y;
  }

  //Get x location
  public int getX()
  {
    return x;
  }
  
  //Get y location
  public int getY()
  {
    return y;
  }
}