# Top200_Richest_Analysis_SQL
SQL analysis of the Top 200 Richest People in the World using SQLite.
## ABOUT THE CASE STUDY
This project analyses the Top 200 Richest People in the World dataset
using SQL. Acting as a data analyst, I explored the data provided to find out
who the richest billionaires are, which countries and industries are
most represented, how wealth is spread across them, and how age
relates to net worth. This analysis uses SQL concepts such as
SELECT, WHERE, ORDER BY, aggregate functions, GROUP BY, HAVING and
subqueries, and was done on SQLite Online.

## DATASET
The dataset contains one table, Top200RichestPersonintheWorld,
with 200 records. The columns are:
- serial_number: unique number for each row
- rank: the person's position on the richest list
- name: full name of the billionaire
- age: age of the billionaire
- country: country the billionaire is from
- networth_billion: net worth in billions of US dollars
- industry: industry the wealth comes from

## QUESTIONS AND OUTPUTS/ANSWERS TO EACH QUESTION

## QUESTIONS
1. Retrieve the 20 richest billionaires.

  ![Answer 1](ans_1.png)

2. Identify the five youngest billionaires.
  
  ![Answer 2](ans_2.png)

3. Calculate the average age and average net worth.

   ![Answer 3](ans_3.png)

4. Identify the five most represented countries.

   ![Answer 4](ans_4.png)

5. Calculate the combined net worth of billionaires from each country.
 
  ![Answer 5](ans_5.png)

6. Identify the five industries with the highest number of billionaires.

    ![Answer 6](ans_6.png)

7. Find countries with at least five billionaires.

   ![Answer 7](ans_7.png)

8. Calculate the total wealth of billionaires younger than 50.

    ![Answer 8](ans_8.png)

9. Identify billionaires whose net worth exceeds the overall average net worth.

    ![Answer 9](ans_9.png)

10. Identify the industry with the highest average net worth.

     ![Answer 10](ans_10.png)
    
### A. Basic SELECT, WHERE and ORDER BY

11. Show only the name, country and industry of all billionaires.

 ![Answer 11](ans_11.png)

12. List all billionaires from Nigeria. If there are none, show those from India.

 ![Answer 12a](ans_12a.png)
 
 ![Answer 12b](ans_12b.png)

13. Show billionaires in the Technology industry, ordered by net worth from highest to lowest.

 ![Answer 13](ans_13.png)

14. List billionaires aged 80 or older, with their names and ages. 

 ![Answer 14](ans_14.png)

15. Show billionaires whose names start with the letter M.
 
 ![Answer 15](ans_15.png)

### B. Aggregates

16. Count how many billionaires are in the table.
 
  ![Answer 16](ans_16.png)

17. Find the oldest and youngest ages.
    
 Youngest age

 ![Answer 17a](ans_17a.png)

Oldest age

  ![Answer 17b](ans_17b.png)

18. Find the highest net worth among billionaires from the United States.

  ![Answer 18](ans_18.png)

19. Calculate the total net worth of all billionaires in the Technology industry.

  ![Answer 19](ans_19.png)


### C. GROUP BY and HAVING

20. Count the billionaires in each industry, ordered from most to least.

 ![Answer 20](ans_20.png)

21. Find the average age of billionaires in each country.

 ![Answer 21](ans_21.png)

22. Show industries whose combined net worth is above 300 billion.

 ![Answer 22](ans_22.png)

### D. Harder (subqueries and combined conditions)

23. Find billionaires who are older than the average age.

 ![Answer 23](ans_23.png)

24. Show billionaires from the United States who are in Technology and worth more than 50 billion.

 ![Answer 24](ans_24.png)

25. Find the country with the highest average net worth, but only among countries with at least 3 billionaires.

 ![Answer 25](ans_25.png)


NOTE: The queries can be found in [Top_Richest_Analysis.sql](top_200_billionaire_sql.sql).
