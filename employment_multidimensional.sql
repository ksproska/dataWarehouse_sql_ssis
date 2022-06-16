SELECT
CASE
	WHEN Age IS NULL THEN 'Unknown'
	WHEN Age <= 20 THEN '10s'
	WHEN Age <= 30 THEN '20s'
	WHEN Age <= 40 THEN '30s'
	WHEN Age <= 50 THEN '40s'
	WHEN Age <= 60 THEN '50s'
	WHEN Age <= 70 THEN '60s'
	ELSE '70+'
END AS ' AgeGroup'
FROM DimEmployee;

SELECT 
CASE
	WHEN ExperienceYearsIt IS NULL THEN 'Unknown'
	WHEN ExperienceYearsIt < 5 THEN 'Less than 5'
	WHEN ExperienceYearsIt < 10 THEN 'Less than 10'
	WHEN ExperienceYearsIt < 15 THEN 'Less than 15'
	WHEN ExperienceYearsIt < 20 THEN 'Less than 20'
	WHEN ExperienceYearsIt < 25 THEN 'Less than 25'
	WHEN ExperienceYearsIt < 30 THEN 'Less than 30'
	ELSE '30+'
END AS 'ExperienceYearsITGroup', ExperienceYearsIt
FROM DimEmployee;

SELECT 
CASE
	WHEN TeamSize IS NULL THEN 'Unknown'
	WHEN TeamSize < 7 THEN 'Small'
	WHEN TeamSize < 15 THEN 'Middle size'
	WHEN TeamSize < 25 THEN 'Big'
	ELSE 'Huge'
END AS 'TeamSizeGroup', TeamSize 
FROM DimTeam;