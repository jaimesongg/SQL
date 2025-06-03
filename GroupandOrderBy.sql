# group by: groups rows that have the same values in the sepcified columns that your grouping on

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender; # different than DISTINCT because it "rolls" up all the data into the rows (useful for aggregated functions)

# does not work because we are not using an aggregated function like average or sum for first_name
# if not using aggregated func we have to use the same column as GROUP BY for SELECT
SELECT first_name
FROM employee_demographics
GROUP BY gender;

# finds average age of both genders
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

# can do multiple
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

# aggregated functions
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

# order by: sorts result set in ascending or descending order
SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC; # orders gender first then age (desc only affects age) (what you column you put first matters in ordering)

# not recommended
SELECT *
FROM employee_demographics
ORDER BY 5, 4; # positions of column names