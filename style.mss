// ---------------------------------------------------------------------
// Common Colors
@water: #fff;
@land: #fff;


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
    polygon-fill: #ccc;
    polygon-opacity: 0.6;  
  }
  ::overlay {
    opacity: 0.05;
    }
  }

