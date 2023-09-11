CREATE TABLE urbanizationCount AS
SELECT 
	Country, 
	Population AS Total_Population, 
	Urban_population AS Urban_Population, 
	ROUND((Urban_population * 100.0 / Population), 2) AS Urban_Percentage, 
	(Population - Urban_population) AS Rural_Population,
	ROUND(((Population - Urban_population) * 100.0 / Population), 2) AS Rural_Percentage 
FROM world
GROUP BY Country
ORDER BY Population DESC;