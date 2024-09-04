-- Medal distribution by discipline
SELECT 
    t.Discipline AS Discipline,
    SUM(m.Gold) AS TotalGold,
    SUM(m.Silver) AS TotalSilver,
    SUM(m.Bronze) AS TotalBronze,
    SUM(m.Gold + m.Silver + m.Bronze) AS TotalMedals
FROM 
    dbo.Medals m
JOIN 
    dbo.Teams t
ON 
    m.TeamCountry = t.Country
GROUP BY 
    t.Discipline
ORDER BY 
    TotalMedals DESC;
