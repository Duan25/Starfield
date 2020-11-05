Particle[] group = new Particle[30];
void setup() {
  size(400, 400);
  for(int i = 0; i < group.length; i++) {
    group[i] = new Particle();
    group[0] = new OddballParticle();
  }
}
void draw()
{
  background(173,216,230);
    for(int i = 0; i < group.length; i++) {
     group[i].show();
     group[i].move();
  }
}
 class Particle {
   double myX, myY, Spd, Ang;
   int beigeColor, redColor;
  
 Particle() {
    myX = 200;
    myY = 200;
    Ang = Math.random() * (2*PI);
    Spd = Math.random() * 7;
    beigeColor = color(250,231,181);
    redColor = color(255, 0, 0);
  }
  
 void move() {
    myX += Math.cos(Ang) * Spd;
    myY += Math.sin(Ang) * Spd;
  }
 void mushroomStem() {
     fill(beigeColor);
     stroke(beigeColor);
     arc((float)myX, (float)myY, 60, 70, 0, PI);
  }
 void mushroomCap() {
   arc((float)myX, (float)myY + 15, 95, 90, PI, 2*PI);
   fill(255);
   stroke(255);
   ellipse((float)myX, (float)myY - 8, 30, 30);
   strokeWeight(1);
   arc((float)myX - 43, (float)myY - 9, 30, 30, radians(-45), radians(108));
   arc((float)myX + 43, (float)myY - 9, 30, 30, radians(70), radians(224));
 }
 void mushroomEyes() {
   fill(0);
   stroke(0);
   ellipse((float)myX - 8, (float)myY + 23, 5, 12);
   ellipse((float)myX + 8, (float)myY + 23, 5, 12);
 }
 void show() {
   mushroomStem();
   fill(redColor);
   stroke(redColor);
   mushroomCap();
   mushroomEyes();
  }
} 

class OddballParticle extends Particle 
{
   OddballParticle()
   {
     myX = 200;
     myY = 200;
     Ang = Math.random() * (2*PI);
     Spd = Math.random() * 5;
     beigeColor = color(250,231,181);
   }
   void move() {
      myX += Math.cos(Ang) * Spd;
      myY += Math.sin(Ang) * Spd; 
   }
      
   void show() {
     mushroomStem();
     fill(144,238,144);
     stroke(144,238,144);
     mushroomCap();
     mushroomEyes();
   }
}
