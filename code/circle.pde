class Circle{
  float x, y, s;
  color c;
  Circle(float x_, float y_, float s_, color c_){
    x = x_;
    y = y_;
    s = s_;
    c = c_;
  }
  
  boolean in_circle(float x_,float y_,float r_){
    return dist(x, y, x_, y_) > s/2 + r_;
  }
  
  void show(){
    stroke(c);
    ellipse(x, y, s, s);
  }
  
  
}
