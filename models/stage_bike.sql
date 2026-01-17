{{ config(materialized='view') }}
WITH BIKE AS (
    SELECT 
        TRIP_DURATION,
        STARTTIME,
        STOPTIME,
        START_STATION_ID,
        START_SATATION_NAME,
        START_STATION_LA,
        START_STATION_LON,
        END_STATION_ID,
        END_STATION_NAME,
        END_STATION_LA,
        END_STATION_LON,
        BIKE_ID,
        USERTYPE,
        BIRTH_YEAR
    FROM {{ source('DEMO', 'bike') }}
)
SELECT 
*
FROM BIKE