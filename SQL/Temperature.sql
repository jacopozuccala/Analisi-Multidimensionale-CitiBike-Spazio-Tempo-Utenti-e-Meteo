SELECT 
    ROUND(temp_avg) AS temperature,
    AVG(total_rides) AS avg_rides
FROM rides_weather
GROUP BY ROUND(temp_avg)
ORDER BY temperature;
