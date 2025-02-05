library(tidyverse)
library(sf)
library(units)
library(here)


polygons <- read_sf(here("data", "GHSL_1000m", "GHSL_SMOD_UC_DUC_2020_polygons_V2_0_R2023A.gpkg"))

buffers <- st_buffer(polygons,units::set_units(10,"km")) |> 
  st_transform(crs="wgs84")

mm=buffers |> 
  group_by(urban_area) |> 
  nest() |> 
  mutate(bbox=map(.x=data,.f=~.x |> st_bbox() |> c() |> t() |> as_tibble())) |> 
  unnest(bbox) |> 
  mutate(bboxcall = paste0("ee.Geometry.BBox(",round(xmin,2),",",round(ymin,2),",",round(xmax,2),",",round(ymax,2),");"))

mm |> 
  print(n=Inf)
