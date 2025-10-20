SELECT 
    CASE WHEN precipitation > 0 THEN 'Rainy' ELSE 'Dry' END AS weather_type,
    ROUND(AVG(total_rides),0) AS avg_rides
FROM rides_weather
GROUP BY weather_type;
