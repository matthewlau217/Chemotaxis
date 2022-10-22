 owo[] uwu;
 void setup()   
 {     
   size(500,500);
   uwu = new owo[100
   ];
   for (int i = 0; i < uwu.length; i++){
     uwu[i] = new owo();
   }
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < uwu.length; i++){
     uwu[i].move();
     uwu[i].show();
   }
 }  
 class owo    
 {     
   int myX, myY;
   owo(){
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }
   void move(){
     if (myX > 250){
       myX += (int)(Math.random()*5)-3;
     } else {
       myX += (int)(Math.random()*5)-1;
     }
     if (myY > 250){
       myY += (int)(Math.random()*5)-3;
     } else {
       myY += (int)(Math.random()*5)-1;
     }
     if (myX == 0){
       redraw();
     }
   }
   void show(){
     fill((int)(Math.random()*255));
     ellipse(myX, myY, 2, 2);
   }
 }    
