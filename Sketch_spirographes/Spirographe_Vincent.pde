class Spirographe_Vincent extends Spirographe
{
  Spirographe_Vincent()
  {
    super("Spirographe Vincent");
    this.decodeJSONParams("{'nb':50,'angleMax':90,'fZoom':1.0}");

  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0.85,1));
    noFill();
    for ( int i=0; i<nb; i = i+1 )
    {
      rectMode(CENTER);
      rect(0, 0, 300, 300);
      rotate( radians(getAngle() / nb) );
    }  
    pop();
  }


  void draw()
  {
    push();
    noFill();
    stroke(COLOR_LINES);
    strokeWeight(1);
    spirographe(width/2, height/2, 1);
    pop();
  }
}
