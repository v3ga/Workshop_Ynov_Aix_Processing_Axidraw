class Spirographe_Bastien extends Spirographe_Multi
{
  Spirographe_Bastien()
  {
    super("Spirographe Bastien");
    this.decodeJSONParams("{\"nb\":60,\"angleMax\":0,\"fZoom\":0.96,\"nb2\":37,\"angleMax2\":61,\"fZoom2\":0.96,\"nb3\":1,\"angleMax3\":360,\"fZoom3\":1.05}");
    this.aniEasing = Ani.SINE_IN_OUT;
    //this.aniDuration = 2.0;
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s * gScale * getScale(0.85,1.0));
    noFill();

    for ( int i=0; i<nb; i = i+1 )
    {
      //bezier(0,0, 40,-10, 130,-40, 150,0)
      // bezier(0,0, 40, 10, 130, 40, 150,0)
      //ellipse(100,0,300,50);
      //line(-60,90,mouseX,30);
      //rect(-60,0,250,20);
      rectMode(CENTER);
      rect(0, 0, 200, 500);
      rotate( radians(getAngle() / nb) );
      scale(fZoom);
      stroke(COLOR_LINES);
      rectMode(CENTER);
      rect(0, 0, 200, 500);
      rotate( radians(angleMax2*getT() / nb2) );
      scale(fZoom2);
      stroke(COLOR_LINES);
      rect(0, 0, 200, 500);

      rotate( radians(angleMax3*getT() / nb3) );
      scale(fZoom3);
      stroke(COLOR_LINES);
      rect(0, 0, 200, 500);
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
