/*
  Generative drawing workshop @ Ynov Aix-en-Provence
  May 2021
  —

  https://github.com/v3ga/Workshop_Ynov_Aix_Processing_Axidraw
  —
  
  Sketch made for exporting students p5js sketches as svg files 
  Also used to export frames for video
  —

  keys : 
    'e' to export if bModePlot == true
    right arrow to select next student sketch
    left arrow to select previous student sketch
  —

  Julien @v3ga Gachadoat
*/

// --------------------------------------------------
import java.util.*;
import processing.svg.*;
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


// --------------------------------------------------
// Set to true to run the app for exporting svgs
// ready to be sent to axidraw with inkscape
// Otherwise runs with animations
boolean bModePlot = false;

// --------------------------------------------------
float margin = 24;

// --------------------------------------------------
boolean bSaveFrames = false; // for exporting images
boolean bExportSVG = false;
// scale for svgs / inkscape
float gScale = 793.70079 / 525.0;
// Colors
color COLOR_BACKGROUND = color(0);
color COLOR_LINES = color(255);

// --------------------------------------------------
ArrayList<GraphicElement> compositions = new ArrayList<GraphicElement>();
GraphicElement ge;
int geIndex=0;

// --------------------------------------------------
// Assets
PFont theFont24, theFont40, theFont64;

// --------------------------------------------------
void settings()
{
  if (bModePlot)
  {
    size(794, 1122);
  } else
  {
    size(1024, 1024);
  }
}

// --------------------------------------------------
void setup()
{
  surface.setTitle("Ynov Aix 2021 - B2 - Dessin génératif");
  Ani.init(this);
  theFont24 = loadFont("Microsoft-Yi-Baiti-24.vlw");
  theFont40 = loadFont("Microsoft-Yi-Baiti-40.vlw");
  theFont64 = loadFont("Microsoft-Yi-Baiti-64.vlw");

  compositions.add( new Spirographe_Enzo() );
  compositions.add( new Spirographe_Lou() );
  compositions.add( new Spirographe_Antoine() );
  compositions.add( new Spirographe_Erwan() );
//  compositions.add( new Spirographe_Bastien() );
  compositions.add( new Spirographe_Baptiste() );
  compositions.add( new Spirographe_Gabriel() );
  compositions.add( new Grid_Gabriel() );
  compositions.add( new Spirographe_Nans() );
  compositions.add( new Grid_Gabriel_2() );
  compositions.add( new Spirographe_Vincent() );
  compositions.add( new Grid_Gabriel_3() );
  compositions.add( new Spirographe_Lea() );
  
  if (bModePlot)
  {
    COLOR_BACKGROUND = color(255);
    COLOR_LINES = color(0);
  }
  else
  {
  //   noCursor();
  }
  
  if (bSaveFrames)
      Ani.setDefaultTimeMode(Ani.FRAMES);

   setComposition(geIndex);
}

// --------------------------------------------------
void draw()
{
  background(COLOR_BACKGROUND);
  if (bExportSVG && bModePlot)
  {
    beginRecord(SVG, "data/exports/svg/"+ge.getFilename());
  }

  if (ge != null)
  {
    stroke(COLOR_LINES);
    ge.draw();

    if (bExportSVG == false)
    {
      fill(COLOR_LINES);
      float yText = bModePlot ? margin : 2*margin;
      float wText = bModePlot ? textWidth(ge.name) : margin*20;
      float xText = bModePlot ? (width-wText)/2 : margin;
      float padUnderline = bModePlot ? 4 : 8;
      textFont(bModePlot ? theFont24 : theFont40);
      textSize(bModePlot ? 24 : 40);
      line(xText, yText+padUnderline, bModePlot? xText+wText : width-margin, yText+padUnderline);
      text(ge.name, xText, yText);
      
      if (bModePlot==false)
      {
        String s = "Atelier de dessin génératif avec les B2\nYnov Aix-en-Provence 2021";
        textFont(theFont24);
        textSize(24);
        float w = textWidth(s);
        text( s,width-w-margin,height-margin-24 );        
      }
  
    }
  }


  if (bExportSVG && bModePlot)
  {
    endRecord();
    bExportSVG = false;
  }
  
  if (bSaveFrames)
    saveFrame("data/exports/images/####.png");
}

// --------------------------------------------------
void setComposition(int index)
{
  ge = compositions.get(index);
  ge.beginAnimation();
}

// --------------------------------------------------
void keyPressed()
{
  if (key==CODED)
  {
    if (keyCode== RIGHT)
    {
      geIndex = (geIndex+1)%compositions.size();
      setComposition(geIndex);
    }
    else if (keyCode== LEFT)
    {
      geIndex = (geIndex-1);
      if (geIndex < 0) geIndex = compositions.size()-1;
      setComposition(geIndex);
    }
  } else if (key == 'e')
  {
    bExportSVG=true;
  }
}
