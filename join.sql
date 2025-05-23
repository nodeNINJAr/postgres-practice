--  create a user table
CREATE TABLE "user"(id SERIAL PRIMARY KEY, username VARCHAR(25)NOT NULL);

-- create a post table incuding foreign key user id table relation
CREATE TABLE post(
     id SERIAL PRIMARY KEY,
     title text NOT NULL,
     user_id INTEGER REFERENCES "user"(id)  on DELETE SET DEFAULT DEFAULT 2
    --  //foreign key
);


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

  SELECT * FROM post; 







-- ** inner join
-- join keyword for joining multiple table  




-- --  full sytex -- with join relation with two table

-- SELECT post.id, "user".username
-- FROM post
-- JOIN "user" ON post.user_id = "user".id;


--   ** renameing table name like that
-- SELECT p.id FROM post p
-- JOIN "user" ON p.user_id = "user".id;
-- 
-- SELECT p.id, u.username FROM post p
-- JOIN "user" u ON p.user_id = u.id;

--   **also  renameing table name like that using as
-- SELECT * FROM post as p
-- JOIN "user" as u ON p.user_id = u.id;\



-- we also write like this inner join  
-- SELECT p.id, u.username FROM post p
-- INNER JOIN "user" u ON p.user_id = u.id;


SELECT * FROM "user"
JOIN post on post.user_id = "user".id; 


INSERT INTO post (id, title, user_id) VALUES
(6, 'this is a test post title', NULL);



-- left join if user have or not id have or null priroty for left table
SELECT * FROM post as p
LEFT JOIN "user" u on p.user_id = u.id;

-- RIght join if user have or not id have or null priroty for right table
SELECT * FROM post as p
RIGHT JOIN "user" u on p.user_id = u.id;

-- we also called left/right JOIN is LEFT/RIGHT OUTER JOIN









