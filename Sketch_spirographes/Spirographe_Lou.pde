class Spirographe_Lou extends Spirographe_Multi
{
  Spirographe_Lou()
  {
    super("Spirographe Lou");
    this.decodeJSONParams("{\"nb\":3,\"angleMax\":91,\"fZoom\":1.0,\"nb2\":34,\"angleMax2\":360,\"fZoom2\":0.96}");
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
      //bezier(0,0, 40,-10, 130,-40, 150,0)
      //bezier(0,0, 40, 10, 130, 40, 150,0)
      //ellipse(100,0,300,50);
      // line(-60,90,mouseX,30);
      //rect(-60,0,250,20);
      rotate( radians(getAngle() / nb) );
      scale(fZoom);
    }

      rect(0, 0, 75, 75);

    for ( int i=0; i<nb; i = i+1 )
    {

      rectMode(CENTER);
      //stroke('blue');
      //rect(100,153,50,50);
      //circle(100,123,50),
      //triangle(100, 0, 80, 100, 10, 10);
      rotate( radians(getAngle() / nb)  );
      scale(fZoom);
    }  

    for ( int i=0; i<nb2; i = i+1 )
    {
      bezier(0, 0, 20, -5, 100, -30, 60, 0);
      bezier(0, 0, 40, 10, 130, 40, 190, 0);


      rectMode(CENTER);
      circle(0, 0, 400);
      rotate( radians(angleMax2 / nb2));
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
//    spirographe(210,240,1);
    pop();
  }
}
