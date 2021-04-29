class Circle{
  float x, y, s;
  color c;
  Circle(float x_, float y_, float s_, color c_){
    x = x_;
    y = y_;
    s = s_;
    c = c_;
  }
  
  boolean in_circle(float x_,float y_){
    return dist(x, x_, y, y_) > s;
  }
  
  void show(){
    stroke(c);
    ellipse(x, y, s, s);
  }
  
  
}
