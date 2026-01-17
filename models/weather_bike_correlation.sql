WITH CTE AS (
    SELECT
        t.bike_id
        ,t.trip_date
        ,sd_start.station_name AS start_station
        ,sd_end.station_name AS end_station
        ,t.trip_duration_seconds
        ,w.weather
        ,w.avg_temp
        ,w.avg_pressure
        ,w.avg_humidity
        ,w.avg_clouds
    FROM {{ ref('trip_fact') }} t
    JOIN {{ ref('station_dimension') }} sd_start ON sd_start.station_id=t.start_station_id
    JOIN {{ ref('station_dimension') }} sd_end ON sd_end.station_id=t.end_station_id
    LEFT JOIN {{ ref('daily_weather') }} w ON t.trip_date=w.weather_date
    
)
SELECT 
*
FROM CTE