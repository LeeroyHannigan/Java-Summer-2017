public class Ball
{
  private Location location;
  private int rad;
  private boolean flag, flag1;
  private  int ballX = 4;
  private int speed=5;
  private int score=0;





  public Ball()
  {
    location=new Location((int)random(0, width), height/2);//Initial location of the Ball

    rad=25;//Size of the Ball
  }
  //Display Ball
  public void display()
  {
    fill(255, 0, 0);
    ellipse(location.getX(), location.getY(), rad, rad);
  }
  //Move Ball
  public void move()
  {

    //Bounce if ball hits rhs of screen
    if (location.getX()>width-25)
      flag=true;
    //Bounce if ball hits lhs of screen
    if (location.getX()<25)
      flag = false;

    if (flag)
      location.setX(location.getX()-ballX);
    if (!flag)
      location.setX(location.getX()+ballX);


    //bounce if ball hits the paddle
    if (location.getY()>height-65&& location.getY()<height && location.getX()>mouseX-100 && location.getX()<mouseX+100) 
    {
      score+=5;
      setSpeed(-1);
    }

    //bounce if the ball hits the roof
    if (location.getY()<25)
      setSpeed(-1);
    if (flag1)
      location.setY(location.getY()-speed);
    if (!flag1)
      location.setY(location.getY()+speed);

    if (location.getY()>height)
      exit();
  }

  public Location getLocation()
  {
    return location;
  }
  //Determines the direction and speed of the ball
  public void setSpeed(int speed)
  {
    this.speed=this.speed*speed;
  }
  //Accumulates 5 points evert time the ball hits the paddle
  public int getScore()
  {
    return score;
  }
}