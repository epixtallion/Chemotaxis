//initialize how many bacteria there are
Bacteria b[] = new Bacteria[20];

//background color variable
color bg = color(52, 102, 155);

 void setup()   
 {
 	background(bg);
 	size(400, 400);
 	for(int i = 0; i < b.length; i++){
 		b[i] = new Bacteria();
 	}
 }   
 void draw()   
 {
 	fill(bg);
 	rect(0, 0, 400, 400);
 	for(int i = 0; i < b.length; i++){
 		b[i].move();
 		for(int ii = 0; ii < b[i].speed; ii++){
 			b[i].show();
 		}
 	}
 }  
 class Bacteria    
 {
 	int x, y;
 	int angle;
 	int speed = 5;
 	color colour;
	Bacteria() {
		x = (int) (Math.random() * 405) - 4;
		y = (int) (Math.random() * 405) - 4;
	}
	void move(){
		//If mouse pressed
		if(mousePressed){
			int xAdd = x-mouseX < 0 ? -1 : 1;
			int yAdd = y-mouseY < 0 ? -1 : 1;
			x = x<0 ? 0
				: x>400 ? 400 : x + (int) (Math.random()*(2*speed+1))-speed+speed*xAdd;
			y = y<0 ? 0
				: y>400 ? 400 : y + (int) (Math.random()*(2*speed+1))-speed+speed*yAdd;
		} else {
			x = x<0 ? 0
				: x>400 ? 400 : x + (int) (Math.random()*(2*speed+1))-speed;
			y = y<0 ? 0
				: y>400 ? 400 : y + (int) (Math.random()*(2*speed+1))-speed;
		}
	}
	void show(){
		stroke(1);
		fill(255, 183, 68);
		ellipse(x, y, 50, 50);
		noStroke();
		if(mousePressed){
			fill(50);
			ellipse(x-15, y, 10, 10);
			ellipse(x+15, y, 10, 10);
		} else {
			fill(50);
			ellipse(x-15, y, 4, 10);
			ellipse(x+15, y, 4, 10);
		}
	}
 }
 /*class Bubble{
 	int x, y, size, speed;
 	boolean dead = false
 	Bubble(){
 		x = (int) (Math.random() * 405) - 4;
 		y = 400;
 		size = (int) (Math.random() * 25) + 5;
 		speed = (int) (Math.random() * 10) + 1;
 	}
 	void move(){
 		if (!dead){
 			int offset = y%(800/speed) < 400/speed  ? (int) (Math.random()*speed + 1)
 				: (int) (Math.random()*speed - speed);
 			y = y + speed;
 			x = x + offset;
 			fill(144, 244, 239, 30);
 			ellipse()
 		}
 	}
 }*/