--Q4.1
/*No, it serves as a foreign key so you cannot delete it unless you remove the relationship*/
--Q4.2
/*No, you have to have a preexisting value for fips = '80' to add to it*/
--Q4.3
/*Prompt: Please define two tables for me in sql: the first is with states' names and fips and the second with population during different years.
Response: It appears to be completely sufficient to complete this task, even using 'state_id' that you could use to reference between the tables.*/
--Q4.5
/*Prompt: Define three tables as in this ER diagram:
Response: Yes, this appears to create and join relationships between tables correctly*/
--Q4.6
/*Prompt: Please write code that can select the state with the highest income using these tables. Note: this should include data only from the most recent years (you will determine what length that is).
Response: Yes, this code would adequately find the state with the highest income in recent years (which it determined to be the last five years)*/
WITH recent_years AS (
    SELECT MAX(year) as max_year 
    FROM income
), 
filtered_income AS (
    SELECT fips, income, year
    FROM income
    WHERE year >= (SELECT max_year FROM recent_years) - 5  -- Adjust this number for more years
)
SELECT n.name, fi.income, fi.year
FROM filtered_income fi
JOIN name n ON fi.fips = n.fips
ORDER BY fi.income DESC
LIMIT 1;
--Q4.7
/*Prompt: Calculate population growth using these tables for the state of Virginia.
Response: Using the first prompt I provided, I believe ChatGPT was able to provide the correct answer in population growth for Virginia being 16.4%*/
WITH virginia_fips AS (
    SELECT fips
    FROM name
    WHERE name = 'Virginia'
),
population_data AS (
    SELECT p.year, p.pop
    FROM population p
    JOIN virginia_fips v ON p.fips = v.fips
),
earliest_year AS (
    SELECT pop AS earliest_pop
    FROM population_data
    ORDER BY year ASC
    LIMIT 1
),
latest_year AS (
    SELECT pop AS latest_pop
    FROM population_data
    ORDER BY year DESC
    LIMIT 1
)
SELECT 
    (latest_pop - earliest_pop) AS population_change,
    ROUND(((latest_pop - earliest_pop) / CAST(earliest_pop AS DECIMAL) * 100), 2) AS population_growth_percentage
FROM earliest_year, latest_year;
--Q4.8
/*For this assignment, it has provided mostly correct data (excluding only that some names of variables weren't exactly what was wanted, which could cause formatting issues.
I suspect the code could be more efficient, and that ChatGPT wouldn't be able to handle more complex problems, but otherwise it was fine*/
