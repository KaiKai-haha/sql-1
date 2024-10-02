//Create a composite index on department and salary to optimize the query
CREATE INDEX idx_department_salary ON employees(department, salary);

//Original query that will benefit from the index
SELECT *
FROM employees
WHERE department = 'Sales' AND salary > 50000;

-- Explanation:
-- The composite index `idx_department_salary` improves the query performance
-- by first filtering by department and then by salary. This reduces the
-- number of rows the database needs to scan, leading to faster execution.
--
-- Trade-offs:
-- 1. The index takes up additional storage space.
-- 2. Write operations (INSERT, UPDATE, DELETE) on the employees table may become slower 
--    since the index needs to be updated with each change.
