ALTER TABLE users add COLUMN age TINYINT(3);
UPDATE users SET age = (YEAR(CURRENT_DATE)-YEAR(birthdate))-(RIGHT(CURRENT_DATE,5)<RIGHT(birthdate,5));
SELECT MAX(age) as 'minimal age' FROM users;
SELECT MIN(age) as 'maximal age' FROM users;
SELECT AVG(age) as 'average age' FROM users;

