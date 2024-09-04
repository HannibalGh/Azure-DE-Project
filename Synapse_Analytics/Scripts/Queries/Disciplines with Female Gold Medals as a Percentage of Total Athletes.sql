-- Disciplines with female gold medals as a percentage of total athletes
SELECT 
    t.Discipline AS Discipline,
    SUM(m.Gold) AS TotalGoldMedals,
    SUM(eg.Female) AS TotalFemaleAthletes,
    SUM(eg.Total) AS TotalAthletes,
    CASE 
        WHEN SUM(eg.Total) > 0 THEN (SUM(m.Gold) * 100.0) / SUM(eg.Total)
        ELSE 0
    END AS PercentageFemaleGoldMedals
FROM 
    dbo.Medals m
JOIN 
    dbo.Teams t
ON 
    m.TeamCountry = t.Country
JOIN 
    dbo.EntriesGender eg
ON 
    t.Discipline = eg.Discipline
WHERE 
    m.Gold > 0 -- Filter to ensure only rows where gold medals are awarded
GROUP BY 
    t.Discipline
ORDER BY 
    PercentageFemaleGoldMedals DESC;
