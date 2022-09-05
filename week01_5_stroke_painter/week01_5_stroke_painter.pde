void setup()
{
  size(500,500);
  background(#AF5C09);//先背景
  stroke(0,0,0);//筆觸黑色
}
void draw()
{
  if(mousePressed) line(mouseX,mouseY, pmouseX,pmouseY);
}
void keyPressed()//按按鍵
{
  if(key=='1') stroke(#2309D3);
  if(key=='2') stroke(#3FBC0F);
  if(key=='3') stroke(#FF0009);
}
