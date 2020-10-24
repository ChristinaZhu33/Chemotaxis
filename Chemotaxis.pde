Dot bob;
Dot[] many;
void setup () {
  size (500,500);
  frameRate(30);
  bob = new Dot();
  many = new Dot [100]; 
  for (int i = 0; i < many.length; i++) {
    many[i] = new Dot();
  }
}
void draw () {
  background (204, 230, 240);
  //background sun
  fill(255, 240, 158);
  ellipse(250,100,50,50);
  
  
  //background clouds
  fill(255);
  //left cloud
  ellipse(0,100,60,70);
  ellipse(50,110,70,50);
  ellipse(100,150,90,50);
  rect(0,125,90,50);
  //right cloud
  ellipse(500,100,60,70);
  ellipse(450,110,70,50);
  ellipse(400,150,100,50);
  rect(420,124,90,50);
  
  //background hills
  fill(181, 219, 169);
  ellipse(400,500,600,400);
  ellipse(0,500,700,400);
  bob.show();
  bob.move();
  if (mousePressed==true){   
  bob.follow();
}
  for (int i = 0; i < many.length; i++) {
    many[i].show();
    many[i].move();
    if (mousePressed==true){   
    many[i].follow();
}
  }
}

class Dot {
  int myX, myY;
  Dot () {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  void move() {
    myX = myX + (int)(Math.random()*20)-10;
    myY = myY + (int)(Math.random()*20)-10; 
  if(myX > 500){
    myX=500;
  }
  if(myX<0){
    myX=0;
  }
  if(myY>500){
    myY=500;
  }
  if(myY<0){
    myY=0;
  }
  }
  void follow(){
  if(myX > mouseX+((int)Math.random()*100)){
    myX = myX-(int)(Math.random()*15);
  }
   if(myY > mouseY+((int)Math.random()*100)){
    myY = myY-(int)(Math.random()*15);
      }
   if(myY < mouseY+((int)Math.random()*100)){
    myY = myY+(int)(Math.random()*15);
       }
   if(myX < mouseX+((int)Math.random()*100)){
    myX = myX+(int)(Math.random()*15);
   }
   }
  void show() {
    noStroke();
    
    //bees
    fill (255, (int)(Math.random()*55)+200, (int)(Math.random()*160)+5);
    ellipse (myX, myY, 25, 15);
    fill(51, 39, 16);
    ellipse (myX+5, myY-2, 2, 2);
    ellipse (myX+10, myY-2, 2, 2);
    fill(138, 108, 0);
    rect (myX-4, myY-6, 7, 14);
    fill(255);
    ellipse (myX-7, myY-10, 9, 12);
    ellipse (myX-2, myY-10, 9, 12);
    
       //petals
    fill(255, 251, 240);
    ellipse(mouseX, mouseY+20, 25, 30);
    ellipse(mouseX, mouseY-20, 25, 30);
    ellipse(mouseX+20, mouseY, 25, 30);
    ellipse(mouseX-20, mouseY, 25, 30);
    //center flower
    fill(252, 186, 3);
    ellipse(mouseX, mouseY, 20, 20);
  }
}     
