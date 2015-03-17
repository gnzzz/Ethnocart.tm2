![Preview](/_doc/preview.png?raw=true "Preview of Ethnocart")
# Ethnocart

Ethnocart is a map style for use with [Mapbox Studio](https://www.mapbox.com/mapbox-studio/) based on the Mapbox High Contrast style. It's intentionally made in a way that more information is displayed than is customary for maps intended to be used for web display. This means that when looking at populated areas the information displayed will likely be too detailed but it should be about right when looking at remote areas.

### Usage

Download the latest version and save the tm2 folder anywhere you want to use it. Make sure the downloaded folder has the .tm2 extension. Create an account with MapBox and [download Mapbox Studio](https://www.mapbox.com/mapbox-studio/). Run Mapbox and open the tm2 folder.

You can save a local place of interest which allows you to quickly return to that area by clicking the heart icon in the top bar of the window. There are currently a couple of places saved which will give you an idea of how the map looks when looking at remote areas.

### Adding map information

#### Adding or editing map features

If the information you want to add or edit is of general interest - such as buildings, local shops or roads - then it is better to edit the informaion in [OpenStreetMap](http://wiki.openstreetmap.org/wiki/Editing). This will ensure that the local community will be able to use the information you add as OpenStreetMap is used in many applications. There is a [beginners guide](http://wiki.openstreetmap.org/wiki/Beginners%27_guide) available on the OSM wiki and using the (iD)[http://wiki.openstreetmap.org/wiki/ID] editor is recommended as you can put on a satellite overlay to help with adding data.

#### Adding natural features missing from the Mapbox data source

If you need natural features - such as forests - then you will need to run and export a query on [Overpass Turbo](http://overpass-turbo.eu) to add map data for some map features. Go to the URL above and copy paste the following code snippet and run it over the area you want to map. Take care not too use a too large area as this will probably take too long time to run.
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

Once you have run that then export the result as a geoJSON file and upload it to your mapbox account as a data source. You can then add this data source to your map by adding it as a data source under the layers option by pasting the data ID.


#### Adding points of interest

If the information you want to add is only of interest to your one map then you should add this as a local data source for Mapbox Studio.

The basic idea is that you will use the [Mapbox editor](https://www.mapbox.com/editor/) to add markers, lines and polygons that are used.

##### Adding the data for the first time

1. Go to the editor on your account.
2. Click data and zoom to the region of interest
3. Add markers, lines and polygons with the name field to be the type ( see below ) and the description to be the name - if any - of that marker.
4. Click save when you are done editing
5. Click the project button and download the data as geoJSON
6. In Mapbox Studio, click projects and data sources. If you don't already have a data source for this project click new otherwise select new project and empty data source.
7. Add a new layer and select the .json file you downloaded in step 5 and give it a description for yourself and rename the layer to `namedMarkers`.
8. Save the data and click projects and upload to mapbox. Once done, go back and copy the Map ID
9. Go back to ethnocart from the projects overview and by clicking layers change source. Add the Map ID from step 8 to the start of the string in the bottom and add a comma to seperate the Map ID from the other that was already there.
10. If done correctly then you should now see that there is a new layer in the bottom of the overview.

##### Updating data
If you want to update the data then there is no need to redo all the steps.

1. Open up the data file in Mapbox Editor.
2. Make the changes you want to do.
3. Download the geoJSON.
4. Open the previously created data source in Mapbox Studio from the Projects tab under Sources.
5. Add the new geoJSON file as a new layer.
6. Delete the old layer.
7. Rename the new layer to `namedMarkers`.
8. Save and upload to Mapbox.

##### Field type names

###### Polygons
Currently the only supported polygon title is `farm`. If there is any text in the description then it will print that but it is most likely better to use a marker to display the point.

###### Lines

| Type | Use | Results|
|------|-----|--------|
|Path|Footpath| Dotted line|

###### Markers
Currently the only title supported is `marker` which will print the description on that point.
