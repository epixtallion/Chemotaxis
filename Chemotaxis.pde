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
 		b[i].move();
 		b[i].show();
 	}
 }  
 class Bacteria    
 {
 	int x, y, angle;
 	int speed = 8;
 	int colour[] = new int[3];
	Bacteria() {
		x = (int) (Math.random() * 405) - 4;
		y = (int) (Math.random() * 405) - 4;
		colour[0] = (int) (Math.random() * 203) + 53;
		colour[1] = (int) (Math.random() * 203) + 53;
		colour[2] = (int) (Math.random() * 203) + 53;
	}
	void move(){
		//Check if bacteria can move out of bounds
		//X axis
		int angleMin = 0;
		int angleMax = 360;
		if(x-speed <= 0){
			angleMax = 180;
			//Y axis
			if(y-speed <= 0){
				angleMin = 90;
			} else if (y + speed >= 400){
				angleMax = 90
			}
		} else if (x + speed >= 400){
			angleMin = 180;
			//Y axis
			if(y-speed <= 0){
				angleMax = 270;
			}
		}
		//If all checks are cleared, make completely random number
		else {
			tY = y + (int) (Math.random()*(2*speed+1))-speed;
		}
	}
	void show(){
		fill(colour[0], colour[1], colour[2]);
		ellipse(x, y, 50, 50);
	}
 }    