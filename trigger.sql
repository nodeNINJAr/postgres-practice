-- 🔄 Triggers in PostgreSQL — A Quick Guide
-- A trigger in PostgreSQL is a special type of stored procedure that automatically executes when a specific event (like INSERT, UPDATE, or DELETE) occurs on a table or view.

-- ✅ Why Use Triggers?
-- Automate audit logging

-- Enforce complex business rules

-- Automatically update or validate data

-- Prevent certain changes (like soft deletes)

-- 🔧 Basic Syntax
-- A trigger consists of two parts:

-- Trigger function: The logic that runs.

-- Trigger itself: Defines when and on what table the function should run.

-- CREATE TRIGGER TR
-- BEFORE DELETE
-- on user
-- for each row
-- EXECUTE FUNCTION function_name()





SELECT * FROM my_users;
CREATE Table my_users(
    user_name VARCHAR(50),
    email VARCHAR(100)
)

INSERT INTO my_users VALUES ('jhon','jhon@gmail.com'), ('moon', 'moon2gmail.com');

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);




SELECT * FROM deleted_users_audit;

CREATE OR REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
  BEGIN
      INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
      RAISE NOTICE 'DEleted user audit log created';
      RETURN OLD;
  END

$$



CREATE OR REPLACE Trigger save_deleted_user_trigger
BEFORE DELETE
on my_users
for EACH ROW
EXECUTE FUNCTION save_deleted_user();


DELETE FROM my_users 
WHERE user_name= 'jhon'



