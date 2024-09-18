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
--Q4.7
/*Prompt: Calculate population growth using these tables for the state of Virginia.
Response: Using the first prompt I provided, I believe ChatGPT was able to provide the correct answer in population growth for Virginia being 16.4%*/
--Q4.8
/*For this assignment, it has provided mostly correct data (excluding only that some names of variables weren't exactly what was wanted, which could cause formatting issues.
I suspect the code could be more efficient, and that ChatGPT wouldn't be able to handle more complex problems, but otherwise it was fine*/
