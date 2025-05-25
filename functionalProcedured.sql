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



-- create procedure


select * FROM employees2;



-- variable declear in procedure
  CREATE PROCEDURE remove_emp_var()
  LANGUAGE plpgsql 
  AS
  $$
-- use variable
   DECLARE
   test_var INT;

--  
    BEGIN
       SELECT employee_id INTO test_var FROM employees2 WHERE employee_id = 26;
      DELETE FROM employees2 WHERE employee_id = test_var;

    END
  $$;


CALL remove_emp_var();

   


-- variable declear and user parameter in procedure
  CREATE PROCEDURE remove_emp_by_id(p_emp_id INT)
  LANGUAGE plpgsql 
  AS
  $$
-- use variable
   DECLARE
   test_var INT;

--  
    BEGIN
       SELECT employee_id INTO test_var FROM employees2 WHERE employee_id = p_emp_id;
      DELETE FROM employees2 WHERE employee_id = test_var;
      RAISE NOTICE 'Employee removed successfully';
    END
  $$;


CALL remove_emp_by_id(11);