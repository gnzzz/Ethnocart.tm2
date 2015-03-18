// Points of interest
#poi_label[maki=''] { opacity:1; } // hack for mapnik#1952

#poi_label[maki='park'][scalerank<=2],
#poi_label[maki='airport'][scalerank<=2],
#poi_label[maki='airfield'][scalerank<=2],
#poi_label[maki='rail'][scalerank<=2],
#poi_label[maki='school'][scalerank<=2],
#poi_label[scalerank='hospital'][scalerank<=2], 
#poi_label{ 
  [@showPoiNames=true]{
    text-name: @name;
    text-face-name: @sans;
    text-size: 9;
    text-fill: #333;
    text-halo-fill: fadeout(#fff, 30%);
    text-halo-radius: 1;
    text-halo-rasterizer: fast;
    text-min-distance: 50;
    text-wrap-width: 60;
    text-line-spacing:	-2;
    text-allow-overlap: false;
    [zoom>=13] {
      text-size: 10;
      text-line-spacing: -2;
    }
    [zoom=15] {
      text-size: 12;
      text-line-spacing: -2;
      text-fill: #444;
    }
    [zoom>=16] {
      text-size: 14;
      text-line-spacing: -2;
    }
    [zoom>=17] {
      text-size: 16;
      text-line-spacing: -2;
    }
  }
  [maki!=null][@showPoiIcons=true]{ 
//  POI labels with an icon need to be offset:
    [@showPoiNames=true]{
      text-name: @name;
      text-face-name: @sans;
      text-dy: 15;
    }
    marker-opacity: 1;
    marker-file: url('img/maki/[maki]-24.svg');
    marker-fill: @markerColor;
    marker-line-color: fadeout(@markerLine, 30%);
    marker-line-width: 5;
    marker-line-opacity: 1;
    marker-height: 24;
  }
}