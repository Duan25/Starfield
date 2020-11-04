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
   strokeWeight(30);
   strokeJoin(ROUND);
   arc((float)myX, (float)myY - 0.5, 65, 50, PI, 2*PI, CHORD);
   fill(255);
   stroke(255);
   strokeWeight(5);
   circle((float)myX, (float)myY - 12, 30);
   strokeWeight(1);
   arc((float)myX - 47, (float)myY - 15, 30, 30, radians(-50), radians(96));
   arc((float)myX + 47, (float)myY - 15, 30, 30, radians(85), radians(230));
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
