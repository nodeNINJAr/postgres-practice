SELECT * FROM employees2;


EXPLAIN ANALYSE 
SELECT * FROM employees2 WHERE employee_name = 'diana lee';


-- indexing for faster scanning
CREATE INDEX idx_employees2_employee_name
ON employees2 (employee_name);



-- for showig where the data store

-- its store data block by block on HEAP File
SHOW data_directory;