// ---------------------------------------------------------------------
// Imported natural features
#geoJSON[zoom>=11]{
  [natural='wood'] {
    ::fill{
//      polygon-fill: #02ab00;
//      inherits fill from landuse
    }
    ::overlay {
    // Landuse classes look better as a transparent overlay.
    opacity: 0.05;
    }
    ::label{
      text-name: [natural] + '\n(' + [wood] + ')';
      text-face-name: @sans;
  //    text-size: 9;
      text-fill: #000000;
  //    text-halo-fill: fadeout(#fff, 30%);
  //    text-halo-radius: 1;
  //    text-halo-rasterizer: fast;
  //    text-min-distance: 50;
  //    text-wrap-width: 60;
  //    text-line-spacing:	-2;
  //    text-allow-overlap: true;
  //    text-placement: interior;
      debug-mode: collision;
  //    text-placements
    } 
  }
}

/*
'cliff'	The precipice of a vertical or very steep drop
'fence'	Include various types of fence and wall barriers
'gate'	Only gates that are lines or areas are included
'hedge'	
'land'	Includes breakwaters and piers

Data available in z13 +
*/

#barrier_line[class='cliff'][zoom >= 13] {
  ::line{
    line-color: @rock; 
    line-width: 1;
  }
  ::hash{
    line-color: @rock; 
    line-width: 3;
    line-offset: 2;
    line-dasharray: 1,4;
  }
}
#barrier_line[class='fence'][zoom >= 15] { 
  ::line{
    line-color: @barrier; 
    line-width: 1;
  }
  ::hash{
    line-color: @barrier; 
    line-width: 3;
    line-dasharray: 1,10;
    line-cap: round;
  }
}
#barrier_line[class='gate'] { line-color: @debug; }
#barrier_line[class='hedge'] { line-color: @wood; }

#barrier_line[class='land'] {
  polygon-fill: @land;  
  line-color: @land; 
}
