/* DML - Data Manipulation Language
a component of SQL used to manage and modify data within a database.
It involves SQL commands like "SELECT", "INSERT", "UPDATE", "DELETE" that allows users to retrieve, add, change, and remove data from database tables.
*/
CREATE DATABASE faculty; --2

CREATE TABLE students( --3
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    lastname VARCHAR(30),
    gender CHAR(1),
    age INTEGER
);

INSERT INTO students (name, lastname) --4
VALUES ('Zhibek', 'Serikzhan');

INSERT INTO students (name, lastname, gender, age) --5
VALUES ('Jane', 'Smith', 'F', NULL);

INSERT INTO students (name, lastname, gender, age) --6 
VALUES 
('Yenlik','Abayeva', 'F', 55), 
('Aruzhan', 'Sarsen', 'F', 19), 
('Assylbek', 'Borashev', 'M', 45);

ALTER TABLE students --7
ALTER COLUMN age SET DEFAULT 20;

INSERT INTO students (name, lastname, gender) --8
VALUES ('Emily', 'David', 'F');

CREATE TABLE teachers --9
LIKE students;

INSERT INTO teachers 
SELECT * FROM students; --10

UPDATE students SET gender = '0' 
WHERE gender IS NULL; --11

UPDATE students SET age = 20 
WHERE age IS NULL; --12

SELECT name, age + 2 
AS updated_age 
FROM students; --13

DELETE FROM students
WHERE age<20; --14

DELETE FROM teachers --15
WHERE id IN (SELECT id FROM students) 
RETURNING *;

DELETE FROM students RETURNING *; --16
