ArrayList<Circle> circles = new ArrayList<Circle>(); 
int count = 1;
float offset = 25;

void setup() {
  size(1000, 1000);
  noFill();

  circles.add(new Circle(0, 0, 50, color(255)));

  while (offset < 500) {
    float r = random(0, 30);
    float rad = random(-PI, PI);
    float x = sin(rad) * offset;
    float y = cos(-rad) * offset;
    boolean hit = false;

    offset += 0.1;

    for (Circle c : circles) {
      if (c.in_circle(x, y, r)) {
        hit = true;
        break;
      }
    }
    if (hit) continue;

    circles.add(new Circle(25 + x, 25 + y, r, color(255)));
  }
}

void draw() {
  if (count < circles.size()) count++;
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < count; i++) {
    circles.get(i).show();
  }
}
