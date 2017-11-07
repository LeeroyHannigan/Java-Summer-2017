public class Paddle
{
  Location location;

  
  public  Paddle(Location location)
  {
    this.location=location;
  }

  public void display()
  {  
    rectMode(CENTER);
    fill(255);
    rect(location.getX(), location.getY(), 200, 30);
  }
  
  
  public Location getLocation()
  {
    return location;
  }
}