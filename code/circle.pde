class Circle{
  float x, y, s;
  color c;
  float fb,b;
  Circle(float x_, float y_, float s_, color c_){
    x = x_;
    y = y_;
    s = s_;
    c = c_;
    fb = -1;
    b = 0;
  }
  
  boolean in_circle(float x_,float y_,float r_){
    return dist(x, y, x_, y_) < s/2 + r_;
  }
  
  void breathe(){
    if(b > 5){
      fb = -random(0,1);
    }else if(b < -5){
      fb = random(0,1);
    }
    b += fb;
  }
  
  void show(){
    stroke(c);
    fill(c);
    ellipse(x, y, s+b, s+b);
  }
  
  
}
