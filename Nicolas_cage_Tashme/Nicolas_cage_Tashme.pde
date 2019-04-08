PImage mustache;
PImage nickcage;
void setup(){
  nickcage=loadImage("nickcage.jpg");
  size(600,800);
  nickcage.resize(600,800);
  mustache=loadImage("mustache.png");
  mustache.resize(200,100);
}
void draw(){
  background(nickcage);
  image(mustache,mouseX,mouseY);
  if(mousePressed){
    PImage mustache;
    background(nickcage);}
}