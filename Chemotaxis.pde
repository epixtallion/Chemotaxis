//initialize how many bacteria there are
Bacteria b[] = new Bacteria[20];

 void setup()   
 {
 	size(400, 400);
 	for(int i = 0; i < b.length; i++){
 		b[i] = new Bacteria();
 	}
 }   
 void draw()   
 {
 	fill(200, 200 ,200);
 	rect(0, 0, 400, 400);
 	for(int i = 0; i < b.length; i++){
 		b[i].show();
 		b[i].move();
 	}  
 }  
 class Bacteria    
 {     
 	int x, y;
 	int colour[] = new int[3];
	void move(){
		//Move x coordinate
		if(x-4 <= 0) x = x + (int) (Math.random()*5);
		else if (x + 4 >= 400) x = x - (int) (Math.random()*5);
		else x = x + (int) (Math.random()*9)-4;

		//Move y coordinate
		if(y-4 <= 0) y = y + (int) (Math.random()*5);
		else if (y + 4 >= 400) y = y - (int) (Math.random()*5);
		else y = y + (int) (Math.random()*9)-4;
	}
	void show(){
		fill(colour[0], colour[1], colour[2]);
		ellipse(x, y, 50, 50);
	}
	Bacteria(){
		x = (int) (Math.random() * 405) - 4;
		y = (int) (Math.random() * 405) - 4;
		colour[0] = (int) (Math.random() * 203) + 53;
		colour[1] = (int) (Math.random() * 203) + 53;
		colour[2] = (int) (Math.random() * 203) + 53;
	}
 }    