class Grid_Gabriel_2 extends Grid
{
  Grid_Gabriel_2()
  {
    super("Grid Gabriel 2");

  }

  // --------------------------------------------------
  void motif0(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/3, 0, 0, taille/3);
    line_(2*taille/3, 0, taille/3, taille);
    line_(taille, 2*taille/3, 2*taille/3, 2*taille/3);
    line_(2*taille/3, 2*taille/3, 2*taille/3, taille);
  }

  // --------------------------------------------------
  void motif1(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/3, 0, taille/3, taille/3);
    line_(taille/3, taille/3, 0, taille/3);
    line_(0, 2*taille/3, taille/3, taille);
    line_(2*taille/3, taille, 2*taille/3, taille/3);
    line_(2*taille/3, taille/3, taille, taille/3);
  }

  // --------------------------------------------------
  void motif2(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/3, 0, 2*taille/3, taille);
    line_(0, 2*taille/3, taille/3, 2*taille/3);
    line_(taille/3, 2*taille/3, taille/3, taille);
    line_(2*taille/3, 0, 2*taille/3, taille/3);
    line_(2*taille/3, taille/3, taille, taille/3);
  }

  // --------------------------------------------------
  void motif3(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(0, taille/3, 2*taille/3, taille/3);
    line_(2*taille/3, 0, 2*taille/3, taille/3);
    line_(0, 2*taille/3, taille, taille/3);
    line_(taille/3, taille, taille/3, 2*taille/3);
    line_(taille/3, 2*taille/3, taille, 2*taille/3);
  }
}
