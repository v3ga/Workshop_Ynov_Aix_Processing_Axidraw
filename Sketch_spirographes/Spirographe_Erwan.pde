class Spirographe_Erwan extends Spirographe
{
  Spirographe_Erwan()
  {
    super("Spirographe Erwan");
    this.decodeJSONParams("{\"nb\":8,\"angleMax\":1385,\"fZoom\":0.89}");
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


      beginShape();

      vertex(75+100, 90+50);
      vertex(10+10, +50);
      vertex(30+10, 90+150);


      endShape(CLOSE);
      circle(100, 110, 110);
      
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
