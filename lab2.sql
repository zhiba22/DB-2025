CREATE DATABASE Faculty;

\c Faculty;

CREATE TABLE Students(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(70),
    lastname VARCHAR(70),
    isActive INTEGER,
    email VARCHAR(70)
);

ALTER TABLE Students 
ADD COLUMN gender BOOLEAN;

ALTER TABLE Students
ALTER COLUMN isActive TYPE BOOLEAN
USING isActive::BOOLEAN;

ALTER TABLE Students 
ALTER COLUMN gender SET DEFAULT 0;

ALTER TABLE Students 
ALTER COLUMN gender DROP DEFAULT;

ALTER TABLE Students
ADD CONSTRAINT students_pk PRIMARY KEY (id);

ALTER TABLE Students 
ALTER COLUMN email SET DEFAULT 'abc@gmail.com';

DROP TABLE Students;

\c postgres;
DROP DATABASE Faculty;