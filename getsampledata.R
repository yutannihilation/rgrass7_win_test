local({
  GRASSDATADIR   <- "grassdata"
  SAMPLEDATA_URL <- "http://grass.osgeo.org/sampledata/north_carolina/nc_basic_spm_grass7.zip"
  SAMPLEDATA_ZIP <- "nc_basic_spm_grass7.zip"
  
  dir.create(GRASSDATADIR)
  
  if(!file.exists(SAMPLEDATA_ZIP)) 
    download.file(SAMPLEDATA_URL, destfile = GRASSDATA_ZIP)
  
  unzip(SAMPLEDATA_ZIP, exdir = GRASSDATADIR)
})