// ---------------------------------------------------------------------
// Landuse areas 
#landuse[zoom>=11] {
  [class='park'], [class='cemetery'], [class='pitch'] { 
    polygon-fill: #ccc;
    polygon-opacity: 0.45;
  }
  [class='hospital'][zoom>13],[class='school'][zoom>13] { 
	polygon-fill: #ccc;
    polygon-opacity: 0.3;
  }
  [class='wood'] { 
    polygon-fill: #ccc;
    polygon-opacity: 0.6;  
  }
  ::overlay {
  // Landuse classes look better as a transparent overlay.
  opacity: 0.05;
  }
}

#landuse[class='agriculture'],
#namedMarkers[title='farm']{
  [zoom>=14] {
    line-width: 0.5; 
    line-color: #000000;
  }
  [zoom>=16] {
    line-width: 0.5; 
    polygon-pattern-file: url('img/patterns/stripe_sm.png');
    polygon-pattern-opacity: 0.2;
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