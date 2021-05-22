class Spirographe extends GraphicElement
{
  int nb = 10;
  float angle = 0.0;
  float angleMax = 360.0;
  float fZoom = 1.0;

  Spirographe(String name)
  {
    super(name);
  }

  float getAngle()
  {
    return bModePlot ? angleMax : lerp(0, angleMax, t);
  }

  void decodeJSONParams(String str)
  {
    JSONObject json = parseJSONObject(str);    
    this.nb = json.getInt("nb");
    this.angleMax = json.getFloat("angleMax");
    this.fZoom = json.getFloat("fZoom");
  }
}


class Spirographe_Multi extends Spirographe
{
  int nb2 = 10;
  float angle2 = 0.0;
  float angleMax2 = 360.0;
  float fZoom2 = 1.0;

  int nb3 = 10;
  float angle3 = 0.0;
  float angleMax3 = 360.0;
  float fZoom3 = 1.0;


  Spirographe_Multi(String name)
  {
    super(name);
  }

  void decodeJSONParams(String str)
  {
    JSONObject json = parseJSONObject(str);    

    this.nb = json.getInt("nb");
    this.angleMax = json.getFloat("angleMax");
    this.fZoom = json.getFloat("fZoom");

    try {

      this.nb2 = json.getInt("nb2");
      this.angleMax2 = json.getFloat("angleMax2");
      this.fZoom2 = json.getFloat("fZoom2");

      this.nb3 = json.getInt("nb3");
      this.angleMax3 = json.getFloat("angleMax3");
      this.fZoom3 = json.getFloat("fZoom3");
    }
    catch(Exception e)
    {
    }
  }
}
