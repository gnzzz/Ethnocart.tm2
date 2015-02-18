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