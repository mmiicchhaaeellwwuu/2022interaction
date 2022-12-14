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

# week04
## step01
正在跑的球
```java
void setup()
{
  size(500,500);
}
int x=250,y=250;//變數(位置)
void draw()
{
  ellipse(x,y,10,10);//橢圓
  x=x+1;
  y=y-1;
}
```

會反彈的球
```java
void setup()
{
  size(500,500);
}
float x=250,y=250;//變數(位置)精細
float vx=1.0,vy=-0.5;
void draw()
{
  ellipse(x,y,10,10);//橢圓
  x=x+vx;
  y=y+vy;
  if(x>500) vx=-vx;
  if(y<0) vy=-vy;
}
```

用板子反彈
```java
void setup()
{
  size(500,500);
}
float x=250,y=250;//變數(位置)精細
float vx=2.0,vy=-1.5;
void draw()
{
  background(#FF2929);//背景，去殘影
  int boardX=mouseX;
  rect(boardX,470,100,20);//控制的板子
  ellipse(x,y,10,10);//橢圓
  x=x+vx;
  y=y+vy;
  if(x>500) vx=-vx;
  if(y<0) vy=-vy;
  if(x<0) vx=-vx;
  if(y>470 && x>boardX && x<boardX+100) vy=-vy;
}
```

## step02
打球遊戲
```java
void setup()
{
  size(500,500);
}
float x=250,y=250;//變數(位置)精細
float vx=2.0,vy=-1.5;
float boardX,boardY=470,boardW=100,boardH=20;
void draw()
{
  boardX=mouseX-boardW/2;
  background(#FF2929);//背景，去殘影
  rect(boardX,boardY,boardW,boardH);//控制的板子
  ellipse(x,y,10,10);//橢圓
  x=x+vx;
  y=y+vy;
  if(x>500) vx=-vx;
  if(y<0) vy=-vy;
  if(x<0) vx=-vx;
  if((y>boardY && y<boardY+boardH) && 
    (x>boardX && x<boardX+boardW))
  {
    vy=-vy;
    vx+=(mouseX-pmouseX)/2;//mouse的移動速度
  }
  if(mousePressed && mouseButton==LEFT) boardW*=1.01;
  if(mousePressed && mouseButton==RIGHT) boardW*=0.99;
}
```

九路圍棋
```java
void setup()
{
  size(500,500);
}
void draw()
{
    //用迴圈畫棋
    for(int x=50;x<=450;x+=50)
    {
       for(int y=50;y<=450;y+=50)
       {
         ellipse(x,y,50,50);
       }
    }
}
```

陣列圍棋
```java
void setup()
{
  size(500,500);
}
int [][] go=
{
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,1,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,1,0,0,0,1,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};//陣列9x9
void draw()//用迴圈畫棋
{  
    for(int i=0;i<9;i++) //i對應y座標
    {
       for(int j=0;j<9;j++) //j對應x座標
       {
         if(go[i][j]==1) fill(0);
         else fill(255);
         ellipse(50+j*50,50+i*50,50,50);
       }
    }
}
```

## step03
加上棋盤
```java
void setup()
{
  size(500,500);
}
int [][] go=
{
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,1,0,0,0,2,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,1,0,0,0,2,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};//陣列9x9
void draw()//用迴圈畫棋
{  
    background(246,194,108);//木頭色棋盤
    for(int i=1;i<=9;i++)//用迴圈畫線
    {
      line(50,50*i,450,50*i);
      line(50*i,50,50*i,450);
    }
    
    for(int i=0;i<9;i++) //i對應y座標
    {
       for(int j=0;j<9;j++) //j對應x座標
       {
         if(go[i][j]==1)//1是黑棋
         {
           fill(0);
           ellipse(50+j*50,50+i*50,40,40);
         }
         else if(go[i][j]==2)//2是白棋
         {
           fill(255);
           ellipse(50+j*50,50+i*50,40,40);
         }
       }
    }
}
```

