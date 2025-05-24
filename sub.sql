CREATE Table employees2 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
)

INSERT INTO employees2 (employee_name, department_name, salary, hire_date)
VALUES 
  ('Alice Johnson', 'Engineering', 75000.00, '2020-03-15'),
  ('Bob Smith', 'Marketing', 62000.00, '2019-07-22'),
  ('Charlie Evans', 'Human Resources', 58000.00, '2021-01-10'),
  ('Diana Lee', 'Engineering', 80000.00, '2018-11-30'),
  ('Ethan Clark', 'Finance', 67000.00, '2022-05-12'),
  ('Fiona Patel', 'Marketing', 61000.00, '2020-09-03'),
  ('George Miller', 'Engineering', 72000.00, '2017-06-18'),
  ('Hannah Wright', 'Finance', 69000.00, '2023-02-27'),
  ('Isaac Turner', 'IT', 71000.00, '2021-08-05'),
  ('Jasmine Reyes', 'Human Resources', 60000.00, '2019-04-09'),
  ('Kevin Brooks', 'Engineering', 77000.00, '2020-10-20'),
  ('Laura Scott', 'Marketing', 64000.00, '2022-01-14'),
  ('Martin James', 'IT', 73000.00, '2018-06-01'),
  ('Natalie Adams', 'Finance', 69500.00, '2020-11-30'),
  ('Owen Turner', 'Engineering', 81000.00, '2017-09-12'),
  ('Paula Foster', 'Human Resources', 62000.00, '2019-12-05'),
  ('Quincy Lee', 'IT', 70500.00, '2021-02-15'),
  ('Rachel Grant', 'Marketing', 63000.00, '2023-03-08'),
  ('Steven Hall', 'Engineering', 78500.00, '2016-04-19'),
  ('Tina Young', 'Finance', 66000.00, '2020-07-07'),
  ('Uma Roberts', 'Human Resources', 61000.00, '2021-05-21'),
  ('Victor Hayes', 'Engineering', 73000.00, '2018-08-13'),
  ('Wendy Price', 'Marketing', 64500.00, '2019-01-31'),
  ('Xander Moore', 'IT', 75000.00, '2022-04-17'),
  ('Yasmine Carter', 'Finance', 68000.00, '2020-02-09'),
  ('Zachary Bell', 'Engineering', 79000.00, '2019-06-15'),
  ('Amber Lewis', 'IT', 72000.00, '2021-07-01'),
  ('Brian Walsh', 'Marketing', 63500.00, '2023-01-20'),
  ('Cindy Ross', 'Finance', 67000.00, '2022-06-23'),
  ('David Morgan', 'Human Resources', 59000.00, '2018-10-11'),
  ('Erin Cooper', 'Engineering', 76000.00, '2020-03-30'),
  ('Frank Baker', 'IT', 71500.00, '2017-11-25'),
  ('Gina Hughes', 'Marketing', 62000.00, '2021-12-17'),
  ('Harold Simmons', 'Finance', 70000.00, '2019-09-14'),
  ('Irene Schmidt', 'Human Resources', 60500.00, '2020-01-05'),
  ('Jackie Neal', 'Engineering', 80000.00, '2018-07-22'),
  ('Kyle Romero', 'IT', 73500.00, '2022-08-29'),
  ('Linda Cook', 'Marketing', 65000.00, '2023-04-04'),
  ('Michael Blake', 'Finance', 69000.00, '2021-03-18'),
  ('Nina Paul', 'Human Resources', 59500.00, '2019-05-02'),
  ('Oscar Webb', 'Engineering', 78000.00, '2017-02-27'),
  ('Patricia Diaz', 'IT', 72500.00, '2020-06-09'),
  ('Quinn Foster', 'Marketing', 64000.00, '2018-12-12'),
  ('Rita Nash', 'Finance', 66500.00, '2021-09-30'),
  ('Sam Wheeler', 'Engineering', 77000.00, '2022-11-03'),
  ('Tara Barrett', 'IT', 74500.00, '2019-03-19'),
  ('Ulysses Lane', 'Human Resources', 61000.00, '2023-05-07'),
  ('Vanessa Powers', 'Marketing', 66000.00, '2020-08-26'),
  ('William Drake', 'Finance', 70000.00, '2016-10-15'),
  ('Xenia Monroe', 'Engineering', 79000.00, '2021-06-21');



-- DROP Table employees2;

SELECT * FROM employees2;
--  retrive all employees whose salary is greater than the highest salary of the HR department
SELECT max(salary) from employees2 WHERE department_name = 'Human Resources' ;


-- nested query
SELECT * FROM employees WHERE salary > (SELECT max(salary) from employees2 WHERE department_name = 'Human Resources') ;

-- Can return a single value

-- Can return Multiple rows
-- Can return a single Column

SELECT department_name, sum(salary) FROM employees2 GROUP BY department_name;
SELECT * FROM -- outer query//main query 
(select department_name, sum(salary) FROM employees2 --// sub query
 GROUP BY department_name) as sub_dept_salary;


-- 
select * FROM employees2
WHERE 
(SELECT max(salary) FROM employees2 WHERE department_name ='Human Resources')



select department_name, salary, employee_name
 FROM employees2
WHERE department_name in
(SELECT department_name FROM employees2 WHERE department_name LIKE '%R%');

SELECT department_name FROM employees2 WHERE department_name LIKE  '%R%'