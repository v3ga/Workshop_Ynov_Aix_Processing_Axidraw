// ----------------------------------------------------------------
class GraphicElement
{
  String name = "";
  float t = 0.0;
  float aniDuration = 1.5;
  Easing aniEasing = Ani.EXPO_OUT;
  Ani ani;

  GraphicElement(String name_)
  {
    this.name = name_;
  }

  void beginAnimation()
  {
    t = 0.0;
    Ani.to(this, aniDuration, "t", 1.0, aniEasing);
  }

  float getT()
  {
    if (bModePlot)
      return 1.0f;
    return t;
  }

  float getScale(float min, float max)
  {
    if (bModePlot)
      return 1.0f;
    return map(t,0,1,min,max);  
  }
  
  void push() {
    pushStyle();
    pushMatrix();
  }
  void pop() {
    popMatrix();
    popStyle();
  }

  void circle(float x, float y, float d)
  {
    ellipse(x, y, d, d);
  }

  String getFilename() {
    return "export_"+this.name+".svg";
  }
  void draw() {
  }
  void decodeJSONParams(String str) {
  }
}
