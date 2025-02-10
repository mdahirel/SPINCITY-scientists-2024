
# GHSL high-res (10m) data


 To re-run `R/ 02_get_GHSL_buffers_highres.qmd`, large files from the GHSL (<https://human-settlement.emergency.copernicus.eu/download.php>, version R2023A), must be re-downloaded and included in this folder; see list below (check <https://human-settlement.emergency.copernicus.eu/legacyData.php> to find R2023A if it becomes superseded by newer versions).

 If doing so, selected products should be "BUILT-S" and "LAND", the epoch 2018, the resolution 10m and coordinate system Mollweide. The structure of the file names below contain this information; the last two elements of the file names, `R[number]_C[number]` refer to the coordinates of the tiles in the GHSL tile system as seen on the map at the above URL (last checked 2025-02-10); these are the tiles that cover the focal cities in our analysis.

 The output file resulting from running `R/ 02_get_GHSL_buffers_highres.qmd`, which contains built-up cover proportion in buffers of various radii around each sampled spider (expressed both relative to total buffer area and land area in buffer)  **are** included in `data` (`GHSL_10m_BUILT_spiders.csv`), so users can re-run downstream analyses without doing so, though.

`BUILT-S` rasters contain information about built-up cover in each pixel
 ```
 [1] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R2_C19.tif"
 [2] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R2_C20.tif"
 [3] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R3_C18.tif"
 [4] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R3_C19.tif"
 [5] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R3_C20.tif"
 [6] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C13.tif"
 [7] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C14.tif"
 [8] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C18.tif"
 [9] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C19.tif"
[10] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C20.tif"
[11] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R4_C9.tif" 
[12] "GHS_BUILT_S_E2018_GLOBE_R2023A_54009_10_V1_0_R5_C8.tif" 
```
`LAND` rasters contain information about the proportion of land in each pixel

```
 [1] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R2_C19.tif"
 [2] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R2_C20.tif"
 [3] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R3_C18.tif"
 [4] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R3_C19.tif"
 [5] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R3_C20.tif"
 [6] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C13.tif"
 [7] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C14.tif"
 [8] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C18.tif"
 [9] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C19.tif"
[10] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C20.tif"
[11] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R4_C9.tif" 
[12] "GHS_LAND_E2018_GLOBE_R2022A_54009_10_V1_0_R5_C8.tif" 
```