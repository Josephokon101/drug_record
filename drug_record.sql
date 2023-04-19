SELECT * FROM sqltutorial.the_record;

#Number of Death by Sex
SELECT sex, COUNT(Sex) AS Number_of_Death FROM the_record
WHERE SEX is not null
GROUP BY Sex;

#Number of Death by Age_Group
SELECT Race, Count(Race) AS Rate_of_Abuse
FROM the_record GROUP BY Race;

#Top 5 Causes of Death
SELECT Cause_of_Death, COUNT(Cause_of_Death)
AS Ranking FROM the_record GROUP BY Description_of_Injury
ORDER BY Ranking DESC
LIMIT 5;

#Top 5 Location of Death
SELECT Location, COUNT(Location) AS Location_of_Death
FROM the_record GROUP BY Location
ORDER BY Location DESC
LIMIT 5;

#Highest Location of Injury
SELECT Injury_Place, COUNT(Injury_Place) AS Ranking
FROM the_record GROUP BY Injury_Place
ORDER BY Injury_Place DESC
LIMIT 5;