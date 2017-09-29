 //declare bacteria variables here 
 Bacteria [] anet;
 void setup()   
 {    
   size(500,500);
   anet= new Bacteria[6000];
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
   }
   //Bacteria();
 	//move and show the bacteria   
 }  
 void mousePressed(){
  if (mouseX> anet.X)
    myX=myX+(int)(Math.random()*5)-1;
    else 
    myX=myX+(int)(Math.random()*5)-3;
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
   myX=myX+ (int)(Math.random()*20-10);
   myY=myY+ (int)(Math.random()*20-10);
      if (mouseX<myX)
     myX=myX+(int)(Math.random()*2+4);
   if (mouseX>myX)
     myX=myX+(int)(Math.random()*2-4);
   if (mouseY<myY)
     myY=myY+(int)(Math.random()*2+4);
     if (mouseY<myY)
     myY=myY+(int)(Math.random()*2-4);
   /*if (myX>280)
     myX=myX+(int)(Math.random()*2-4);
   if (myX<220)
     myX=myX+(int)(Math.random()*2+4);
   if (myY>280)
     myY=myY+(int)(Math.random()*2-4);
   if (myY<220)
     myY=myY+(int)(Math.random()*2+4);*/

        
     ;
   } 
     
     
   }

 	//lots of java!   
 