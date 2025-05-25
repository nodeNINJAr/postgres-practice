-- procedural means procedure gula bole dite hobe


--  non procedural approce sql by default work on non-procedural approces



SELECT * from employees2;

  SELECT count(*) FROM employees2;
CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
  SELECT count(*) FROM employees2;
$$;

SELECT emp_count();







CREATE or REPLACE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
  DELETE FROM employees2 WHERE employee_id = 50;
$$;

SELECT delete_emp();


CREATE or REPLACE Function delete_emp_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
  DELETE FROM employees2 WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(29);

