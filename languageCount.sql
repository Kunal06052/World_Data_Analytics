CREATE TABLE languageCount AS
SELECT OfficialLanguage AS Language, SUM(Population) AS Speakers FROM world
GROUP BY OfficialLanguage
ORDER BY Speakers DESC
LIMIT 10;