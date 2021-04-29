ArrayList<Circle> circles = new ArrayList<Circle>(); 
int count = 1;

void setup(){
  size(1000, 1000);
  noFill();
  
  circles.add(new Circle(0, 0, 50, color(255)));
}

void draw(){
  if(count < circles.size()){
    count++;
  }
  background(0);
  translate(width/2, height/2);
  //Circle temp = new Circle(10,10,100, color(255));
  //temp.show();
  
  for(int i = 0; i < count; i++){
    circles.get(i).show();
  }
}
