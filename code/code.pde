ArrayList<Circle> circles = new ArrayList<Circle>(); 
int count = 1;
float offset = 25;

void setup() {
  size(1000, 1000);
  noFill();

  circles.add(new Circle(0, 0, 50, color(255)));
  
  while (offset < 700) {
    float r = random(10, 100);
    float rad = random(0,100);
    float x = sin(2 * PI * rad / 100) * offset;
    float y = -cos(2 * PI * rad / 100) * offset;
    boolean hit = false;
    
    offset += log(offset) / 100;

    for (Circle c : circles) {
      if (c.in_circle(x, y, r + 1)) {
        hit = true;
        break;
      }
    }
    if (hit) continue;
    
    offset += 0.1;

    circles.add(new Circle(x, y, r, color(255)));
  }
}

void draw() {
  if (count < circles.size()) count += 5;
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < count - 1; i++) {
    circles.get(i).show();
  }
}
