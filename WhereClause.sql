# WHERE clause used to help filter our rows of data

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

# logial operators (AND OR NOT)

# both birth date and gender has to be true
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

# either birth date or gender has to be true
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
OR gender = 'male';

# checks birth_date first and if not checks if gender is not equal to male
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
OR NOT gender = 'male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

# LIKE statement: 
# % (means anything before or after like jer% would check anything with jer at the beginning and %er% checks if any has 'er' anywhere in the name) 
# _ (means a specific value)

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'; # string has to start with a (%a% means it just has to have an a in the name)

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'; # starts with an a and has 2 characters after it

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'; # starts with an a with 3 characters then anything after the 3

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';