class Grid extends GraphicElement
{
  int nb = 10;
  float d = 40.0;
  float r[];
  boolean bDessinCellules = false;
//  float margin = 40;

  Grid(String name)
  {
    super(name);
    this.generate();
    this.aniDuration = 1.0;
    this.aniEasing = Ani.SINE_IN_OUT;
  }

  // --------------------------------------------------
  void setNb(int nb)
  {
    this.nb = nb;
    this.generate();
  }

  // --------------------------------------------------
  void chooseRandom()
  {
    r = new float[nb*nb];
    for (int i=0; i<nb*nb; i++)
      r[i] = int( random(0, 4) );
  }

  // --------------------------------------------------
  float getRandom(int i, int j)
  {
    return r[i+j*nb];
  }

  // --------------------------------------------------
  void generate()
  {
    float m = bModePlot ? margin : 4*margin;
    float w = min(width,height);    
    this.d = (w-2*m) / float(nb);  
    chooseRandom();
  }

  // --------------------------------------------------
  void draw() 
  {
    push();
    float wGrid = nb * this.d;    
    float hGrid = nb * this.d;
    
//    translate(margin, ((height-2*margin)-d*nb)/2+margin );
    translate((width-wGrid)/2, (height-hGrid)/2 );
    noFill();  
    stroke(COLOR_LINES);
    strokeWeight(2);
    float x, y; // vont stocker la position du rectangle
    float r; // va stocker un nombre aléatoire compris entre 0 et 3
    for (int j=0; j < nb; j=j+1 )
    {
      for (int i=0; i < nb; i=i+1 )
      {
        // Position (x,y) de la cellule
        x = i*d;
        y = j*d;
        // Choix d'un nombre entier au hasard entre 0 et 3
        r = getRandom(i, j);
        // dessin de la cellule (rect avec le numéro aléatoire dessiné)
        if (bDessinCellules)
          drawCell(i, j, r);
        // Dessin des cellules en fonction du nombre tiré
        // Si c'est le nombre 0 alors ... 
        push();
        translate(x, y);
        if (r == 0)
        {
          motif0(d);
        }
        // Si c'est le nombre 1 alors ... 
        else if (r == 1)
        {
          motif1(d);
        }
        // Si c'est le nombre 2 alors ... 
        else if (r == 2)
        {
          motif2(d);
        }
        // Si c'est le nombre 3 alors ... 
        else if (r == 3)
        {
          motif3(d);
        }
        pop();
      }
    }
    pop();
  }

  // --------------------------------------------------
  void drawCell(int i, int j, float r)
  {
    push();
    stroke(0);
    textAlign(CENTER, CENTER);
    text(""+r, i*d, j*d, d, d);
    stroke(0, 25);
    rect(i*d, j*d, d, d);  
    pop();
  }

  void line_(float x1, float y1, float x2, float y2)
  {
    if (bModePlot)
    {
      line(x1,y1,x2,y2);
    }
    else
    {
      PVector A = new PVector(x1,y1);
      PVector B = new PVector(x2,y2);
      PVector M = PVector.lerp(A,B,t);
      line(A.x,A.y,M.x,M.y);
    }
  }


  void motif0(float taille) {
  }
  void motif1(float taille) {
  }
  void motif2(float taille) {
  }
  void motif3(float taille) {
  }

  void decodeJSONParams(String str)
  {
    //JSONObject json = parseJSONObject(str);
  }
}
