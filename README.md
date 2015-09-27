rgrass7 for Windows
=======================

### References

https://grasswiki.osgeo.org/wiki/Working_with_GRASS_without_starting_it_explicitly

### Issue

`readVECT` won't work...

```r
readVECT("schools", plugin=NULL)
#> Error: !is.null(driver) is not TRUE
```

I found the problem occcurs here: https://github.com/cran/rgrass7/blob/b265ac8cd5398ad74b323a29ccf894d00a2c518c/R/vect_link.R#L89-L106

While the result of execGRASS is space-separated, their code is `preferDriver <- c("SQLite", "ESRI_Shapefile")`,
which should be `"ESRI Shapefile"`.

```r
head(execGRASS("v.in.ogr", flags="f", intern=TRUE))
#> [1] " ESRI Shapefile (rw): ESRI Shapefile" " MapInfo File (rw): MapInfo File"     " UK .NTF (ro): UK .NTF"              
#> [4] " SDTS (ro): SDTS"                     " TIGER (rw): TIGER"                   " S57 (rw): S57" 
```
