UPDATE users SET gender = 1;
UPDATE users set gender = 2 WHERE id IN (1,2,4,7,8,10,11,12);
ALTER TABLE users ADD FOREIGN key (gender) REFERENCES gender(id);

UPDATE users SET company = (SELECT id FROM company WHERE company.name = users.company)
WHERE EXISTS (SELECT id FROM company WHERE company.name = users.company);

ALTER TABLE users MODIFY COLUMN company INT(11);
ALTER TABLE users ADD CONSTRAINT user_company FOREIGN KEY (company) REFERENCES company(id);