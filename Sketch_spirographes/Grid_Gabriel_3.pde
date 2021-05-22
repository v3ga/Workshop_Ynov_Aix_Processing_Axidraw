class Grid_Gabriel_3 extends Grid
{
  Grid_Gabriel_3()
  {
    super("Grid Gabriel 3");
    this.setNb(5);
  }

  // --------------------------------------------------
  void motif0(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/2, 0, 0, taille/2);
    line_(taille/2, 0, 0, taille);
    line_(taille/2, 0, taille/2, taille);
    line_(taille/2, 0, taille, taille);
    line_(taille/2, 0, taille, taille/2);
  }

  // --------------------------------------------------
  void motif1(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(0, taille/2, taille/2, 0);
    line_(0, taille/2, taille, 0);
    line_(0, taille/2, taille, taille/2);
    line_(0, taille/2, taille, taille);
    line_(0, taille/2, taille/2, taille);
  }

  // --------------------------------------------------
  void motif2(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/2, taille, 0, taille/2);
    line_(taille/2, taille, 0, 0);
    line_(taille/2, taille, taille/2, 0);
    line_(taille/2, taille, taille, 0);
    line_(taille/2, taille, taille, taille/2);
  }

  // --------------------------------------------------
  void motif3(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille, taille/2, taille/2, 0);
    line_(taille, taille/2, 0, 0);
    line_(taille, taille/2, 0, taille/2);
    line_(taille, taille/2, 0, taille);
    line_(taille, taille/2, taille/2, taille);
  }
}
