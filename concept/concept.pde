class Jumper{
  int myX, myY;
  private int diffX, diffY;
  Jumper(){
    myX = (int) (Math.random()*506)-5;
    myY = (int) (Math.random()*506)-5;
  }
  void jump(){
    diffX = (int) (Math.random()*21)-10;
    diffY = (int) (Math.random()*21)-10;
    myX = (myX+diffX > 500 || myX+diffX < 0) ? myX - diffX : myX + diffX;
    myY = (myY+diffY > 500 || myY+diffY < 0) ? myY - diffY : myY + diffY;
    this.show();
  }
  void show(){
    for(int i = (myX-diffX)/diffX; i < myX; i = i+(myX - diffX)/diffX){
      fill(130, 255, 227);
      ellipse(i, myY, 25, 25);
  }
}
Jumper jumpo = new Jumper();
void setup(){ size(500, 500); }
void draw(){
  clear();
  background(78, 79, 69);
  jumpo.jump();
}