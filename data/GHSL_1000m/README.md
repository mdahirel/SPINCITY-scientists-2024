
# GHSL low-res (1000m) data


 To re-run `R/03_get_GHSL_urban_areas_info.qmd`, large files from the GHSL (<https://human-settlement.emergency.copernicus.eu/download.php>, version R2023A), must be re-downloaded and included in this folder; see list below (check <https://human-settlement.emergency.copernicus.eu/legacyData.php> to find R2023A if it becomes superseded by newer versions).

to be placed in the `BUILT-S` subfolder: `GHS_BUILT_S_E2020_GLOBE_R2023A_54009_1000_V1_0.tif`

to be placed in the `LAND` subfolder: `GHS_LAND_E2018_GLOBE_R2022A_54009_1000_V1_0.tif`

(see the README for the GHSL 10m files for how to parse file names)

(Here, contrary to the 10m resolution files, there is only one file for the entire Earth, so no specific tiles. Below the map at the above URL, select the Global Download)

(Please note how the `BUILT-S` data are downloaded here for the 2020 epoch, but the `LAND` data for the 2018 one. 2020 data were preferred for BUILT-S 1000m because they are the closest to the study date, 2018 is the only epoch available for both BUILT-S 10m and LAND. We do not expect this to have any impact)

 In addition, this folder **does** contain a small geopackage, named  `GHSL_SMOD_UC_DUC_2020_polygons_V2_0_R2023A.gpkg`. This dataset contains the polygon outlines of the focal urban areas, based on the Urban Centres and Dense Urban Clusters classifications of the GHSL. These outlines are used to compute urban-area level metrics, and are a subset of the UC and DUC outlines available at: <https://jeodpp.jrc.ec.europa.eu/ftp/jrc-opendata/GHSL/GHS_SMOD_GLOBE_R2023A/GHS_SMOD_E2020_GLOBE_R2023A_54009_1000/V2-0/GHS_SMOD_E2020_GLOBE_R2023A_54009_1000_UC_V2_0.zip> and <https://jeodpp.jrc.ec.europa.eu/ftp/jrc-opendata/GHSL/GHS_SMOD_GLOBE_R2023A/GHS_SMOD_E2020_GLOBE_R2023A_54009_1000/V2-0/GHS_SMOD_E2020_GLOBE_R2023A_54009_1000_DUC_V2_0.zip>. See <https://human-settlement.emergency.copernicus.eu/ghs_smod2023.php> for details about the GHSL-SMOD layers.

 The output file resulting from running `R/03_get_GHSL_buffers_highres.qmd`, which contains built-up cover proportion in buffers of various radii around each sampled spider (expressed both relative to total buffer area and land area in buffer)  **are** included in `data` (`GHSL_urban_summary.csv`), so users can re-run downstream analyses without doing so, though.
