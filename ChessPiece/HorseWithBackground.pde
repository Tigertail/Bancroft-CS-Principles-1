
int y = 120;
//150
int x = 120;
//120

void setup()
{
  size(500,500);
  background(255);
}

void draw()
{
  background(255);
  checker();
  int y = 120;
//150
int x = 120;
//120
  noStroke();
  fill(0);
  ellipse(x+175,y+37,25,40);
  ellipse(x+180,y+100,30,116);
  ellipse(x+50,y+60,50,30);
  rect(x+150,y+15,20,50);
  rect(x+115,y+80,50,50);
  rect(x+140,y+50,50,50);
  ellipse(x+120,y+60,130,65);
  ellipse(x+185,y+120,22.5,75);
  ellipse(x+150,y+110,80,50);
  ellipse(x+150,y+125,80,45);
  ellipse(x+145,y+135,90,45);
  ellipse(x+140,y+145,100,45);
  ellipse(x+135,y+155,110,45);
  ellipse(x+130,y+165,120,45);
  rect(x+50,y+175,150,30);
  rect(x+60,y+165,130,10);
  fill(255);
  fill(#5F4206);
  ellipse(x+40,y+90,80,40);
  ellipse(x+32,y+32,85,40);
  fill(255);
  ellipse(x+185,y+10,45,40);
  ellipse(x+147,y+10,30,40);
}
void checker()
{
  fill(#5F4206);
  rect(0,0,250,250);
  rect(250,250,250,250);
}
