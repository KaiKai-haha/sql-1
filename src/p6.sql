//Retrieve employees with a salary greater than 50,000
SELECT name, position
FROM employees
WHERE salary > 50000;

//Bonus: Retrieve the top three highest-paid employees
SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
