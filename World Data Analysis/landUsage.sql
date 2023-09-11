CREATE TABLE landUsage AS
SELECT 
	Country,
	LandArea AS Total_Land_Area, 
	AgriculturalLand AS Agricultural_Land_Percent, 
	ROUND((AgriculturalLand * LandArea)/100, 2) AS Agricultural_Land_Area,
	ForestedArea AS Forest_Cover_Percent,  
	ROUND((ForestedArea * LandArea)/100, 2) AS Forest_Cover_Area
FROM world
GROUP BY Country
ORDER BY LandArea DESC
LIMIT 25;
