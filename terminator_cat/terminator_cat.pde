
PImage cat;
int x = 180;
int y = 389;
int acceleration = 5;
 void setup(){
  size(550,800);
  cat = loadImage("cat.jpg");
 
  cat.resize(550,800);
  background(cat);
}

void draw(){
   if(mousePressed){
println("Mouse’s x-position: " + mouseX + "\n"
+ "Mouse’s y-position: " + mouseY + "\n");}
  noStroke();
  ellipse(x,y, 35,35 );
  ellipse(x+125, y+30, 35,35);
  fill(255,17,34);
  
}
void keyPressed() {
 x-=1.5*acceleration;
 y+=1.5*acceleration;
}  