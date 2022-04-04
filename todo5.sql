UPDATE users SET city = 6 WHERE id IN (1,3,7,15);
UPDATE users SET city = 5 WHERE id IN (2,5,8);
UPDATE users SET city = 1 WHERE id IN (4,6,9);
UPDATE users SET city = 2 WHERE id IN (10,14,12);
UPDATE users SET city = 5 WHERE id IN (11,13);

ALTER TABLE users ADD COLUMN age TINYINT(3);
UPDATE users SET age = (YEAR(CURRENT_DATE)-YEAR(birthdate))-(RIGHT(CURRENT_DATE,5)<RIGHT(birthdate,5));
SELECT MAX(age) AS 'minimal age' FROM users;
SELECT MIN(age) AS 'maximal age' FROM users;
SELECT AVG(age) AS 'average age' FROM users;

SELECT city, MAX(age) AS 'maximal age in city' FROM users GROUP BY city;
SELECT city, MIN(age) AS 'minimal age in city' FROM users GROUP BY city;
SELECT city, AVG(age) AS 'average age in city' FROM users GROUP BY city;