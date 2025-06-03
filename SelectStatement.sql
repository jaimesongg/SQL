SELECT * # selects columns
FROM parks_and_recreation.employee_demographics; 

SELECT first_name,  # can be on same row too
last_name, 
birth_date, 
age, 
(age + 10) * 10 # follows PEMDAS
FROM parks_and_recreation.employee_demographics; 

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics; 


