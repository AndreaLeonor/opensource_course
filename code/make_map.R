#' Example leaflet widget
#'
#' Hello world of leaflet htmlwidget wrapped in OpenCPU. Based on example:
#' \url{http://rstudio.github.io/leaflet/}.
#'


#connectiong to the database
  if(!require(DBI)){
    install.packages("DBI")
    library(DBI)
  }
  
  if(!require(RPostgreSQL)){
    install.packages("RPostgreSQL")
    library(RPostgreSQL)
  }
  
  if(!require(rpostgis)){
    install.packages("rpostgis")
    library(rpostgis)
  }
  
  if(!require(rgdal)){
    install.packages("rgdal")
    library(rgdal)
  }

  if (!require('devtools')) install.packages('devtools')
  devtools::install_github('rstudio/leaflet')
  
  
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv, host = 'localhost', dbname = 'fishing', user = 'postgres', password = 'admin')
  fishing_mean <- pgGetGeom(conn = con, c("public", "2016-09-22_clip"))
  fishing_mean <- spTransform(fishing_mean, CRS("+proj=longlat +datum=WGS84"))
  m <- leaflet::leaflet()
  m <- leaflet::addTiles(m)
  m <- leaflet(data = fishing_mean )%>% addTiles() %>% addCircles(m, lng = fishing_mean$lon, lat = fishing_mean$lat, radius = fishing_mean$vessel_hou * 30  , layerId = NULL,
                           group = NULL, stroke = TRUE, color = "#03F", weight = 1,
                           opacity = 0.5)
  htmlwidgets::saveWidget(m, "mymap.html", selfcontained = FALSE)
  m





