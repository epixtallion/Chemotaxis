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
 	int x, y;
 	int angle;
 	int speed = 5;
 	color colour;
	Bacteria() {
		x = (int) (Math.random() * 405) - 4;
		y = (int) (Math.random() * 405) - 4;
		colour = color((int) (Math.random() * 203) + 53,
			(int) (Math.random() * 203) + 53,
			(int) (Math.random() * 203) + 53);
	}
	void move(){
		//If mouse collides with this or mouse pressed 
		if(get(mouseX, mouseY) == colour){
			x = x<0 ? 0
				: x>400 ? 0 : x + (int) (Math.random()*2*(speed+speed/(x-mouseX))-speed);
			y = y<0 ? 0
				: y>400 ? 0 : y + (int) (Math.random()*2*(speed+speed/(y-mouseY))-speed);
		} else if(mousePressed){
			x = x<0 ? 0
				: x>400 ? 0 : x + (int) (Math.random()*2*(speed+speed/(x-mouseX))-speed);
			y = y<0 ? 0
				: y>400 ? 0 : y + (int) (Math.random()*2*(speed+speed/(y-mouseY))-speed);
		} else {
			x = x<0 ? 0
				: x>400 ? 0 : x + (int) (Math.random()*2*(speed+1)-speed);
			y = y<0 ? 0
				: y>400 ? 0 : y + (int) (Math.random()*2*(speed+1)-speed);
		}
	}
	void show(){
		fill(colour);
		ellipse(x, y, 50, 50);
	}
 }    