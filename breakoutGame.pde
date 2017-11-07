Paddle p;
Ball b;
Bricks bs;
void setup()
{
  size(1000, 600);
  frameRate(80);
  //Create ball and bricks
  b=new Ball();
  bs=new Bricks();
  //Load bricks into array
  bs.load();
}

void draw()
{
  background(0);
  //Create player paddle, which moves side to side with the mouse
  p=new Paddle(new Location(mouseX, height-20));
  //Display the paddle on screen
  p.display();
  //Change direction of the ball if the ball hits a brick/ Display bricks
  b.setSpeed(bs.display(b.getLocation().getX(), b.getLocation().getY()));
  //Display the ball on screen
  b.display();
  //Get the ball to move
  b.move();
  //Show score in white at lower left of the screen
  fill(255);
  text("Score: " + b.getScore(), 50, height-50);
}