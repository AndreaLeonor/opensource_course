# Introduction to GIS and data science using open source data


**Contains modified Copernicus Atmosphere Monitoring Service Information 2018**

This repository contains material used during the course.

Folders:
* **CAMS_data_20180621** contains CAMS data for NOx and PM
* **code**  contains script `activate_postgis.sql` , `cutting.sh`, `make_map.R`
* **database**  contains database `fishing.sql`. It has global shipping data and `fishing_cut.zip` with cut shape files with Ecuador mask.
* **input** contains shapefiles about global shipping data. They are the dame data present on the database `fishing.sql`


**NetCDF data**

Data present on the Dropbox folder ( `https://www.dropbox.com/sh/b6xpd8p6j0xprwj/AAAk8Xb4eiHeWjIv6bwwW6K9a?dl=0` )are about global sea nutrients
Data are downloaded from ftp and they have this format

  `mercatorbiomer4v1r1_glo_mean_{valid date}_R{bul date}.nc`

Product at global level produced by Mercator Ocean in Toulouse, France   

Where:
* glo is for global
* valid date YYYYMMDD is the validity day of the data in the file
* bul date YYYYMMDD is the bulletin date the product was produced

Example:
mercatorbiomer4v1r1_glo_mean_20160102_R20160113.nc

For further information:
http://cmems-resources.cls.fr/documents/PUM/CMEMS-GLO-PUM-001-014.pdf
