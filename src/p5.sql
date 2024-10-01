//Calculate average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

//Bonus: Retrieve department name, highest salary, and employees with that salary
WITH HighestSalary AS (
    SELECT department, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department
)
SELECT e.department, h.max_salary, e.name
FROM employees e
JOIN HighestSalary h ON e.department = h.department AND e.salary = h.max_salary;

