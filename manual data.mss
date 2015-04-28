/*
These styles are for the imported data corresponding to named markers and arrows
*/

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
//    text-allow-overlap: true;
  }
 }

#namedMarkers[title='arrow']{
  marker-type: arrow;
  marker-placement: vertex-last;
  line-color: #000;
  line-width: 2;
  marker-allow-overlap: true;
  marker-width: 20;
  marker-fill: #000;
}