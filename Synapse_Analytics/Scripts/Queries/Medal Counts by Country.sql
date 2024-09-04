-- Medal Counts by Country
SELECT 
    TeamCountry,
    SUM(Gold) AS TotalGold,
    SUM(Silver) AS TotalSilver,
    SUM(Bronze) AS TotalBronze
FROM 
    Medals
GROUP BY 
    TeamCountry
ORDER BY 
    TotalGold DESC;
