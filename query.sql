
-- Question 1: From 2020 and 2022, what were top 10 counties with the highest number of asthma emergency visits? 

SELECT a.state, a.county, a.year, q.max_aqi, a.er_visits
FROM asthma_emergencies a
JOIN annual_aqi q ON a.state = q.state AND a.county = q.county AND a.year = q.year
WHERE a.state = 'California'
ORDER BY q.max_aqi DESC
LIMIT 10;

SELECT a.state, a.county, a.year, q.max_aqi, a.er_visits, 
FROM asthma_emergencies a
JOIN annual_aqi q ON a.state = q.state AND a.county = q.county AND a.year = q.year
WHERE a.state = 'California'
ORDER BY a.er_visits DESC
LIMIT 10;
