/*
This is corresponding to the manual data imported for areas of interest
*/

#area[@showAreas=true]{
  [@useAreaData=true]{
    ::line{
      line-color: [stroke]; 
      line-opacity: [stroke-opacity];
      line-width: [stroke-width];
    }
    ::fill{
      polygon-fill: [fill];
      polygon-opacity: [fill-opacity];
    }
    ::label{
      text-name: [name];
      text-face-name: @sans;
      text-size: 12;
      text-fill: #000000;
      text-halo-fill: fadeout(#fff, 30%);
      text-halo-radius: 1;
      text-halo-rasterizer: fast;
      text-placement: point;
      
      text-allow-overlap: true;
    }
  }
  [@useAreaData=false]{
    ::line{
      line-color: @areaLine; 
      line-opacity: 1;
      line-width: 1;
    }
    ::fill{
      polygon-fill: @area;
      polygon-opacity: @areaOpacity;
    }
    ::label{
      text-name: [name];
      text-face-name: @sans;
      text-size: 12;
      text-fill: #000000;
      text-halo-fill: fadeout(#fff, 30%);
      text-halo-radius: 1;
      text-halo-rasterizer: fast;
      text-placement: point;
      text-horizontal-alignment: middle;
      text-vertical-alignment: middle;
        
      text-allow-overlap: true;
    }
  }
}