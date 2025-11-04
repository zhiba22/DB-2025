create table users(
    user_id SERIAL PRIMARY KEY ,
    username VARCHAR(30 ) UNIQUE NOT NULL,
    age INT NOT NULL check(age>16),
    country varchar(20)
); --1

insert into users(username, age, country)
values('Aigerim', 45, 'South Korea'),
      ('Magzhan', 21, 'Kazakhstan'),
      ('Merey', 33, 'Uzbekistan'); --2

alter table users
add column phone_number CHAR(12) default '+77001234567'; --3

ALTER TABLE users
ADD COLUMN password VARCHAR(50)
CHECK (
    LENGTH(password) >= 8
    AND password ~ '[A-Z]'
    AND password ~ '[a-z]'
    AND password ~ '[0-9]'
    AND password ~ '[^A-Za-z0-9]'
); --4

ALTER TABLE users
ALTER COLUMN username DROP NOT NULL; --5

SELECT UPPER(username) AS username_upper,
       LOWER(country) AS country_lower
FROM users; --6

SELECT LEFT(username, 3) AS first_three_chars
FROM users; --7

INSERT INTO users (username, age, country)
VALUES
(NULL, 19, 'Kyrgyzstan'),
(NULL, 28, 'Kazakhstan'),
('Aruzhan', 23, NULL),
('Timur', 20, NULL); --8

SELECT
    COALESCE(username, 'no username') AS username, -- вщзвращает заданное значение если атрибут равен НУЛЛ
    COALESCE(country, 'no country') AS country
FROM users; --9

SELECT *
FROM users
WHERE username ILIKE '%s%'; --10

SELECT FORMAT('User %s, %s is from %s', user_id, username, country) AS user_info
FROM users; --11

/*The CONCAT() function adds two or more strings together.
*/