void setup(){
  size(1000, 1000);
  noFill();
}

void draw(){
  background(0);
  translate(width/2, height/2);
  Circle temp = new Circle(10,10,100, color(255));
  temp.show();
}
