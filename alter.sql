-- Active: 1747757174320@@localhost@5432@ph@public
-- Active: 1747757174320@@localhost@5432@practice_db
SELECT * from user2;

ALTER TABLE user2
-- default values
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;


-- insert
INSERT INTO user2 values(7,'test', 67);
INSERT INTO user2 VALUES(8,'test2', 99, 'mehedi@gmail.com');
-- drop column 
ALTER Table user2
DROP COLUMN email;

-- column rename 
ALTER TABLE user2
RENAME COLUMN age to user_age;

-- changes the collumn type
ALTER TABLE user2
ALTER COLUMN user_name TYPE VARCHAR(60);

-- set not null
ALTER TABLE user2
    ALTER COLUMN user_age set NOT NULL;

-- drop not null
ALTER TABLE user2
    ALTER COLUMN user_age drop NOT NULL;

-- make unique
ALTER TABLE user2
    ADD constraint unique_user2_user_age UNIQUE(user_age);

-- drop the uniqueness
ALTER TABLE user2
    DROP constraint unique_user2_user_age;
--  
ALTER TABLE user2
    DROP constraint unique1_user2_user_age; 

-- truncate for only all table ro delete
TRUNCATE TABLE user2;

-- SQL Clauses.    
-- SELECT -- select is using for data query
-- FROM
-- wHere
-- ORDER
-- GROUP
-- HAVING
-- JOIN
-- DISTINCT
-- LIMIT
-- OFFSET



