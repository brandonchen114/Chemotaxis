 Bacteria [] poppy;
 //declare bacteria variables here   
 void setup()   
 {     
 	size(400, 400);
 	poppy = new Bacteria[100];
 	for(int i = 0; i < poppy.length; i++)
 	{
 		poppy[i] = new Bacteria(200,200);
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	for(int i = 0;i < poppy.length; i++)
 	{
 		poppy[i].move();
 		poppy[i].show();
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(int x, int y)
 	{
 		myX = (int)(Math.random()*400);
 		myY = (int)(Math.random()*400);
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 	void move()
 	{
 		myX += (int)(Math.random()*5)-2;
 		myY += (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 10, 10);
 	}
 	//lots of java!   
 }    