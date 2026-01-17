{% macro get_season(dts) %}

    CASE   
        WHEN MONTH({{dts}}) IN (12,1,2)  THEN 'WINTER'
        WHEN MONTH({{dts}}) IN (3,4,5)   THEN 'SPRING'
        WHEN MONTH({{dts}}) IN (6,7,8)   THEN 'SUMMER'
        ELSE    'AUTUMN'
    END

{% endmacro %}

{% macro get_daytype(dts) %}
    CASE 
        WHEN DAYNAME({{dts}}) IN ('Sat','Sun')  THEN 'WEEKEND'
        ELSE     'BUSINESSDAY'
    END
{% endmacro %}