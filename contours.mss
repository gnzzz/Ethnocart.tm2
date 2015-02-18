// ==================================================================
// CONTOURS
// ================================================================== 

#contour.line::line[index!=-1] {
  line-color: #000;
  line-opacity: 0.1;
  line-width: 1.2;
  [index>=5] {
    line-opacity: 0.2;
    line-width: 1.2;
  }
}
/*
#contour.label::label {
  [zoom<=12][index>=5],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16][index>=5] {
    text-name: "[ele]+' m'";
    text-face-name: 'Open Sans Regular';
    text-placement: line;
    text-size: 10;
    text-fill: #666;
    text-avoid-edges: true;
    text-halo-fill: fadeout(@land,80%);
    text-halo-radius: 4;
    text-halo-rasterizer: fast;
//    text-label-position-tolerance: 10;
  }
  [zoom<=15][index=10]{
    text-min-path-length: 100;
  }
}
*/
#contour.label::label {
  [zoom<=12][index>=5],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16][index>=5] {
    text-name: "[ele]+' m'";
    text-face-name: @sans;
    text-placement: line;
    text-fill: #666;
    text-size: 10;
    text-character-spacing: 1;
    text-avoid-edges: false;
//    text-repeat-distance: 100;
//    text-min-distance: 1;
//    text-label-position-tolerance: 0;
//    text-margin: 100;
    text-halo-fill: fadeout(@land, 90);
    text-halo-radius: 4;
    text-halo-rasterizer: fast;
//    text-clip:false;
    [ele<=0] { text-fill: spin(#666, 60); text-dy: -1; }
    }
  }