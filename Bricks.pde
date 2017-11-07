public class Bricks {

  private Location location=new Location(0, 0);
  private boolean flag;
  private int[] blocks;


  //Assign all blocks as alive(blocks[i]=1)
  public void load()
  {
    blocks=new int[50];
    for (int i=0; i<blocks.length; i++) {
      blocks[i] = 1;
    }
  }
  
  
  //Display Bricks
  public int display(int a, int b)
  {
    flag = true;
    //Display each block at different locations
    for (int i=0; i<blocks.length; i++) 
    {
      location.setX(i%(width/100)*100+10);//Set X location
      location.setY(40*(i/(width/100))+10);//Set y location
      //If block exists draw block
      if (blocks[i]==1) { 
        fill(50, 100, 30);
        rect(location.getX()+40, location.getY()+10, 90, 30);
        flag = false;//we just drew a block so game is not over
      }
      // Check if ball hits block, if so, remove it (blocks[i]=0)
      if (a+25>location.getX() && a-25<(location.getX()+80) &&
        b+25>location.getY() && b-25<(location.getY()+20)&& blocks[i]==1) 
      {
        blocks[i]=0;
        return -1;//return -1 to change ball direction if brick is hit by ball
      }
    }
    if (flag)//if all blocks are gone
    {
      text("You win", width/2, height/2);
    }
    return 1;//if a brick is not hit, return 1 so ball continues is same direction
  }
  
  
  public Location getLocation()
  {
    return location;
  }
}