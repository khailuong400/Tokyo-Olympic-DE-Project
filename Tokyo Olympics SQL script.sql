--no of atheletes fom each country
SELECT NOC,COUNT(*)AS TotalAtheletes
FROM athletes
GROUP BY NOC
ORDER BY TotalAtheletes DESC;

---no of medals won by each country
SELECT 
Team_Or_NOC,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Or_NOC
ORDER BY Total_Gold DESC;

--avg no of medals for each discipline for each gender
SELECT Discipline,
AVG(Female) AS Avg_Female,
AVG(Male) AS Avg_Male
FROM entriesGender
GROUP BY Discipline;

--No of Medals won by India
select * 
from medals
where Team_Or_NOC in ('India');


---Top 10  country with gold medals
SELECT TOP(10)Team_Or_NOC,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Or_NOC
ORDER BY Total_Gold DESC;

--Top 5 countries with highest number of coaches 
SELECT TOP(5)NOC, Count(Name) As TotalCoaches
from coaches
GROUP BY NOC
ORDER BY TotalCoaches DESC;