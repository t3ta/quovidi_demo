FROM rocker/shiny-verse
RUN install2.r --error \
    shinyWidgets shinyBS shinyjs miniUI leaflet \
    OpenImageR stringi exifr DBI RMySQL \
    DT data.table formattable tidyverse shinydashboard\
    digest lubridate sp cowplot dplyr \
    plyr RSQLite pander googledrive googlesheets4 \
    rjson
RUN apt-get update && apt-get install -y sqlite3