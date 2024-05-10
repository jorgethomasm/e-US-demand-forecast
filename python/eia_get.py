import eia_api as api
import os
import datetime
import plotly.express as px



# Loading vars and credentials

api_key = os.getenv('EIA_API_KEY')

api_meta_path = "electricity/rto/region-sub-ba-data/"

# Get metadata (test)

meta = api.eia_metadata(
    api_key = api_key,
    api_path = api_meta_path  
)

meta.meta


# Send GET Request

api_path = "electricity/rto/region-sub-ba-data/data/"

frequency = "hourly"

facets = {
    "parent": "CISO",
    "subba": "PGAE"
}


df1 = api.eia_get(
    api_key = api_key,
    api_path = api_path,
    frequency = frequency,
    facets = facets
)

df1.url


df1.parameters


df1.data