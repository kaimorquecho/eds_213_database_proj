
-- Question 1: From 2020 and 2022, what were top 10 counties with the highest number of asthma emergency visits? 

SELECT a.county,a.year, a.er_visits, q.max_aqi
FROM asthma_emergencies a
JOIN annual_aqi q
  ON a.state = q.state 
 AND a.county = q.county 
 AND a.year = q.year
WHERE a.state = 'California';
