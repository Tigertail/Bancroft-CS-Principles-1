PImage red;
float ry = 620;
int rSpeed = 5;

PImage blue;
float by = 620;
int bSpeed = 7;

PImage purple;
float py = 620;
int pSpeed = 8;

PImage green;
float gy = 620;
int gSpeed = 10;

PImage boss;
float bossy = 620;
int bossSpeed = 10;


void setup()// i am able to move it
{
size(1600, 900); //size
background(0,0,0,0);
stroke(3);  
frameRate(60); // rate the creature moves default 60

}

void draw()
{
  gameback();
  //red();
  //blue();
  //purple();
  //green();
  //boss();
  cha();
  lazer(); 
  
  
  if (keyPressed== true)
  {
  lazerbeam(); 
  }
  else
  {
    
  }
 
  
}
void cha()
{
float x=mouseX; 
float y=620; 
strokeWeight(2); // thikness of line
fill(255);
ellipse(x-100, y-100, 50, 50); //eye
ellipse(x+100,y-100, 50, 50); //eye
fill(0); //black
ellipse(x-100, y-100, 25, 25); //pupil
ellipse(x+100,y-100, 25, 25); //pupil
strokeWeight(5);
line(x-75,y-75,x-45,y-45); //eye connector
line(x+75,y-75,x+45,y-45); // eye connector
strokeWeight(2);
ellipse(x,y,150,200); //base
fill(255); //white
ellipse(x,y,110,110);
fill(255,0,0); //red
ellipse(x, y, 50, 50); //mouth
stroke(3);
fill(0,0,0); //black
arc(x, y+50, 50, 50, 0, PI); //bottom half of a circle
arc(x, y-50, 50, 50, PI, TWO_PI); //top half of a circle
arc(x-50, y, 50, 50, HALF_PI, PI+HALF_PI); //left side of a circle
arc(x+50, y, 50, 50, PI+HALF_PI, TWO_PI+HALF_PI); //right circle
fill(81,246,130); //light green
ellipse(x,y+150, 200, 50); //foot
fill(246,255,0); //yellow
ellipse(x-25,y-70,25,25);
ellipse(x+25,y-70,25,25);
fill(255); //white
arc(x,y+175,70,70, PI, TWO_PI); //swirl
arc(x,y+175,60,60, PI, TWO_PI); //swirl
arc(x,y+175,50,50, PI, TWO_PI); //swirl
arc(x,y+175,40,40, PI, TWO_PI); //swirl
arc(x,y+175,30,30, PI, TWO_PI); //swirl
arc(x,y+175,20,20, PI, TWO_PI); //swirl
arc(x,y+175,10,10, PI, TWO_PI); //swirl
strokeWeight(5);
line(x,y+100,x,y+125);//to attach body to foot
line(x-75,y,x-100,y+50); //bottom left arm
line(x+75,y,x+100,y+50); //bottom right arm
line(x-75,y,x-100,y-50); //top left arm
line(x+75,y,x+100,y-50); //top right arm
ellipse(x-100,y+50,20,20); //bottom left hand
ellipse(x+100,y+50,20,20); //bottom right hand
ellipse(x-100,y-50,20,20); //top left hand
ellipse(x+100,y-50,20,20); //top right hand
}
void gameback()
{
  background(65,240,235);
  fill(170,97,7);
  rect(0,600,1600,600);
  fill(255);
  beginShape();
  vertex(100,100);
  vertex(150,100);
  vertex(150,150);
  vertex(200,150);
  vertex(200,100);
  vertex(250,100);
  vertex(250,150);
  vertex(300,150);
  vertex(300,250);
  vertex(250,250);
  vertex(250,200);
  vertex(100,200);
  vertex(100,100);
  endShape();
  
  beginShape();
  vertex(800,100);
  vertex(900,100);
  vertex(900,150);
  vertex(950,150);
  vertex(950,200);
  vertex(900,200);
  vertex(900,250);
  vertex(750,250);
  vertex(750,150);
  vertex(800,150);
  vertex(800,100);
  endShape();
 
    beginShape();
  vertex(1300,100);
  vertex(1450,100);
  vertex(1450,150);
  vertex(1450,150);
  vertex(1450,200);
  vertex(1400,200);
  vertex(1400,250);
  vertex(1300,250);
  vertex(1300,200);
  vertex(1250,200);
  vertex(1250,150);
  vertex(1300,150);
  vertex(1300,100);
  endShape();
}
void lazer()
{
float x=mouseX; 
float y=620; 
fill(39,147,10);
beginShape();
vertex(x+100,y+50);
vertex(x+100,y+0);
vertex(x+200,y+0);
vertex(x+200,y+25);
vertex(x+125,y+25);
vertex(x+125,y+50);
vertex(x+100,y+50);
endShape();
fill(219,35,35);
ellipse(x+145,y+10,25,50);
ellipse(x+165,y+10,25,50);
ellipse(x+185,y+10,25,50);
ellipse(x+205,y+10,25,50);
strokeWeight(2);
fill(39,147,10);
rect(x+205,y+8,30,5);
fill(0,82,193);
ellipse(x+235,y+12,15,15);
}

void lazerbeam()
{
float x=mouseX; 
float y=620; 
fill((int)random(255),(int)random(255),(int)random(255));
  beginShape();
  vertex(x+235,y+12);
  vertex(x+1135,y+12);
  vertex(x+1135,y+20);
  vertex(x+1145,y+12);
  vertex(x+1145,y+20);
  vertex(x+1155,y+12);
  vertex(x+1155,y+20);
  vertex(x+1155,y+25);
  vertex(x+235,y+12);
  endShape();
}

void blue()
{
 
  blue = loadImage("blue.png");
  image(blue, 1350,by-90);

if(by<=10) // y top 
{
bSpeed = bSpeed * -1; //change direction
}
if(by>=height-180) // y bottom
{
bSpeed = bSpeed * -1; //change direction to make him dissapear add 000 to the -1
}
by=by+ bSpeed; // change y position
}

void red()
{
  
  red = loadImage("red.png");
  image(red, 1350, ry-90);
  
  if(ry<=10) // y top 
  {
    rSpeed = rSpeed * -1; //change direction
  }
  if(ry>=height-180) // y bottom
  {
    rSpeed = rSpeed * -1; //change direction to make him dissapear add 000 to the -1
  }
   ry=ry+ rSpeed; // change y position
}

void purple()
{

  purple = loadImage("purple.png");
  image(purple, 1350,py-90);
  
if(py<=10) // y top 
  {
    pSpeed = pSpeed * -1; //change direction
  }
  if(py>=height-180) // y bottom
  {
    pSpeed = pSpeed * -1; //change direction to make him dissapear add 000 to the -1
  }
   py=py+ pSpeed; // change y position
}

void green()
{
 
  green = loadImage("green.png");
  image(green, 1200,gy-130);
  
if(gy<=10) // y top 
  {
    gSpeed = gSpeed * -1; //change direction
  }
  if(gy>=height-180) // y bottom
  {
    gSpeed = gSpeed * -1; //change direction to make him dissapear add 000 to the -1
  }
   gy=gy+ gSpeed; // change y position
}

void boss()
{

  boss = loadImage("boss.png");
  image(boss, 1350,bossy-20);

if(bossy<=10) // y top 
  {
    bossSpeed = bossSpeed * -1; //change direction
  }
  if(bossy>=height-180) // y bottom
  {
    bossSpeed = bossSpeed * -1; //change direction to make him dissapear add 000 to the -1
  }
   bossy=bossy+ bossSpeed; // change y position
}