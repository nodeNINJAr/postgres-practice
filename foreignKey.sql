--  create a user table
CREATE TABLE "user"(id SERIAL PRIMARY KEY, username VARCHAR(25)NOT NULL);

-- create a post table incuding foreign key user id table relation
CREATE TABLE post(
     id SERIAL PRIMARY KEY,
     title text NOT NULL,
     user_id INTEGER REFERENCES "user"(id)  on DELETE SET DEFAULT DEFAULT 2
    --  //foreign key
);

ALTER Table post
   ALTER COLUMN user_id set NOT NULL;


INSERT INTO "user" (username) VALUES
('akash'),('batash'),('sagor'),('nodi');

SELECT * FROM "user";

INSERT INTO post (title, user_id)
VALUES 
  ('Getting Started with PostgreSQL', 1),
  ('Understanding SQL Joins', 2),
  ('PostgreSQL Performance Tips', 3),
  ('How to Use Indexes Effectively', 1),
  ('Backup and Restore in PostgreSQL',2);



--   INSERT INTO post (title, user_id) VALUES('test',null);

  SELECT * FROM post; 

-- deletion constraint on delete user
-- Cascading Deletion --> on DELETE CASCADE  // if user deleted all user data Will be deleted
-- Setting NULL --> ON DELETE SET NULL // When delete user from table it Will be make userId null on foreignid // it not Work When We add NOT NULL ON ID
-- Restrict Deletion --> ON DELETE RESTRICT / ON DELETE NO ACTION (default) 
-- Set Default value --> ON DELETE SET DEFAULT  // DEFAULT 2  // set deafult values on deletion

-- **deletion

DELETE FROM "user"
WHERE id=1;

DROP TABLE post;
DROP Table "user";

SELECT * FROM "user";




