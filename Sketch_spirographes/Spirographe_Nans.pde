class Spirographe_Nans extends Spirographe
{
  Spirographe_Nans()
  {
    super("Spirographe Nans");
    this.decodeJSONParams("{\"nb\":12,\"angleMax\":6,\"fZoom\":1}");
  }

  void spirographe(float x, float y, float s)
  {
    push();
    translate(x, y);
    scale(s*gScale);
    for ( int i=0; i<nb; i = i+1 )
    {
      //bezier(40,20, 40,-10, 130,-40, 150,0)
      //bezier(80,80, 40, 200, 130, 40, 150,0)
      //ellipse(100,0,300,50);
      //line(-60,90,mouseX,30);
      //rect(-60,0,250,20);
      rectMode(CENTER);
      push();
      //stroke('blue');
      rect(0, 0, 100,100);
      pop();
      push();
      //stroke('blue');
      circle(0, 159, 200);
      pop();
        //circle(0,100,200);
        //circle(0,150,200);
        //circle(100,0,200);
        //circle(150,0,200);
        push();
      //stroke('red');
      line(0, 150, 0, 0);
      line(150, 150, 0, 0);
      pop();
      push();
      //stroke('pink');
      rect(0, 0, 300,300);
      pop();
      //rect(100,153,50,50);
      //circle(100,123,50),
      //triangle(100, 0, 80, 100, 10, 10);
      rotate( getAngle() / nb );
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
    spirographe(width/2, height/2, 1);
    pop();
  }
}
