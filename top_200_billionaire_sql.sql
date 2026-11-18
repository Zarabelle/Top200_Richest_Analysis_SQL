/*Table imported*/ 
--see table
select* from Top200RichestPersonintheWorld;
--run and see

--1. Retrieve the 20 richest billionaires. 
 SELECT name, networth_billion
 FROM Top200RichestPersonintheWorld
 ORDER BY networth_billion
 DESC LIMIT 20;
 --run and see
 
--2. Identify the five youngest billionaires. 
SELECT name, age 
from Top200RichestPersonintheWorld
order by age 
asc limit 5;
--run and see

--3. Calculate the average age and average net worth.
select avg(age)as Avg_Age,avg(networth_billion) as Avg_NWorth
from Top200RichestPersonintheWorld;
--run and see

--4. Identify the five most represented countries.
select country, count(country) as most_represented_countries 
from Top200RichestPersonintheWorld
group by 1
order by 2
desc limit 5;
--run and see

--5. Calculate the combined net worth of billionaires from each country. 
select country, sum(networth_billion) as combined_net_worth
from Top200RichestPersonintheWorld
group by 1
order by 2
desc;
--run and see

--6. Identify the five industries with the highest number of billionaires.
select industry, count(*) as No_of_billionaires
from Top200RichestPersonintheWorld
group by 1
order by 2
desc limit 5;
--run and see

--7. Find countries with at least five billionaires.
SELECT country, COUNT(*) AS total_billionaires
FROM Top200RichestPersonintheWorld
GROUP BY 1
HAVING COUNT(*) >= 5
ORDER BY 2 DESC;
--run and see

--8. Calculate the total wealth of billionaires younger than 50.
SELECT sum(networth_billion) AS total_wealth_under_50
FROM Top200RichestPersonintheWorld
where age <50;
--run and see

--9. Identify billionaires whose net worth exceeds the overall average net worth.
SELECT name, networth_billion
FROM Top200RichestPersonintheWorld
where networth_billion > (SELECT avg(networth_billion) as Avg_NWorth
from Top200RichestPersonintheWorld)order by 1 asc;
--run and see

--10.Identify the industry with the highest average net worth.
SELECT industry, AVG(networth_billion) AS avg_networth
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY avg_networth DESC
LIMIT 1;
--run and see

--A Basic SELECT, WHERE and ORDER BY

--11 Show only the name, country and industry of all billionaires.
SELECT name, country, industry
from Top200RichestPersonintheWorld;
--run and see

--12 List all billionaires from Nigeria. If there are none, show those from India.
SELECT name,age, country 
from Top200RichestPersonintheWorld
where country = 'Nigeria' ;
--run and see 

--to see the ones from India 
SELECT name,age, country
from Top200RichestPersonintheWorld
where country = 'India';
--run and see 

--13 Show billionaires in the Technology industry, ordered by net worth from highest to lowest.
select name, industry, networth_billion
from Top200RichestPersonintheWorld
where industry = 'Technology'
ORDER by networth_billion DESC;
--run and see

--14 List billionaires aged 80 or older, with their names and ages.
select name, age
from Top200RichestPersonintheWorld
where age >= 80
ORDER by age;
-- run and see 

--15 Show billionaires whose names start with the letter M.
select name
from Top200RichestPersonintheWorld
where name like 'M%';
--run and see 

--B Aggregates
--16. Count how many billionaires are in the table.
SELECT COUNT(*) 
FROM Top200RichestPersonintheWorld;
-- run and see 

--17. Find the oldest and youngest ages (hint: MAX and MIN).
-- for oldest age 
SELECT name, min(age) 
from Top200RichestPersonintheWorld;
--run and see 

-- for youngest age 
SELECT name, max(age) 
from Top200RichestPersonintheWorld;
-- run and see 

--18. Find the highest net worth among billionaires from the United States.
SELECT name, networth_billion
FROM Top200RichestPersonintheWorld
WHERE country = 'United States'
ORDER BY networth_billion DESC
LIMIT 1;
--run and see 

--19. Calculate the total net worth of all billionaires in the Technology industry.
SELECT SUM(networth_billion) AS total_tech_networth
FROM Top200RichestPersonintheWorld
WHERE industry = 'Technology';
--run and see 

--C GROUP BY and HAVING

--20. Count the billionaires in each industry, ordered from most to least.
SELECT industry, COUNT (name) AS billionaires_per_industry
FROM Top200RichestPersonintheWorld
GROUP BY 1
ORDER BY 2 DESC;
--run and see 

--21. Find the average age of billionaires in each country.
SELECT country, avg(age) AS avg_age_per_country
FROM Top200RichestPersonintheWorld
GROUP BY 1
ORDER BY 2 DESC;
--run and see 

--12. Show industries whose combined net worth is above 300 billion.
SELECT industry, sum(networth_billion) AS total_networth_per_industry
FROM Top200RichestPersonintheWorld
GROUP BY 1
having sum(networth_billion)  >300
ORDER BY 2;
--run and see 

--D Harder (subqueries and combined conditions)

--23. Find billionaires who are older than the average age.
SELECT name, age
FROM Top200RichestPersonintheWorld
where age > (SELECT  avg(age) from Top200RichestPersonintheWorld);  
--run and see 

--24. Show billionaires from the United States who are in Technology and worth more than 50 billion.
SELECT name,industry,networth_billion,country
FROM Top200RichestPersonintheWorld
where industry = 'Technology' 
and networth_billion >50  
and country = 'United States'
ORDER BY networth_billion ASC;  
--run and see 

--25. Find the country with the highest average net worth, but only among countries with at least 3 billionaires.
SELECT country, AVG(networth_billion) AS avg_networth
FROM Top200RichestPersonintheWorld
GROUP BY country
HAVING COUNT(*) >= 3
ORDER BY avg_networth DESC
LIMIT 1;
-- run and see 