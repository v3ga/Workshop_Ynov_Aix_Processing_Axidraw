class Spirographe_Antoine extends Spirographe
{
  Spirographe_Antoine()
  {
    super("Spirographe Antoine");
    this.decodeJSONParams("{\"nb\":13,\"angleMax\":18,\"fZoom\":1.01}");
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0.5, 1.0));
    noFill();
    stroke(COLOR_LINES);

    for ( int i=0; i<nb; i = i+1 )
    {
      rectMode(CENTER);
      rect(0, 0, 300, 300);
      rectMode(CENTER);
      rect(0, 0, 250, 250);

//      stroke(100, 200, 50);
      rectMode(CENTER);
      rect(0, 0, 200, 200);


      rotate( radians(getAngle() / nb) );
      scale(fZoom);
    }
    pop();
  }


  void draw()
  {
    push();
    noFill();
    stroke(COLOR_LINES);
    strokeWeight(1);
    translate(width/2, height/2);
    spirographe(0, 0, 1);
    rotate(radians(90));
    spirographe(0, 0, 1);

    pop();
  }
}
