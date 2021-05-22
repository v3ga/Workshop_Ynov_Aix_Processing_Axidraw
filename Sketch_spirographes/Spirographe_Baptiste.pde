class Spirographe_Baptiste extends Spirographe_Multi
{
  Spirographe_Baptiste()
  {
    super("Spirographe Baptiste");
    this.decodeJSONParams("{\"nb\":33,\"angleMax\":55,\"fZoom\":1,\"nb2\":60,\"angleMax2\":92,\"fZoom2\":0.98}");
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0.5,1.0));
    noFill();

    push();
    for ( int i=0; i<nb; i = i+1 )
    {
      //bezier(0,0, 40,-10, 130,-40, 150,0)
      //bezier(0,0, 80, 50, 150, 10, 80,500)
      stroke(COLOR_LINES);
      //ellipse(0,0,200,750);
      //line(-60,90,mouseX,30);

      rectMode(CENTER);
      rect(0, 0, 200, 500);
      rotate( radians(getAngle() / nb) );
      scale(fZoom);
    }  
    pop();
    for ( int i=0; i<nb2; i = i+1 )
    {
      //bezier(0,0, 40,-10, 130,-40, 150,0)
      //bezier(0,0, 40, 10, 130, 40, 150,0)
      //ellipse(100,0,300,50);
      // line(-60,90,mouseX,30);
      stroke(COLOR_LINES);

      rectMode(CENTER);
      rect(0, 0, 400, 400);
      rotate( radians(angleMax2 / nb2) );
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
    pop();
  }
}
