// ---------------------------------------------------------------------
// Common Colors
@water:    #888;
@land:     #fff;
@wood:     #ccc;
@sand:     #eee;
@grass:    #fff;
@rock:     #000;
@barrier:  black;

@debug:    #f00;

// Basic color palette, from which variations will be derived.
@motorway:          #000;
@motorway_case:     @land;
@main:              @motorway;
@main_case:         @land;
@street:            #888;
@street_case:       @land;
@service:		    #ccc;
@service_case:	    #ccc;
@path:			    #000000;
@path_case:		    #ededed;
@rail: 			    #444;
@aeroway: 		    #eee;

// The colours of the makers, if shown
@markerColor: #fff;
@markerLine: #000;

// Settings for disabling features of the map
@showPlaceNames: false;
@showPoiNames: false;
@showPoiIcons: false;
@showLandCover: false;
@showCountryNames: false;
@showRoadLabels: false;
@showContours: true;


@showLandCover: true;
@landuseMaxZoom: 10;

// Show the imported data corresponding to marked areas
@showAreas: true;
// If the following is false it will use the colours defined afterwards
@useAreaData: false;
@area: #000;
@areaLine: #000;
@areaOpacity: 0.2;

// Use the imported data to mark places, etc
@useExtraData: true;

Map {
  background-color: @land;
}

// ---------------------------------------------------------------------
// Political boundaries
#admin {
	line-width: 0.2;
	line-color: #000;
  [maritime=1] {
    // downplay boundaries that are over water
    line-color: @water;
  }
  // Countries
  [admin_level=2] {
    line-width: 0.8;
    line-cap: round;
    [zoom>=4] { line-width: 1.2; }
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] { line-dasharray: 4,4; }
  }
  // States / Provices / Subregions
  [admin_level>=3] {
	line-width: 0.2;
	line-color: #000;
    [zoom=6] { line-width: 0.6; }
    [zoom=7] { 
      line-width: 1.5;
	  line-color: #686868;
	  line-dasharray: 1,5;
	  line-cap: round;
    }
    [zoom>=8] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
    }
    [zoom>=12] { line-width: 2; }
  }
}

// ---------------------------------------------------------------------
// Aeroways 
#aeroway [zoom>=12] {
  ['mapnik::geometry_type'=2] {
    line-color: @land * 0.96;
    [type='runway'] { line-width: 5; }    
    [type='taxiway'] {  
      line-width: 1;
      [zoom>=15] { line-width: 2; }
    }
  }    
  ['mapnik::geometry_type'=3] {
    polygon-fill: @land * 0.96;
    [type='apron'] {
      polygon-fill: @land * 0.98;  
    }  
  }
}

// ---------------------------------------------------------------------
// Buildings 

#building {
  [zoom>=14] {
  line-width: 0.5; 
  line-color: #000000;
  }
  [zoom>=16] {
    polygon-fill: #000; 
  }
  ::overlay {
    opacity: 0.05;
    }
  }

