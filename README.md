
# Simple interactive map based for tax and building data

## Overview

Slippy map with a few vector tile layers:

- Custom OSM vector tiles
- Buildings
- Tax data (role d'évaluation)

## Details

Building and tax data tiles are served with `pg_tile_serv` which produces dynamic vector tiles on the fly from a postgis DB.

OSM tiles are served with `mbtileserver` 


## Usage

First, set the following env variable in `./config/.env`

```
POSTGRES_CONNECTION_STRING=postgresql://user:password@host:port/db
```

From within the `./docker` directory, then run the following:

`docker compose -f docker-compose_gis_v2.yml --env-file ./config/.env up`

