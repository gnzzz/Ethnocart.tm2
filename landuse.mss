// ---------------------------------------------------------------------
// Landuse areas 
#landuse[zoom>=11] {
  [class='park'], [class='cemetery'], [class='pitch'] { 
    polygon-fill: #ccc;
    polygon-opacity: 0.45;
  }
  [class='wood'] { 
    polygon-fill: @wood;
    polygon-opacity: 0.6;  
    [zoom>=14] {
//      line-width: 0.5; 
      polygon-pattern-file: url('img/patterns/forest_rand.svg');
      polygon-pattern-opacity: 0.2;
    }
  }
  [class='sand'] { 
    polygon-fill: @sand;
    polygon-opacity: 0.6;
    [zoom>=14] {
//      line-width: 0.5; 
      polygon-pattern-file: url('img/patterns/sand_rand.svg');
      polygon-pattern-opacity: 0.5;
    }
  }  
  ::overlay {
  // Landuse classes look better as a transparent overlay.
  opacity: 0.05;
  }
}

#landcover[@showLandCover=true]{
  [class='wood'] { polygon-fill: @wood; }
  [class='scrub'] { polygon-fill: mix(@wood,@grass,75%); }
  [class='grass'] { polygon-fill: mix(@wood,@grass,50%); }
  [class='crop'] { polygon-fill: mix(@wood,@grass,25%); }
  [class='snow'] { polygon-fill: white; }
}

#landuse_overlay[class='wetland'][zoom>=15]{
  line-width: 1;
  line-color: #000;
  line-dasharray:1,4;
  polygon-pattern-file: url('img/patterns/marsh_rand.svg');
  polygon-pattern-alignment: global;
}
#landuse_overlay[class='wetland_noveg'][zoom>=15]{
  line-width: 1;
  line-color: #000;
  line-dasharray:1,4;
  polygon-pattern-file: url('img/patterns/marsh_noveg_rand.svg');
  polygon-pattern-alignment: global;
}

#landuse[class='agriculture'],
#namedMarkers[title='farm']{
  [zoom>=12] {
    line-width: 0.5; 
    line-color: #000000;
  }
  [zoom>=12] {
    line-width: 0; 
    polygon-pattern-file: url('img/patterns/agriculture.svg');
    polygon-pattern-alignment: global;
  }
  ::overlay {
    opacity: 0.05;
  }
  ::label [zoom>=18] {
    text-name: [description];
    text-face-name: @sans;
    text-size: 12;
    text-fill: #000000;
    text-halo-fill: fadeout(#fff, 30%);
    text-halo-radius: 1;
    text-halo-rasterizer: fast;
    text-min-distance: 50;
    text-wrap-width: 60;
    //    text-line-spacing:	-2;
    //    text-allow-overlap: true;
    text-placement: interior;
    //     debug-mode: collision;
  } 
}