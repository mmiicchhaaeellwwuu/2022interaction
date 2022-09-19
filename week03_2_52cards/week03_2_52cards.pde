void setup()
{
  size(700,700);
}
void draw()
{
  background(#94FCBD);
  for(int i=0;i<52;i++)
  {
    int x=(i%10)*60; //除以10餘數，個位數
    int y=int(i/10)*120; //十位數
    rect(x,y,60,120);
  }
}
