# Introduction to GIS and data science using open source data


This repository contains data used on the course.

Folders:
* **code**  contains script `activate_postgis.sql`  
* **database**  contains database `fishing.sql`. It has global shipping data.
* **input** contains shapefiles about global shipping data. They are the dame data present on the database `fishing.sql`


**NetCDF data**

Data present on the Dropbox folder are about global sea nutrients
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
