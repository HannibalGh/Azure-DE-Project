-- Query 1: Medal Counts by Country
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


-- Query 2:Top 10 countries by number of athletes
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


-- Query 3: Medal distribution by discipline
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


-- Query 4: Gender distribution of athletes by discipline
SELECT 
    a.Discipline AS Discipline,
    SUM(eg.Female) AS TotalFemale,
    SUM(eg.Male) AS TotalMale,
    SUM(eg.Total) AS TotalAthletes,
    CAST(SUM(eg.Female) AS FLOAT) / CAST(SUM(eg.Total) AS FLOAT) * 100 AS PercentageFemale,
    CAST(SUM(eg.Male) AS FLOAT) / CAST(SUM(eg.Total) AS FLOAT) * 100 AS PercentageMale
FROM 
    dbo.EntriesGender eg
JOIN 
    dbo.Athletes a
ON 
    eg.Discipline = a.Discipline
GROUP BY 
    a.Discipline
ORDER BY 
    TotalAthletes DESC;




-- Query 5: Disciplines with female gold medals as a percentage of total athletes
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

