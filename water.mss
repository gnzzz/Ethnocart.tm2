// ---------------------------------------------------------------------
// Water Features 
#water {
  polygon-fill: #999;
  polygon-pattern-file: url('img/patterns/halftone2.png');
  polygon-pattern-alignment: global;
  polygon-pattern-opacity: 0.3;
  // Map tiles are 256 pixels by 256 pixels wide, so the height 
  // and width of tiling pattern images must be factors of 256. 
  //polygon-pattern-file: url(pattern/wave.png);
  [zoom<=5] {
    // Below zoom level 5 we use Natural Earth data for water,
    // which has more obvious seams that need to be hidden.
    polygon-gamma: 0.4;
  }
  ::blur {
    // This attachment creates a shadow effect by creating a
    // light overlay that is offset slightly south. It also
    // create a slight highlight of the land along the
    // southern edge of any water body.
    polygon-fill: #fff;
    comp-op: soft-light;
    image-filters: agg-stack-blur(2,2);
    polygon-geometry-transform: translate(0,1);
    polygon-clip: false;
  }
  /**/
}

#waterway {
  line-color: @water * 0.9;
  line-cap: round;
  line-width: 0.5;
  [class='river'] {
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 5; }
    [zoom>=16] { line-width: 10; }
  }
  [class='stream'],
  [class='stream_intermittent'],
  [class='canal'] {
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
  [class='stream_intermittent'] { line-dasharray: 6,2,2,2; }
}