簡易打棋譜
```java
void setup()
{
  size(500,500);
}
int [][] go=
{
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0}
};//陣列9x9
int n=0;//目前棋子數
void mousePressed()
{
  int j=(mouseX-25)/50;//j對應x座標
  int i=(mouseY-25)/50;//i對應y座標
  go[i][j]=(n%2==0)?1:2;//if(n%2==0)用1，否則2
  n++;//多一顆棋
}
void draw()//用迴圈畫棋
{  
    background(246,194,108);//木頭色棋盤
    for(int i=1;i<=9;i++)//用迴圈畫線
    {
      line(50,50*i,450,50*i);
      line(50*i,50,50*i,450);
    }
    
    for(int i=0;i<9;i++) //i對應y座標
    {
       for(int j=0;j<9;j++) //j對應x座標
       {
         if(go[i][j]==1)//1是黑棋
         {
           fill(0);
           ellipse(50+j*50,50+i*50,40,40);
         }
         else if(go[i][j]==2)//2是白棋
         {
           fill(255);
           ellipse(50+j*50,50+i*50,40,40);
         }
       }
    }
}
```

# week05
## step01
畫棋盤線
```java
///畫棋盤
size(500,700);
for(int x=50;x<=450;x+=50)
{
    line(x,50,x,500);
}
///10條
for(int y=50;y<=500;y+=50)
{
    line(50,y,450,y);
}
```

畫棋子
```java
int [][]board=
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
void setup()
{
  size(500,550);
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<9;j++)
    {
      text(board[i][j],50+j*50,50+i*50);
    }
  }
}
```

棋子中文
```java
int [][]board=
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
String [] name={"將","士","象","車","馬","包","卒"};
void setup()
{
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);//字對齊
}
void draw()
{
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];//從1開始
      if(id==0) continue;
      text(name[id-1],50+j*50,50+i*50);
    }
  }
}
```

## step02
紅黑象棋
```java
int [][]board=
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},//上面黑色
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},//下面紅色
  {-7, 0,-7, 0,-7, 0,-7, 0,-7},
  {0 ,-6, 0, 0, 0, 0, 0,-6, 0},
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void setup()
{
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);//字對齊
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];//從1開始
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50);
      }
    }
  }
}
```

滑鼠點擊生棋
```java
int [][]board=
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},//上面黑色
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},//下面紅色
  {-7, 0,-7, 0,-7, 0,-7, 0,-7},
  {0 ,-6, 0, 0, 0, 0, 0,-6, 0},
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void setup()
{
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);//字對齊
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];//從1開始
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50);
      }
    }
  }
}
void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20)
      {
        board[i][j]=1;
      }
    }
  }
}
```

象棋
```java
int [][]board=
{
  {4,5,3,2,1,2,3,5,4},
  {0,0,0,0,0,0,0,0,0},
  {0,6,0,0,0,0,0,6,0},
  {7,0,7,0,7,0,7,0,7},
  {0,0,0,0,0,0,0,0,0},//上面黑色
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},//下面紅色
  {-7, 0,-7, 0,-7, 0,-7, 0,-7},
  {0 ,-6, 0, 0, 0, 0, 0,-6, 0},
  { 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4,-5,-3,-2,-1,-2,-3,-5,-4}
};//1:將 2:士 3:象 4:車 5:馬 6:包 7:卒
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void setup()
{
  size(500,550);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);//字對齊
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
    line(x,300,x,500);
  }
  for(int y=50;y<=500;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      int id=board[i][j];//從1開始
      if(id==0) continue;
      if(id>0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(0);
        text(name[id-1],50+j*50,50+i*50);
      }
      else if(id<0)
      {
        fill(255);
        ellipse(50+j*50,50+i*50,40,40);
        fill(255,0,0);
        text(name2[-id-1],50+j*50,50+i*50);
      }
    }
  }
  if(handChess!=0) ellipse(mouseX,mouseY,40,40);
}
int handChess=0;
void mousePressed()
{
  for(int i=0;i<10;i++)
  {
    for(int j=0;j<9;j++)
    {
      if(dist(mouseX,mouseY,50+j*50,50+i*50)<20)
      {
        handChess=board[i][j];
        board[i][j]=0;//棋子不見
      }//棋子放手上
    }
  }
}
void mouseReleased()
{
  int i=(mouseY+25-50)/50;//y是50+i*50
  int j=(mouseX+25-50)/50;//x是50+j*50
  board[i][j]=handChess;//手上棋子放棋盤
  handChess=0;//手上棋子清空
}
```

## step03
暗棋
```java
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      int id=board[i][j];
      drawChess(50+25+j*50,50+25+i*50,id);
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

# week07
## step01
上上週暗棋
```java
int [][]show=
{
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawChess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
}
void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
      }
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

