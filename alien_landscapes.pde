//draw a landscape
//objects
Sky s;
Planet p;
Ground g;
Mountain m;
//color vars
int groundRed, groundGreen, groundBlue;
int skyRed, skyGreen, skyBlue;
int mtnRed, mtnGreen, mtnBlue;
int planetRed, planetGreen, planetBlue;
//horizon vars
float horL, horR;
//planet vars
float planetX, planetY, planetD;
//mtn vars
float mtnX1, mtnY1, mtnX2, mtnY2, mtnX3, mtnY3;
//
void setup(){
  size (1280,720);
  s = new Sky();
  p = new Planet();
  g = new Ground();
  m = new Mountain();
}

void draw(){
  s.display();
  p.display();
  g.display();
  m.display();
  
  
}

class Sky{
    void display(){      
  background(skyRed,skyGreen,skyBlue);
    }
}
class Planet{
  void display(){
    strokeWeight(0);
    fill(planetRed,planetGreen,planetBlue);
  ellipse(planetX,planetY,planetD,planetD);
  }

}
class Ground{
  void display(){
        strokeWeight(0);
        fill(groundRed,groundGreen,groundBlue);
        quad(0,horL,width,horR,width,height,0,height);

  }

}
class Mountain{
  void display(){
strokeWeight(0);
fill(mtnRed,mtnGreen,mtnBlue);
triangle(mtnX1,mtnY1,mtnX2,mtnY2,mtnX3,mtnY3);
  }
}
void mousePressed(){
//randomize colors
skyRed = (int)random(255);
skyGreen = (int)random(255);
skyBlue = (int)random(255);
groundRed = (int)random(255);
groundGreen = (int)random(255);
groundBlue = (int)random(255);
skyRed = (int)random(255); 
skyGreen = (int)random(255);
skyBlue = (int)random(255);
mtnRed = (int)random(255);
mtnGreen = (int)random(255);
mtnBlue = (int)random(255);
planetRed = (int)random(255);
planetGreen = (int)random(255);
planetBlue = (int)random(255);
//randomize horizon line
horL = random(height/3,height);
horR = random(height/3,height);
//randomize planet coordinates and size
planetX = random(0,width);
planetY = random(0,height);
planetD = random(height/8,height/2);
//randomize mountain
mtnX1 = random(height/3,height);
mtnY1 = random(height/3,height);
mtnX2 = random(height/3,height);
mtnY2 = random(height/3,height);
mtnX3 = random(height/3,height);
mtnY3 = random(height/3,height);
}
