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

# week03
## step01

複製上週程式

點擊滑鼠洗牌
```java
void setup()
{
  size(500,500);
  PFont font =createFont("標楷體",40);
  textFont(font);
  myShuffle();
}
void myShuffle()
{
  String [] flower={"黑桃","紅心","方塊","梅花"};//陣列
  face1=flower[int(random(4))]+int(random(13)+1);
  face2=flower[int(random(4))]+int(random(13)+1);
  face3=flower[int(random(4))]+int(random(13)+1);
  face4=flower[int(random(4))]+int(random(13)+1);
  //int取整數 0...12所以要加1
}
void mousePressed()
{
  myShuffle();
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

做52張牌
```java
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
```

## step02

顯示52張牌的字
```java
void setup()
{
  size(700,700);
  PFont font =createFont("標楷體",10);
  textFont(font);
}
String []faces=
{
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K"
};
void draw()
{
  background(#94FCBD);
  for(int i=0;i<52;i++)
  {
    int x=(i%10)*60; //除以10餘數，個位數
    int y=int(i/10)*120; //十位數
    fill(255); rect(x,y,60,120);
    fill(0); text(faces[i],x+25,y+80);
  }
}
```

52張牌優化
```java
void setup()
{
  size(800,600);
  PFont font =createFont("標楷體",16);
  textFont(font);
}
String []faces=
{
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",
};
void draw()
{
  background(#94FCBD);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60; //除以10餘數，個位數
    int y=int(i/13)*120; //十位數
    fill(255); rect(x,y,60,120);
    if(faces[i].indexOf("紅心")==-1&&faces[i].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(faces[i],x+10,y+60);
  }
}
```

## step03

洗牌
```java
void setup()
{
  size(800,600);
  PFont font =createFont("標楷體",16);
  textFont(font);
}
String []faces=
{
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",
};
void draw()
{
  background(#94FCBD);
  for(int i=0;i<52;i++)
  {
    int x=(i%13)*60; //除以10餘數，個位數
    int y=int(i/13)*120; //十位數
    fill(255); rect(x,y,60,120);
    if(faces[i].indexOf("紅心")==-1&&faces[i].indexOf("方塊")==-1) fill(0);
    else fill(255,0,0);
    text(faces[i],x+10,y+60);
  }
}
void mousePressed()
{
  int a=int(random(52));
  int b=int(random(52));
  
  String temp=faces[a];
  faces[a]=faces[b];
  faces[b]=temp;
}
```

總合
```java
void setup()
{
  size(500,500);
  PFont font =createFont("標楷體",40);
  textFont(font);
  myShuffle();
}
String []faces=
{
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "紅心A","紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K",
  "方塊A","方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
  "梅花A","梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",
};
void myShuffle()
{
  for(int k=0;k<10000;k++)
  {
      int a=int(random(52));
      int b=int(random(52));
  
      String temp=faces[a];
      faces[a]=faces[b];
      faces[b]=temp;
  }
  face1=faces[0];
  face2=faces[1];
  face3=faces[2];
  face4=faces[3];
}
void mousePressed()
{
  myShuffle();
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
