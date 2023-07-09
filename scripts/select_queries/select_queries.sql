SELECT name, CONCAT(ROUND(population / (SELECT population FROM world WHERE name = 'Germany') * 100), '%') AS percentage FROM world;

-- #1 Subquery
-- List of employees (id, name) indicating the number of projects where they are task manager
SELECT id, name FROM workers;

-- Display a list of departments indicating the number of projects that employees of this department are doing


-- Display a list of employees indicating the total amount of salary payments and the number of completed tasks


-- List of projects indicating the amount of payments for employees who performed tasks for these projects


-- Display a list of departments (all) with an indication of the average monthly payment for all employees of a given department

-- List projects with an indication of the number of tags associated with project tasks and the number of employees performing tasks for this project

-- Display a list of tags indicating the number of projects in which they are used, as well as the number of employees using these tags when setting tasks

-- List tasks that were completed slower than the average task execution


-- #2 GROUP BY
-- Calculate the amount of salaries for all employees

-- Display the average salaries of employees until March from high to low

-- Display average salaries by month

-- Display the sums of all salaries by months in which the sums of salaries are greater than or equal to 2000

-- Count the number of tags for each task and display in descending order of number

-- Select the identifier of the second most popular tag

-- For each employee, except for worker_id = 11,12, display the number of completed tasks

-- Display the amount of salaries by month and day in a month
