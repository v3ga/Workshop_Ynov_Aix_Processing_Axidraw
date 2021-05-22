class Grid_Gabriel extends Grid
{
  Grid_Gabriel()
  {
    super("Grid Gabriel");
  }

  // --------------------------------------------------
  void motif0(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/2, 0, 0, taille/2);
    line_(taille, taille/2, taille/2, taille);
  }

  // --------------------------------------------------
  void motif1(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(0, taille/2, taille/2, taille);
    line_(taille/2, 0, taille/2, taille/2);
    line_(taille/2, taille/2, taille, taille/2);
  }

  // --------------------------------------------------
  void motif2(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(taille/2, 0, taille, taille/2);
    line_(0, taille/2, taille/2, taille/2);
    line_(taille/2, taille/2, taille/2, taille);
  }

  // --------------------------------------------------
  void motif3(float taille)
  {
    strokeCap(SQUARE);
    strokeWeight(2);
    line_(0, taille/2, taille/2, taille/2);
    line_(taille/2, taille/2, taille/2, 0);
    line_(taille, taille/2, taille/2, taille);
  }
}
