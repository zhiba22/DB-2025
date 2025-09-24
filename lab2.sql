CREATE DATABASE faculty;

CREATE TABLE Students(
    id SERIAL,
    firstname VARCHAR(70),
    lastname VARCHAR(70),
    isActive INTEGER,
    email VARCHAR(70)
);

ALTER TABLE Students 
ADD COLUMN gender INTEGER;

ALTER TABLE students
ALTER COLUMN isActive TYPE BOOLEAN;

ALTER TABLE Students 
ALTER COLUMN gender SET DEFAULT 0;

ALTER TABLE Students 
ALTER COLUMN gender DROP DEFAULT;

ALTER TABLE Students 
ADD PRIMARY KEY(id);

ALTER TABLE Students 
ALTER COLUMN email SET DEFAULT 'abc@gmail.com';

DROP TABLE Students;

DROP DATABASE faculty;

/*
CREATE TABLE product_copy 
LIKE products;
*/

--DELETE - deletes a specific row in a table based on condition WHERE
--TRUNCATE - deletes all rows from a table 
--DROP - Permanently deletes the entire table, including its data and structure, from the database