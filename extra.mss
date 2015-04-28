/*
This is the generic icon style from the extra geoJSON data layer
*/

#extra[[marker-symbol]!='']{
  ::label [zoom>=14] {
    [[name]!='']{
      text-name: [name];
      text-face-name: @sans;
      text-size: 12;
      text-fill: #000000;
      text-halo-fill: fadeout(#fff, 30%);
      text-halo-radius: 1;
      text-halo-rasterizer: fast;
      text-dy: 15;
    }
    marker-opacity: 1;
    marker-file: url('img/icons/[marker-symbol].svg');
    marker-fill: @markerColor;
    [@useExtraData=true]{
      marker-fill: [marker-color];
    }
    marker-line-color: fadeout(@markerLine, 30%);
    marker-line-width: 5;
    marker-line-opacity: 1;
    [marker-size='small']{
      marker-height: 12;
    }
    [marker-size='medium']{
      marker-height: 18;
    }
    [marker-size='large']{
      marker-height: 24;
    }
  } 
}