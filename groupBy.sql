SELECT * from students;


-- ** Group by
--  SELECT country FROM students
--    GROUP BY country; // for grouping output

--  SELECT country, count(*) FROM students  // its count all data from selected column
--    GROUP BY country;

--  SELECT country, count(*), avg(age) FROM students
--    GROUP BY country;// for finding avarage form different rows


--  Having
--     


-- SELECT extract(year from dob) as birth_year
--    FROM students
--       GROUP BY birth_year; 

-- SELECT extract(year from dob) as birth_year, count(*)// its counting that how many row in same year
--    FROM students
--       GROUP BY birth_year;


