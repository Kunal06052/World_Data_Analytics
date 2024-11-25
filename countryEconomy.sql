CREATE TABLE countryEconomy AS
SELECT 
	Country,
	GDP,
	Population AS Total_Population,
    ROUND((GDP/Population),2) AS GDP_Per_Capita,
	ROUND((PopulationLaborForceParticipation * Population) / 100) AS Labor_Force_Count,											
	ROUND((UnemploymentRate * ((PopulationLaborForceParticipation * Population) / 100)) / 100) AS Unemployed_Count					
FROM world
GROUP BY Country 
ORDER BY GDP DESC;
