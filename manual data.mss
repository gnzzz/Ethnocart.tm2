#namedMarkers {
  [title='marker'][zoom>=12]{
    text-name: [description];
    text-face-name: @sans;
    text-size: 12;
    text-fill: #000000;
    text-halo-fill: fadeout(#fff, 30%);
    text-halo-radius: 1;
    text-halo-rasterizer: fast;
    text-min-distance: 50;
    text-wrap-width: 60;
    text-allow-overlap: true;
  }
 }
#namedMarkers{
  [title='path'][zoom>=12] {
      line-color: @service;
      line-join:round;
      line-dasharray: 4,4;
      line-cap: round;
      [zoom>=16] { line-width: 9; line-color:@service; }
      line-color: @path;
      [zoom >= 18] { line-width: 4}
      [zoom >= 17] { line-width: 3}
      [zoom >= 12] { line-width: 2}
    }
}