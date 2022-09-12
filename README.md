# 2022interaction
2022互動設計 程式
# week01
## step01
大小
```
size(500,500);
```

顏色
```java
size(500,500);
background(#A00028);
```

## step02
塗顏色的長方形
```java
size(500,500);
background(#A00028);
fill(#FC952E);
rect(100,100, 100,150);
```

會移動的長方形
```java
void setup()
{
  size(500,500);
}
void draw()
{
  background(#A00028);
  fill(#FC952E);
  rect(100,100, 100,150);
  rect(mouseX,mouseY, 100,150);
}
```

下載p5.js
把互動程式存進網路
```p5.js
function setup() 
{
    initializeFields();
    createCanvas(500, 500);
}
function draw() 
{
    background(color(0xA0, 0x00, 0x28));
    fill(color(0xFC, 0x95, 0x2E));
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}
function initializeFields() {
}
```

## step03

製作小畫家
```java
void setup()
{
  size(500,500);
}
void draw()
{
  if(mousePressed) line(mouseX,mouseY, pmouseX,pmouseY);
}
```

色筆小畫家
```java
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
```

# week02
## step01

畫卡片
```java
size(500,500);
rect(100,100, 150,250, 20);//弧度
```

加邊框
```java
size(500,500);
int W=20;
rect(100-W/2,100-W/2, 150+W,250+W, 20);
fill(#A50808);
rect(100,100, 150,250, 20);//弧度
```

複數張卡
```java
void setup()
{
  size(500,500);
}
int W=20;
void draw()
{
  drawCard(100,100);
  drawCard(130,130);
  drawCard(160,160);
}
void drawCard(int x,int y)
{
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 20);
  fill(#A50808);
  rect(x,y, 150,250, 20);//弧度
}
```

## step02

撲克牌
```java
void setup()
{
  size(500,500);
}
int W=20;
void draw()
{
  drawPokerCard(100,100,"S4");
  drawPokerCard(130,150,"H3");
  drawPokerCard(160,200,"D5");
  drawPokerCard(190,250,"CJ");
}
void drawPokerCard(int x,int y,String face)
{
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 20);
  fill(#FCC600);
  rect(x,y, 150,250, 20);//弧度
  
  fill(0);
  textSize(40);
  text(face,x,y+40);
}
```

切換成中文字
```java
void setup()
{
  size(500,500);
  PFont font =createFont("標楷體",40);
  textFont(font);
}
int W=20;
void draw()
{
  drawPokerCard(100,100,"黑桃4");
  drawPokerCard(130,150,"紅心3");
  drawPokerCard(160,200,"方塊5");
  drawPokerCard(190,250,"梅花J");
}
void drawPokerCard(int x,int y,String face)
{
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 20);
  fill(#FCC600);
  rect(x,y, 150,250, 20);//弧度
  
  fill(0);
  textSize(40);
  text(face,x,y+40);
}
```

紅字黑字
```java
void setup()
{
  size(500,500);
  PFont font =createFont("標楷體",40);
  textFont(font);
}
int W=20;
void draw()
{
  drawPokerCard(100,100,"黑桃4");
  drawPokerCard(130,150,"紅心3");
  drawPokerCard(160,200,"方塊5");
  drawPokerCard(190,250,"梅花J");
}
void drawPokerCard(int x,int y,String face)
{
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 20);
  fill(#FCC600);
  rect(x,y, 150,250, 20);//弧度
  
  if(face.indexOf("黑桃")==-1 && face.indexOf("梅花")==-1) fill(#FF0000);
  else fill(0);//黑字
  textSize(40);
  text(face,x,y+40);
}
```

## step03

洗牌
```java
void setup()
{
  size(500,500);
  PFont font =createFont("標楷體",40);
  textFont(font);
  String [] flower={"黑桃","紅心","方塊","梅花"};//陣列
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
  //int取整數 0...12所以要加1
}
String face1,face2,face3,face4;
void draw()
{
  drawPokerCard(100,100,face1);
  drawPokerCard(130,150,face2);
  drawPokerCard(160,200,face3);
  drawPokerCard(190,250,face4);
}
void drawPokerCard(int x,int y,String face)
{
  int W=20;
  fill(255);
  rect(x-W/2,y-W/2, 150+W,250+W, 20);
  fill(#FCC600);
  rect(x,y, 150,250, 20);//弧度
  
  if(face.indexOf("黑桃")==-1 && face.indexOf("梅花")==-1) fill(#FF0000);
  else fill(0);//黑字
  textSize(40);
  text(face,x,y+40);
}
```
