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


SELECT p.name, p.passportnumber
from  passenger p
where EXISTS 
(SELECT * 
FROM mealplan m, planeticket pt, books b 
WHERE m.mealplanname = 'Vegan' 
AND pt.classtype='Economy'
and b.ticketnumber = pt.ticketnumber
and b.passportnumber = p.passportnumber
);


select * 
from passenger p 
where exists (
	select * 
	from planeticket pt, books b
	where pt.classtype = 'Economy'
	and pt.ticketnumber = b.ticketnumber
	and b.passportnumber = p.passportnumber
);

exit;
