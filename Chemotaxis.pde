//initialize how many bacteria there are
Bacteria b[] = new Bacteria[20];

//background color variable
int bg = color(200,200,200);

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
 	fill(200, 200 ,200);
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
 	int x, y, angle;
 	int speed = 5;
 	int colour;
	Bacteria() {
		x = (int) (Math.random() * 405) - 4;
		y = (int) (Math.random() * 405) - 4;
		colour = color((int) (Math.random() * 203) + 53,
			(int) (Math.random() * 203) + 53,
			(int) (Math.random() * 203) + 53);
	}
	void move(){
		//Random angle within range for moving towards
		angle = (int) (Math.random()* 364)-3;

		//If mouse collides with this 
		if(get(mouseX, mouseY) == this.colour){
			angle = (int) (atan((y-mouseY)/(x-mouseX))/PI/2*360);
		}

		//For loop that moves toward angle direction
		if (x < 0) x = 0;
		else if (x>400) x = 400; else
			x = x + (int) (cos(2*PI*angle/360)*speed);
		if (y < 0) y = 0;
		else if (y>400) y = 400; else
			y = y + (int) (sin(2*PI*angle/360)*speed);
	}
	void show(){
		fill(colour[0], colour[1], colour[2]);
		ellipse(x, y, 50, 50);
	}
 }    