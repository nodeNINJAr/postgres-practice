CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE Table departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'john doe' ,101);
INSERT INTO employees VALUES
(2, 'john doe',102);

INSERT INTO departments VALUES
(101, 'human resource');
INSERT INTO departments VALUES
(102, 'markating');

SELECT* FROM employees;
SELECT* FROM departments;


-- cross join
SELECT* FROM employees
CROSS JOIN departments;

-- Natural join must need common column output matched id
SELECT* FROM employees
NATURAL JOIN departments;





