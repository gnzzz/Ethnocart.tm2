// ---------------------------------------------------------------------
// Landuse areas 
#landuse[zoom>=11] {
  [class='park'], [class='cemetery'] { 
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

#landuse[zoom >= 15]{
  //text-name: [class];
  //text-face-name: @sans;
}