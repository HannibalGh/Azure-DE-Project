-- Gender distribution of athletes by discipline
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
