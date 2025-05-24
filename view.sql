-- view is like a fuction that use for repetaive works
CREATE VIEW dept_avg_salary
AS
SELECT department_name, AVG(salary) AS avg_salary
FROM employees2
GROUP BY department_name;

SELECT * FROM dept_avg_salary;



-- 

CREATE View test_view
AS
select department_name, salary, employee_name
 FROM employees2
WHERE department_name in
(SELECT department_name FROM employees2 WHERE department_name LIKE '%R%');

SELECT * FROM test_view