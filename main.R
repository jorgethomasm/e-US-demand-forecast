# Init vars

source("./init.R")


# Pull data from EIA between:

# Metadata

eia_metadata(api_key = api_key, api_path = api_metadata_path)


# Full data

dt_start <- as.POSIXct("2020-07-01T00", tz = "UTC")
dt_stop <- as.POSIXct("2023-05-01T00", tz = "UTC")

offset <- 2250
facets <- list(parent = "CISO", subba = "PGAE")

# facets <- list(parent = "NYIS", subba = "ZONA")

eia_data <- eia_backfill(
    start = dt_start,
    end = dt_stop,
    offset = offset,
    api_key = api_key,
    api_path = api_data_path,
    facets = facets)


dt_start2 <- "2024-01-01T01"
dt_stop2 <- "2024-01-31T23"
frequency <- "hourly"

eia_data <- eia_get(
    api_key = api_key,
    api_path = api_data_path,
    start = dt_start2,
    end = dt_stop2,
    facets = facets,
    frequency = frequency
)
