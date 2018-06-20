#!/bin/bash

# this script cut shape and tif layers

############################# Syntax of use #############################
# gdalwarp -cutline INPUT.shp -crop_to_cutline -dstalpha INPUT.tif OUTPUT.tif
# Where:
# -cutline		cut a raster using a shapefile
# -crop_to_cutline	Crop the extent of the target dataset to the extent of the cutline.
# -dstalpha		Create an output alpha band to identify nodata (unset/transparent) pixels.

for file in *; do
if [ ${file##*.} == "tif" ]
then
  gdalwarp -cutline path_to_mask_layer/mask.shp -crop_to_cutline -dstalpha ${file} path_to_output_layers/${file} 
  echo "$file"
fi
if [ ${file##*.} == "shp" ]
then
  ogr2ogr -clipsrc path_to_mask_layer/mask.shp path_to_output_layers/${file} ${file}
  echo "$file"
fi
done