暗棋洗牌
```java
int [][]show=
{
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  for(int k=0;k<1000;k++)//洗1000次
  {
    int i1=int(random(4)),j1=int(random(8));
    int i2=int(random(4)),j2=int(random(8));
    int temp=board[i1][j1];
    board[i1][j1]=board[i2][j2];
    board[i2][j2]=temp;
  }
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawChess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
}
void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
      }
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

暗棋移動
```java
int [][]show=
{
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  for(int k=0;k<1000;k++)//洗1000次
  {
    int i1=int(random(4)),j1=int(random(8));
    int i2=int(random(4)),j2=int(random(8));
    int temp=board[i1][j1];
    board[i1][j1]=board[i2][j2];
    board[i2][j2]=temp;
  }
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawChess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
  if(moving)
  {
    drawChess(50+25+moveJ*50,50+25+moveI*50,9);
  }
}
int moveI=-1,moveJ=-1;
boolean moving=false;//不是移動中
void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
        else
        {
          moveI=i;
          moveJ=j;
          moving=true;//現在移動中
        }
      }
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id==9)//待移動棋子
  {
    fill(0,255,0);
    ellipse(x,y,40,40);
  }
  else if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

## step02
拿棋子
```java
int [][]show=
{
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  for(int k=0;k<1000;k++)//洗1000次
  {
    int i1=int(random(4)),j1=int(random(8));
    int i2=int(random(4)),j2=int(random(8));
    int temp=board[i1][j1];
    board[i1][j1]=board[i2][j2];
    board[i2][j2]=temp;
  }
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawChess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
  if(moving)
  {
    fill(0,255,0,128);//半透明綠色
    ellipse(50+25+moveJ*50,50+25+moveI*50,40,40);
    drawChess(mouseX,mouseY,moveID);
  }
}
int moveI=-1,moveJ=-1,moveID=-1;
boolean moving=false;//不是移動中
void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
        else
        {
          moveI=i;
          moveJ=j;
          moveID=board[i][j];
          moving=true;//現在移動中
        }
      }
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

吃棋
```java
int [][]show=
{
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};
int [][]board=
{
  { 1, 2, 2, 3, 3, 4, 4, 5},
  { 5, 6, 6, 7, 7, 7, 7, 7},
  {-1,-2,-2,-3,-3,-4,-4,-5},
  {-5,-6,-6,-7,-7,-7,-7,-7}
};//暗棋格子少，32子
void setup()
{
  size(500,400);
  PFont font=createFont("標楷體",30);
  textFont(font);
  textAlign(CENTER,CENTER);
  for(int k=0;k<1000;k++)//洗1000次
  {
    int i1=int(random(4)),j1=int(random(8));
    int i2=int(random(4)),j2=int(random(8));
    int temp=board[i1][j1];
    board[i1][j1]=board[i2][j2];
    board[i2][j2]=temp;
  }
}
void draw()
{
  background(#F0B82C);
  for(int x=50;x<=450;x+=50)
  {
    line(x,50,x,250);
  }
  for(int y=50;y<=250;y+=50)
  {
    line(50,y,450,y);
  }
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(show[i][j]==0)
      {
        fill(255);
        ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else
      {
        int id=board[i][j];
        drawChess(50+25+j*50,50+25+i*50,id);
      }
    }
  }
  if(moving)
  {
    fill(0,255,0,128);//半透明綠色
    ellipse(50+25+moveJ*50,50+25+moveI*50,40,40);
    drawChess(mouseX,mouseY,moveID);
  }
}
int moveI=-1,moveJ=-1,moveID=-1;
boolean moving=false;//不是移動中
void mousePressed()
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(show[i][j]==0) show[i][j]=1;
        else
        {
          moveI=i;
          moveJ=j;
          moveID=board[i][j];
          moving=true;//現在移動中
        }
      }
    }
  }
}
void mouseReleased()//放開時吃掉
{
  for(int i=0;i<4;i++)
  {
    for(int j=0;j<8;j++)
    {
      if(dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20)
      {
        if(moving)
        {
          board[moveI][moveJ]=0;
          board[i][j]=moveID;
          moving=false;
        }
      }
    }
  }
}
String [] name={"將","士","象","車","馬","包","卒"};
String [] name2={"帥","仕","相","俥","傌","炮","兵"};
void drawChess(int x,int y,int id)
{
  if(id==0) return;//沒棋子別進來
  fill(255);
  ellipse(x,y,40,40);
  if(id>0)
  {
    fill(0);
    text(name[id-1],x,y-3);
  }
  else if(id<0)
  {
    fill(255,0,0);
    text(name2[-id-1],x,y-3);
  }
}
```

## step03
音樂外掛
```java
//存檔，mp3拉進來，Ctrl+k看檔案
import processing.sound.*;//音樂功能
//使用外掛，先將外掛安裝
void setup()
{
  SoundFile file=new SoundFile(this,"Intro Song_Final.mp3");
  file.play();
}
void draw()
{
  
}
void mousePressed()
{
  SoundFile file2=new SoundFile(this,"In Game Music.mp3");
  file2.play();
}
```

修改程式
```java
//存檔，mp3拉進來，Ctrl+k看檔案
import processing.sound.*;//音樂功能
//使用外掛，先將外掛安裝
SoundFile file1,file2,file3;
void setup()
{
  file1=new SoundFile(this,"Intro Song_Final.mp3");
  file2=new SoundFile(this,"In Game Music.mp3");
  file3=new SoundFile(this,"Monkey 1");
  file1.play();
}
void draw()
{
  
}
void mousePressed()
{
  file2.play();
}
void keyPressed()
{
  file3.play();
}
```

# week08
## step01
播放音樂
```java
import processing.sound.*;
SoundFile sound1,sound2,sound3;
void setup()
{
  size(400,300);
  sound1=new SoundFile(this,"Intro Song_Final.mp3");
  sound1.play();
}
void draw()
{
  
}
```

設舞台
```java
import processing.sound.*;
SoundFile sound1,sound2,sound3;
void setup()
{
  size(400,300);
  textSize(50);
  fill(255,0,0);
  sound1=new SoundFile(this,"Intro Song_Final.mp3");
  sound2=new SoundFile(this,"In Game Music.mp3");
  sound1.play();
}
int stage=1;
void draw()
{
  background(255);
  if(stage==1) text("stage 1",100,100);
  else if(stage==2) text("stage 2",100,100);
}
void mousePressed()
{
  if(stage==1)
  {
    stage=2;
    sound1.stop();
    sound2.play();
  }
  else if(stage==2)
  {
    stage=1;
    sound2.stop();
    sound1.play();
  }
}
```

簡單舞台
```java
void setup()
{
  size(400,300);
}
int stage=1;
void draw()
{
  background(255,0,0);
  textSize(80);
  if(stage==1) text("stage 1",100,100);
  else if(stage==2) text("stage 2",100,100);
}
void mousePressed()
{
  if(stage==1) stage=2;
  else if(stage==2) stage=1;
}
```
## step02
會飛的水果
```java
void setup()
{
  size(400,300);
}
float fruitX=200,fruitY=150;
float fruitVX=1,fruitVY=-1;
boolean flying=true;//布林變數
void draw()
{
  background(255,255,0);
  ellipse(fruitX,fruitY,50,50);
  if(flying)
  {
    fruitX+=fruitVX;
    fruitY+=fruitVY;
  }
}
void keyPressed()
{
  flying=false;
}
```

再生水果
```java
void setup()
{
  size(400,300);
}
float fruitX=200,fruitY=300;
float fruitVX=2,fruitVY=-13;
boolean flying=true;//布林變數
void draw()
{
  background(255,255,0);
  ellipse(fruitX,fruitY,50,50);
  if(flying)
  {
    fruitX+=fruitVX;
    fruitY+=fruitVY;
    fruitVY+=0.98/3;//重力加速度
  }
}
void keyPressed()
{
  flying=false;
  fruitReset();//再生一顆水果
}
void fruitReset()
{
  fruitX=random(100,300);
  fruitY=300;//固定高度
  fruitVX=random(-2,+2);
  fruitVY=-13;
  flying=true;
}
```

## step03
用class再生水果
```java
class Fruit
{
  float x,y,vx,vy;
  boolean flying;
  PApplet sketch;//讓random可以使用
  Fruit(PApplet _sketch)
  {
    sketch=_sketch;
    reset();
  }
  void reset()
  {
    x=sketch.random(100, 300);
    y=300;
    vx=sketch.random(-2,+2);
    vy=-13;
    flying=true;
  }
  void update()
  {
    x+=vx;
    y+=vy;
    vy+=0.98/3;
  }
}
Fruit fruit;
void setup()
{
  size(400,300);
  fruit=new Fruit(this);
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
```
