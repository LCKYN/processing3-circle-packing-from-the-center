ArrayList<Circle> circles = new ArrayList<Circle>(); 
int count = 1;
float offset = 25;

void setup() {
  size(1000, 1000);
  noFill();

  circles.add(new Circle(0, 0, 50, color(255)));
  
  while (offset < 500) {
    float r = random(10, 100);
    float rad = random(0,100);
    float x = sin(2 * PI * rad / 100) * 200;
    float y = -cos(2 * PI * rad / 100) * 200;
    boolean hit = false;
    
    offset += 100;
    println(r);

    for (Circle c : circles) {
      if (c.in_circle(x, y, r)) {
        hit = true;
        break;
      }
    }
    if (hit) continue;
    
    offset += 100;

    circles.add(new Circle(x, y, r, color(255)));
  }
  
  for (int i = 0; i < 100; i++) {
    float x = sin(2 * PI * i/ 100 ) * 200;
    float y = -cos(2 * PI * i / 100) * 200;
    float r = random(10, 100);
    
     circles.add(new Circle(x, y, r, color(255)));
  }
}

void draw() {
  if (count < circles.size()) count++;
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < count; i++) {
    circles.get(i).show();
  }
  
  boolean temp = false;
  for (Circle c : circles) {
      if (c.in_circle(mouseX - width/2, mouseY - height / 2, 1)) {
        temp = true;
        break;
      }
    }
   println(frameCount + " : " +temp);
}
