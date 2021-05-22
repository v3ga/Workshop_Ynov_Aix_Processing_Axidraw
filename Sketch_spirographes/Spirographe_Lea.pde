class Spirographe_Lea extends Spirographe
{
  Spirographe_Lea()
  {
    super("Spirographe Léa");
    this.decodeJSONParams("{'nb':60,'angleMax':360,'fZoom':1.0}");
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0,1));
    noFill();
    for ( int i=0; i<nb; i = i+1 )
    {
      bezier(0, 0, 40, -10, 130, -40, 190, 0);
      bezier(0, 0, 40, 10, 130, 40, 190, 0);
      //ellipse(100,0,300,50);
      // line(-60,90,mouseX,30);
      rect(60, 0, 60, 20);
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
