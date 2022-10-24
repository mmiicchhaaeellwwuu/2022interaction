Fruit []fruits;
void setup()
{
  size(400,300);
  fruits=new Fruit[3];
  for(int i=0;i<3;i++)
  {
    fruits[i]=new Fruit(this);
  }
}
void draw()
{
  background(255,255,0);
  ellipse(fruit.x,fruit.y,50,50);
  fruit.update();
}
void keyPressed()
{
  fruit.reset();
}
