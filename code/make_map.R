#' Example leaflet widget
#'
#' Hello world of leaflet htmlwidget wrapped in OpenCPU. Based on example:
#' \url{http://rstudio.github.io/leaflet/}.
#'


#connectiong to the database
make_map <- function(){
  require(DBI)
  library(RPostgreSQL)
  library(rpostgis)
  library(rgdal)
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv, host = 'localhost', dbname = 'cs2_pressures', user = 'postgres', password = 'admin')
  basin_mean <- pgGetGeom(conn = con, c("public", "basin_test_mean"))
  basin_mean <- spTransform(basin_mean, CRS("+proj=longlat +datum=WGS84"))
  m <- leaflet::leaflet()
  m <- leaflet::addTiles(m)
  m <- leaflet::addPolygons(m, data =basin_mean, color = "#444444", weight = 1, smoothFactor = 0.5, opacity = 1.0, fillOpacity = 0.5,popup = title)
  htmlwidgets::saveWidget(m, "mymap.html", selfcontained = FALSE)
}






