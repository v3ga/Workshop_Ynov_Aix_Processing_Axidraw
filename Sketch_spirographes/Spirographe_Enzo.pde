class Spirographe_Enzo extends Spirographe_Multi
{
  Spirographe_Enzo()
  {
    super("Spirographe Enzo");
    this.decodeJSONParams("{\"nb\":11,\"angleMax\":181,\"fZoom\":1.05}");
    this.nb2 = 1; 
    this.angleMax2 = 90.0;
    this.fZoom2 = 0.9;

    this.nb = 18;
    this.angleMax = 0;
    this.fZoom = 0.94;
    this.nb2 = 22;
    this.angleMax2 = 67;
    this.fZoom2 = 0.94;

    this.aniEasing = Ani.SINE_IN_OUT;
    this.aniDuration = 1.0;

  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0.5, 1.0));
    noFill();

    stroke(COLOR_LINES);
    rectMode(CENTER);
    for ( int i=0; i<nb; i = i+1 )
     {
     rotate( radians(getAngle() / nb) );
     scale(fZoom);
     }
     
    for (int i=0; i<nb2; i = i+1 )
    {
      rect(0, 0, 400, 500);
      rotate( radians(angleMax2*getT() / nb2) );
      scale(fZoom2);
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
    spirographe(width/2, height/2, 2);
    spirographe(width/2, height/2, 3);
    pop();
  }
}
