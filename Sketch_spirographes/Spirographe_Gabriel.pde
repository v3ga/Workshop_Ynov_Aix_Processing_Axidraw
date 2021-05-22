class Spirographe_Gabriel extends Spirographe
{
  Spirographe_Gabriel()
  {
    super("Spirographe Gabriel");
    this.decodeJSONParams("{'nb':10,'angleMax':98,'fZoom':1.05}");
    this.aniDuration = 1.5;
    this.aniEasing = Ani.BOUNCE_OUT;
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale);
    noFill();
    for ( int i=0; i<nb; i = i+1 )
    {
      bezier(0, 0, 40, -10, 130, -40, 190, 0);
      bezier(0, 0, 40, 10, 130, 40, 190, 0);
      //ellipse(100,0,300,50);
      // line(-60,90,mouseX,30);
      rect(-60, 0, 250, 20);
      rectMode(CENTER);
      //rect(0,0,300,300);
      circle(-60, -60, 50);
      rect(60, 60, 50, 50);
      rotate( radians(getAngle() / this.nb) );
      scale(this.fZoom);
    }  
    pop();
  }


  void draw()
  {
    push();
    noFill();
    rectMode(CENTER);
//    rect(width/2, height/2, gScale*180*2.5, gScale*267*2.5);
    stroke(COLOR_LINES);
    strokeWeight(1);
    spirographe(width/2, height/2, 1);
    pop();
  }
}
