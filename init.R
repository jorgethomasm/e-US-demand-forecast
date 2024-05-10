# ======================== e-US-demand-forecast =========================

# https://jorgethomasm.github.io/
# May 2024
# J. Thomas


# ========================== Load Dependencies ==========================

library(EIAapi)
library(tidyverse)
library(plotly)


# ======================== Load Helper Functions ========================

source("./tools/jthomfuncs.r")
theme_set(jthomggtheme)


# ======================== Initialise Variables ========================

api_key <- Sys.getenv("EIA_API_KEY")

api_metadata_path <- "electricity/rto/region-sub-ba-data/" # metadata request

api_data_path <- "electricity/rto/region-sub-ba-data/data/" # data request
