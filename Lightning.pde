int x = 0;
int y = 200;
int x2 = x+(int)(Math.random()*10);
int y2 = y+(int)(Math.random()*18)-9;

int x3 = 400;
int y3 = 200;
int x4 = x3-(int)(Math.random()*10);
int y4 = y3+(int)(Math.random()*18)-9;

float r = (float)Math.random()*255;
float g = (float)Math.random()*255;
float b = (float)Math.random()*255;

int diam = 35;

void setup(){
size(400,400);
background(0);
strokeWeight(1);
noLoop();
}

void draw(){
  
  fill(181, 45, 0);
  ellipse(0,200,diam,diam);
  ellipse(400,200,diam,diam);
  
  stroke(r,g,b);
  
     while (x2 < 200){
       
       line(x,y,x2,y2);
       x = x2;
       y = y2;
       x2 = x+(int)(Math.random()*10);
       y2 = y+(int)(Math.random()*18)-9;
     }
     
     while (x3 > 200){
       
       line(x3,y3,x4,y4);
       x3 = x4; //400
       y3 = y4; //200
       x4 = x3-(int)(Math.random()*10);
       y4 = y3+(int)(Math.random()*18)-9;
     }
   
     line (x,y,x3,y3); //connection
     
     if (keyPressed == true && (key == 'c' || key == 'C')){
     
        background (0);
       
         x = 0;
         y = 200;
         x2 = x+(int)(Math.random()*10);
         y2 = y+(int)(Math.random()*18)-9;
   
         x3 = 400;
         y3 = 200;
         x4 = x3-(int)(Math.random()*10);
         y4 = y3+(int)(Math.random()*18)-9;
       
          fill(181, 45, 0);
          ellipse(0,200,diam,diam);
          ellipse(400,200,diam,diam);
        
        redraw();
      
    }
     
}


void mousePressed(){
   x = 0;
   y = 200;
   x2 = x+(int)(Math.random()*10);
   y2 = y+(int)(Math.random()*18)-9;
   
   x3 = 400;
   y3 = 200;
   x4 = x3-(int)(Math.random()*10);
   y4 = y3+(int)(Math.random()*18)-9;
   
   r = (float)Math.random()*255;
   g = (float)Math.random()*255;
   b = (float)Math.random()*255;
   
   redraw();
}

void keyPressed(){
    redraw();
}
