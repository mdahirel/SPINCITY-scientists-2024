# CRU-TS precipitation data

To re-run `R/01b_get_precipitation_CRU.qmd`, large files from the CRU-TS archive (<https://crudata.uea.ac.uk/cru/data/hrg/>, version 4.08), must be re-downloaded and included in this folder:

- `cru_ts4.08.1981.1990.pre.dat.nc`
  
- `cru_ts4.08.1991.2000.pre.dat.nc`

- `cru_ts4.08.2001.2010.pre.dat.nc`

- `cru_ts4.08.2011.2020.pre.dat.nc`

- `cru_ts4.08.2021.2023.pre.dat.nc`

The output file resulting from running `R/01b_get_precipitation_CRU.qmd`, which contains average annual temperature for each focal urban area, **is** included in `data` (`CRUpre_1991-2020.csv`), so users can re-run downstream analyses without doing so, though.
