     int total = 0;
        void setup()
  {
      noLoop();
      textAlign(CENTER);
      textSize(20);
      size(500,500);
  }
  
  
  
  void draw()
  { 

     background(192);
    for(int y = 0; y < 500; y+=100){
    for(int x = 0; x < 500; x+=100) {
          Die bob = new Die(x,y);
          bob.show();

    }
  }

                      
               text(total,250,490);   
      
  }
  
  void mousePressed()
  {
      redraw();
      total = 0;
  }
  
  class Die //models one single dice cube
  {
      //member variable declarations here
    int myX;
    int myY;
    int dots;
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void show()
      {
       fill( (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256) );
      rect(myX,myY,100,100,28);


            fill(255);
 
          

          dots = (int)((Math.random()*6)+1);
            total = dots + total;
       


       fill(0);
       
      if (dots == 1){

      ellipse(myX+50,myY+50,20,20);
      }
      else if (dots == 2){

       ellipse(myX+35,myY+50,20,20);
       ellipse(myX+65,myY+50,20,20);
      }
      else if (dots == 3){
       ellipse(myX+50,myY+35,20,20);
       ellipse(myX+35,myY+60,20,20);
       ellipse(myX+65,myY+60,20,20);
      }
      else if (dots == 4){
       ellipse(myX+35,myY+35,20,20);
       ellipse(myX+65,myY+35,20,20);
       ellipse(myX+35,myY+65,20,20);
       ellipse(myX+65,myY+65,20,20);
      }
      else if (dots == 5){
       ellipse(myX+35,myY+35,20,20);
       ellipse(myX+65,myY+35,20,20);
       ellipse(myX+35,myY+65,20,20);
       ellipse(myX+65,myY+65,20,20);
       ellipse(myX+50,myY+50,18,18);
      }
       else if (dots == 6){
       ellipse(myX+50,myY+35,20,20);
       ellipse(myX+75,myY+35,20,20);
       ellipse(myX+50,myY+65,20,20);
       ellipse(myX+75,myY+65,20,20);
       ellipse(myX+25,myY+35,20,20);
       ellipse(myX+25,myY+65,20,20);
       }
         
      }
  }

