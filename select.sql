 CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR (100),
    dab DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
 )

 INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('Alice', 'Johnson', 20, 'A+', 'Computer Science', 'alice.johnson@example.com', '2023-08-21', 'O+', 'USA'),
('Bob', 'Smith', 22, 'B', 'Mechanical Engineering', 'bob.smith@example.com', '2022-09-15', 'A-', 'Canada'),
('Charlie', 'Nguyen', 21, 'A', 'Mathematics', 'charlie.nguyen@example.com', '2021-07-10', 'B+', 'Vietnam'),
('Diana', 'Lee', 23, 'C+', 'Biology', 'diana.lee@example.com', '2020-06-25', 'AB-', 'South Korea'),
('Ethan', 'Brown', 20, 'B-', 'History',null, '2024-01-05', 'O-', 'UK'),
('Fatima', 'Al-Sayeed', 19, 'A', 'Medicine', 'fatima.sayeed@example.com', '2023-03-12', 'A+', 'UAE'),
('George', 'Martinez', 24, 'C', 'Physics', 'george.martinez@example.com', '2019-11-30', 'B-', 'Mexico'),
('Hiroshi', 'Tanaka', 21, 'B+', 'Engineering', 'hiroshi.tanaka@example.com', '2022-02-28', 'AB+', 'Japan'),
('Isabella', 'Rossi', 22, 'A-', 'Architecture', 'isabella.rossi@example.com', '2021-12-18', 'O+', 'Italy'),
('John', 'Doe', 23, 'D', 'Philosophy', 'john.doe@example.com', '2020-04-09', 'A-', 'USA');


-- SELECT * FROM students; for shoing everything from table;
-- SELECT email, age , blood_group FROM students; for seeing indivitual data;

-- SELECT email as student_email FROM students;// for so/ing collumn name as a alias;
-- SELECT  email as "Student Email", age FROM students; // for the collumn name better use "";

-- SELECT * FROM students ORDER BY first_name ASC; // for filteration
-- SELECT * from students ORDER BY dob ASC; // filteration by order

-- SELECT DISTINCT country from students;// for finding unique data
--  SELECT DISTINCT blood_group FROM students;// for finding unique data

-- SELECT * FROM students 
--   WHERE country ='USA';// if its true then it Where Works its run a loop

-- SELECT * FROM students 
--   WHERE grade ='C'AND course ='Physics'; // its Work like and oparetor
-- SELECT * FROM students 
--    WHERE country ='USA' OR country ='Australia';// its Work like or oparetor

-- SELECT * FROM students 
--    WHERE (country ='USA' OR country ='Australia') AND age =20;//OR and AND oparetor;

-- SELECT * FROM students 
--    WHERE age >= 20 AND course='History'; // condition by age

-- SELECT * FROM students
--   WHERE age != 20;// everything Without 20 || also We can Write != like <> this

-- SELECT * FROM students 
--   WHERE country <> 'USA' AND  course <>'Physics';

-- SELECT * FROM students 
--   WHERE NOT country = 'USA'; // NOT for except the data

-- **NULL m-8 v-6

-- SELECT NULL <> 1; // null is null

-- SELECT * FROM students 
--   WHERE email = 'alice.johnson@example.com';// filer data by query

--   SELECT * FROM students
--      WHERE email IS NOT NULL; // checking is its null or not

-- SELECT * FROM students

--  SELECT COALESCE(email, 'email not privided') as email, blood_group, first_name FROM students; if We have null value then We can use coalesce for except null

-- **limit offset m-2 v-7
-- SELECT * FROM students LIMIT 5;

-- SELECT * FROM students
--   WHERE country IN('USA', 'UK', 'Canada') LIMIT 5; // data limit to render

-- SELECT * FROM students LIMIT 5 OFFSET 5;// offset for skipping first 5 items

-- -- pagination
-- SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
-- SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
-- SELECT * FROM students LIMIT 5 OFFSET 5 * 2;
-- SELECT * FROM students LIMIT 5 OFFSET 5 * 3;

-- delete
-- SELECT * FROM students;
--  DELETE FROM students; for delete
--  DELETE FROM students
--    WHERE grade ='B+'

-- DELETE FROM students 
--   Where grade = 'c' AND country = 'USA'// condition Wise delete

-- *Update  module8 v-8
-- Select * FROM students;

-- UPDATE students
--    set email ='default@gmail.com'
--    WHERE student_id = 61;


-- m-8 v-9
-- 
-- SELECT * FROM students 
--    WHERE country ='USA' or country ='Canada' or country ='UK';

-- SELECT * FROM students 
-- --    WHERE country IN('USA', 'UK', 'Canada');// for multiple OR
--  SELECT * FROM students 
--    WHERE country NOT IN('USA', 'UK', 'Canada');// Not in for THose country

-- **BETWEEN
-- SELECT * FROM students 
--    WHERE age BETWEEN 20 and 22; // BetWeen for in middle data include condition

-- SELECT * FROM students 
--    WHERE dob BETWEEN '2021-01-01' and '2022-01-01' ORDER BY dob;// filter by date


-- **LIKE Keyord case sensetive
-- SELECT * FROM students 
--    WHERE first_name LIKE 'F%';// filter from all first_name stating With F; % for all filtering

-- SELECT * FROM students 
   -- WHERE first_name LIKE '%n';// filter from all first_name end With F; % for all filtering;

   -- SELECT * FROM students 
   -- WHERE first_name LIKE '___n';// if We need to skip first 2 letter then need to use _ _ this then filtering With n

--  SELECT * FROM students 
--    WHERE first_name LIKE '___n_';// n_ means if the character available after the n then it give those

-- ** ILIKE case insensative
-- SELECT * FROM students 
--    WHERE first_name ILIKE 'f%'; // 
