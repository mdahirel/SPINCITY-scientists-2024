# data

This folder contains the various data files used in analyses.

- The `CRU`, `GHSL_10m` and `GHSL_1000m` subfolders are meant to contain large raw raster files downloaded from external archives, from which we extracted relevant data. Due to their size, these raw files are **not** archived, only the outputs used in further analyses; see the `README` files in each subfolder for details.

- `CRUtmp_1991-2020.csv` is the result of processing the data in the `CRU` subfolder for further analyses (`01_get_temperature_CRU.qmd`). It contains average annual temperatures for each focal urban area

- `GHSL_10m_BUILT_spiders.csv` is the result of processing the data in the `GHSL_10m` subfolder (`02_get_GHSL_buffers_highres.qmd`). It contains information about built-up proportion in buffers around each sampled spider

- `GHSL_urban_summary.csv` is the result of processing the data in the `GHSL_1000m` subfolder (`03_get_GHSL_urban_areas_infos.qmd`). It contains information about average built-up levels in each focal urban area

- `human_modification_50km_outside.csv` contains information about the average Global Human Modification Index (<https://doi.org/10.1111/gcb.14549>) in a 50km radius from the centroid of the focal urban area, **excluding** the focal urban area itself. Estimated using QGIS.

- `Tolan_et_al_2024_tree_cover.csv` contains information about the average tree cover in the focal urban area. Data from Tolan et al. 2024 (<https://doi.org/10.1016/j.rse.2023.113888>) were accessed and processed through Google Earth Engine and QGIS. See `R/GEE` for example code used in GEE extractions, and R code to obtain the bounding boxes used for these extractions.

- `SPINCITY_raw_spiders.csv` contains the raw spider data;  `SPINCITY_raw_spiders_mollweide.gpkg` is a reprojected version, to match the projection of the GHSL data

- `SPINCITY_area_names.csv` is a Rosetta stone-like file matching location names as entered in `SPINCITY_raw_spiders.csv` with the correct GHSL urban areas (for instance, Berkeley and San Francisco were initially recorded as separate cities, but are actually part of the same Bay Area urban centre for our analyses)

- `SPINCITY_geoflagged.csv` is a file with the individual IDs of spiders flagged as unusable for geographic issues, after exploration in QGIS. This includes spiders with clearly wrong coordinates, as well as spiders that do not reasonably belong to the urban region they were assigned to (for instance because they fall under the area of influence of another city based on GHSL data, or because they are rural but way too far from their nominal match city)

- `effect_sizes.csv`: the effect sizes for each trait and each city, at each buffer radius (i.e. not selection of the optimal scale done yet). The result of running `R/04_make_effect_sizes.qmd`

- `final_dataset_meta_analyses.csv`: the final dataset, meta-analysis ready. From `effect_sizes.csv`, optimal scale of effect has been chosen for each trait and city, and the effect sizes have been merged with the city-level moderators from the other files. The result of running `R/05_make_final_dataset.qmd`
