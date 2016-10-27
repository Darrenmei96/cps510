SELECT *
FROM Mealplan
WHERE mealPlanName LIKE 'Chi%'
OR
mealPlanName LIKE 'Vegan%';

SELECT *
FROM Luggage
WHERE weight BETWEEN 20 AND 23;

Select * 
from luggage
where weight > (select avg(weight) from luggage);

SELECT MIN(weight), MAX(weight), AVG(weight),
VARIANCE(weight), STDDEV(weight)
FROM Luggage;

SELECT classtype,Count(ticketnumber) as Number_Of_Guests
FROM PLANETICKET
GROUP BY classtype;

