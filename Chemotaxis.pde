 //declare bacteria variables here 
 Bacteria [] anet;
 void setup()   
 {    
   size(500,500);
   anet= new Bacteria[600];
   for (int i=0; i< anet.length; i++)
   {
     anet[i] = new Bacteria(/*(int) (Math.random()*255),(int) (Math.random()*255)*/);
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {   
   
   background(250,200,210);
   for (int i=0; i< anet.length;i++)
   {
     anet[i].show();
   anet[i].move();
   anet[i].attract();
   }
   //Bacteria();
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY;
   color myColor;
   
     Bacteria() 
     {
       myX=(int) (Math.random()*50)+225;
       myY=(int) (Math.random()*50)+225;
       myColor=(int)(Math.random()*255)+1; 
     }
     void show(){
       fill(myColor+90,50,myColor+30);
       ellipse(myX,myY,15,15);
       }
       void move()
   {
   myX=myX+ (int)(Math.random()*3-1);
   myY=myY+ (int)(Math.random()*3-1);
      if (mouseX<myX)
     myX=myX+(int)(Math.random()*2+4);
   if (mouseX>myX)
     myX=myX+(int)(Math.random()*2-4);
   if (mouseY<myY)
     myY=myY+(int)(Math.random()*2+4);
     if (mouseY>myY)
     myY=myY+(int)(Math.random()*2-4);
  if (myX>490)
     myX=myX+(int)(Math.random()*2-12);
    if (myX<10)
     myX=myX+(int)(Math.random()*2+4);
   if (myY>490)
     myY=myY+(int)(Math.random()*2-12);
   if (myY<10)
     myY=myY+(int)(Math.random()*2+4);

        
     ;
   } 
   void attract(){
     if (mousePressed==true)
   {
     {
     if (mouseX>myX)
     myX=myX+4;
     else
     myX=myX-4;
     }
     {
     if (mouseY>myY)
     myY=myY+4;
     else
     myY=myY-4;
     }
   } 
  }

   //lots of java!   
 

}



