ALTER TABLE company ADD COLUMN email VARCHAR(100);
UPDATE company SET email = 'duchamp@msn.com' WHERE id = 1;
UPDATE company SET email = 'shaffei@gmail.com' WHERE id = 2;
UPDATE company SET email = 'jcholewa@gmail.com' WHERE id = 3;
UPDATE company SET email = 'mugwump@msn.com' WHERE id = 4;
UPDATE company SET email = 'tattooman@gmail.com' WHERE id = 5;
UPDATE company SET email = 'seanq@yahoo.com' WHERE id = 6;
UPDATE company SET email = 'rasca@gmail.com' WHERE id = 7;
UPDATE company SET email = 'daveed@aol.com' WHERE id = 8;
UPDATE company SET email = 'tsuruta@yahoo.com' WHERE id = 9;
UPDATE company SET email = 'ournews@yahoo.com' WHERE id = 10;
UPDATE company SET email = 'gemmell@msn.com' WHERE id = 11;
UPDATE company SET email = 'mkearl@yahoo.com' WHERE id = 12;
UPDATE company SET email = 'tedrlord@aol.com' WHERE id = 13;
UPDATE company SET email = 'pajas@yahoo.com' WHERE id = 14;

SELECT name, SUBSTRING(email, (locate('@', email))+1) AS 'domen' FROM company;
SELECT SUBSTRING(email, (locate('@', email))+1) as domen, COUNT(*) AS 'count of users' FROM company GROUP BY domen;