-- Top 10 countries by number of athletes
SELECT 
    Country AS Country,
    COUNT(PersonName) AS NumberOfAthletes
FROM 
    dbo.Athletes
GROUP BY 
    Country
ORDER BY 
    NumberOfAthletes DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
