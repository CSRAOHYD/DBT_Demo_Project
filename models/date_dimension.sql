WITH CTE AS (
    SELECT 
        STARTTIME::TIMESTAMP    AS START_TIME,
        DATE(START_TIME)        AS START_DATE,
        HOUR(START_TIME)        AS START_HOUR,
        {{get_daytype('START_TIME')}} AS DAY_TYPE,
        {{get_season('START_TIME')}} AS SEASON_OF_YEAR
    FROM {{ source('DEMO', 'bike') }}
)
SELECT 
* 
FROM CTE