![Preview](/_doc/preview.png?raw=true "Preview of Ethnocart")
# Ethnocart

Ethnocart is a map style for use with [Mapbox Studio](https://www.mapbox.com/mapbox-studio/) based on the Mapbox High Contrast style. It's intentionally made in a way that more information is displayed than is customary for maps intended to be used for web display.

### Usage

Download the latest version and save the tm2 folder anywhere you want to use it. Run Mapbox and open the tm2 folder.

You can save a local place of interest which allows you to quickly return to that area by clicking the heart icon in the top bar of the window.

### Adding map information

#### Adding or editing map features

If the information you want to add or edit is of general interest - such as buildings, local shops or roads - then it is better to edit the informaion in [OpenStreetMap](http://wiki.openstreetmap.org/wiki/Editing).

#### Add natural features missing from the Mapbox data source

You will need to run and export a query on [Overpass Turbo](http://overpass-turbo.eu) to add map data for some map features. Go to the URL above and copy paste the following code snippet and run it over the area you want to map. Take care not too use a too large area as this will probably take too long time to run.
```sql
/*
Outputs the missing map data to Mapbox

Usage: 
 1. Copy this to http://overpass-turbo.eu
 2. Move map to area of interest, or search
 3. Click run
 4. Click export and choose as geoJSON, save this file
 5. Upload the file to your mapbox account as a data source
 6. Copy data source ID to your project
*/
[out:json][timeout:25];
(
  // query part for: “natural”
  node["natural"]({{bbox}});
  way["natural"]({{bbox}});
  relation["natural"]({{bbox}});
  // query part for: “leisure”
  node["leisure"]({{bbox}});
  way["leisure"]({{bbox}});
  relation["leisure"]({{bbox}});
);
out body;
>;
out skel qt;
```

Once you have run that then export the result as a geoJSON file and upload it to your mapbox account as a data source.


#### Adding points of interest

If the information you want to add is only of interest to your one map then you should add this as a local data source for Mapbox Studio.
