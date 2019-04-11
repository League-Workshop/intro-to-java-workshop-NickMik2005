int foodX = 100;
int foodY = 20;
int score = 0;
void setup(){
  size(800,800);
  
}

void draw(){
  foodY+=3;
  background(141,233,237);
  fill(238,187,51);
  noStroke();
  ellipse(foodX,foodY, 20,20);
  if(foodY>height){
    foodY = 20;
    foodX = (int) random(width-20);
  } 
drawFish();
checkCatch(foodX, foodY);
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
if(score>25){
foodY=0;
textSize(40); //if it’s not big enough
text("YOU WIN!", 300, 200);
}
if(score>5){
  foodY+=4;
}
if(score>10){
foodY+=5;
}
if(score>15){
foodY+=6;
}
if(score>20){
 foodY+=7; 
}
}



void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-17,mouseY-17,20,20); //back side eye
     fill(255,200,88);
     ellipse(mouseX,mouseY,90,50); //body
     triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail
     stroke(0);
     triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(mouseX,mouseY,15,15); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-25,mouseY-15,20,20); //front eye
     fill(0,0,0);
     ellipse(mouseX-25,mouseY-15,5,5); //pupil
     fill(141,233,237);
     ellipse(mouseX-45,mouseY,25,25); //mouth
}

void checkCatch(int x, int y){
     if(x > mouseX && x < mouseX+70){
          if(y > mouseY-17 && y < mouseY+30){
               score++;
               foodY = 20; //if the food was eaten, make more food fall from the top
               foodX = (int) random(width-20);
          }
     }
     else if (foodY > height && score > 0){
          score--;
     }
}