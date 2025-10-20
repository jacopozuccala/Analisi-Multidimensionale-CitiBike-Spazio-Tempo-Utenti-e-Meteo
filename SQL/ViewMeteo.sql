CREATE VIEW rides_weather AS
SELECT 
    DATE(t.started_at) AS ride_date,
    COUNT(*) AS total_rides,
    w.temp_avg,
    w.precipitation,
    w.wind_speed,
    w.weather_description
FROM trips t
LEFT JOIN weather_nyc w
ON DATE(t.started_at) = w.weather_date
GROUP BY DATE(t.started_at), w.temp_avg, w.precipitation, w.wind_speed, w.weather_description
ORDER BY ride_date;
