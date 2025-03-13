# data/raw_colour

This folder contains raw files on spider colour.

- The files in the `brightness_card` subfolder (5 files) contain information from spectrometer measurements of grayscale calibration cards. Each file is for one copy of the card, within each file, each card was measured thrice. These replications are averaged later on, see `R/00_card_brightness_sphere_spectrophotometry.qmd`.

- `SPINCITY_testcard-reflectance`: the result of running `R/00_card_brightness_sphere_spectrophotometry.qmd` on `data/brightness_card`. For each cell of the color calibration card, the average relative reflectance across the replicates. These are the values used in calibration curves.

- `SPINCITY_raw-colour-measurement.csv`: the measurements taken from images for both the spider and the associated calibration card (average of R, G and B channels). Not all cards or spiders have values, because sometimes the spider or the card was over-/under-exposed; for these no value was recorded.