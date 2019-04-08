PImage rainbow;
PImage unicorn;
void setup() {
  rainbow=loadImage("rainbow.png");
  size(1000,400);
  rainbow.resize(1000,400);
  background(rainbow);
  unicorn=loadImage("unicorn.png");
  unicorn.resize(100,100);
}

void draw() {
  background(rainbow);
  image(unicorn,mouseX,mouseY);
  if(mousePressed){
    PImage unicorn;}
}