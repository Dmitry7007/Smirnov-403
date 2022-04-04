CREATE TABLE project(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100)
);

CREATE TABLE task(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(250) NOT NULL,
date_start DATETIME,
date_end DATETIME,
category_id INT(11) NOT NULL
);

CREATE TABLE users(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(45) NOT NULL,
secondname VARCHAR(45) NOT NULL,
middlename VARCHAR(45),
birthdate DATE NOT NULL
);

CREATE TABLE category(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
parent_category INT(11)
);

CREATE TABLE tag(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45),
colour VARCHAR(100)
);
ALTER TABLE users ADD(
gender ENUM('male','female'),
email VARCHAR(255) UNIQUE,
company VARCHAR(100),
occupation VARCHAR(100),
street VARCHAR(45),
city VARCHAR(45),
state VARCHAR(45),
telephone DECIMAL(10) UNIQUE,
mobile DECIMAL(10) UNIQUE);

ALTER TABLE users
ADD CONSTRAINT UNIQUE (firstname, secondname, middlename, birthdate, street, city, state);

INSERT INTO users (firstname, secondname, middlename, birthdate, email, company, occupation, street, city, state, gender, telephone, mobile) VALUES
('Elizabeth','Smith','Tillman','1979-08-27','murray1977@hotmail.com','Franklin_Simon','Registered Nurse','4375 Anmoore Road','New_York','New York','female','9174532005','7187131633'),
('Kay','Jones','Stanfill','1985-09-12','jermaine_thi@hotmail.com','Rainbow_Bay_Crafts','Radio and Television Announcer','4717 Golden Street','Miami','Florida','female','3056911864', '7722002115'),
('Ignacio','White','McGinley','1979-08-27','ben2012@yahoo.com','Shoe_Kicks','Loan Counselor','4751 Jail Drive',' Green_River','Illinois','male','3099498479','7084203660'),
('Jessie ','Wood','Harris','1989-09-27','charlene.hodkiewi@gmail.com','Ideal_Garden_Maintenance','Rock Splitter, Quarry','752 Melrose Street','Yakima','Washington','female',' 5099458744',' 5097317293'),
('Joan','Moore','Marquart','1991-08-15','ricky.flatl@yahoo.com','Wise_Solutions','Cook, Private Household','1310 Rosebud Avenue','Pine_Bluff','Arkansas','male','8704402924','8708728799'),
('Andrew','Thompson','Williams','1994-05-23','maye_kund0@yahoo.com','The_Serendipity_Dip','Textile Knitting and Weaving Machine Setter, Operator, and Tender','1956 Rosebud Avenue',' Little_Rock','Arkansas','male','7187131633','9174532005'),
('Linda','Rodriguez','Robinson','1996-07-07','jerrell_han3@yahoo.com','Netcore','Insurance Claims Clerk','Insurance Claims Clerk','Newark','New_Jersey','female','2017013461','2013033995'),
('Emily','Hernandez','Savoy','1964-04-11','gwen2002@gmail.com','Netcore','Special Education Teacher, All Other','2787 Patterson Road','New_York','New_York','female','7188738484','6462003786'),
('Richard','Powell',' Edmondson','1981-09-24','maddison1975@yahoo.com','Sounds_Great_Inc','Military Officer Special and Tactical Operations Leader, All Other','750 Walkers Ridge Way',' Burr_Ridge','Illinois','male','6302072505','8479170467'),
('Pamela','Powell',' Allen','1967-12-20','scottie1975@gmail.com','Personal_&_Corporate_Design','Artillery and Missile Officer','4096 Young Road',' Caldwell','Idaho','female','2084547202','27424'),
('Christy','Sanchez',' Barton','1973-05-23','hunter2006@hotmail.com','Standard_Sales','Print Binding and Finishing Worker','986 Stoneybrook Road','Orlando','Florida','female','3214375611','4079457208'),
('James','Sanchez','Harrison','1964-01-02','zoe2006@yahoo.com','Licorice_Pizza','Sound Engineering Technician','3143 Lindale Avenue','Oakland','California','male','5105547640','5108676194'),
('Daniel','Sanchez','Madrid','1991-02-21','jacinto2000@gmail.com','Hills_Supermarkets','Compensation, Benefit, and Job Analysis Specialist','4220 Ingram Street','Dayton','Ohio','male','9374716864','9372517085'),
('Jerry','Sanchez','Coleman','1982-08-09','kyleigh1979@gmail.com','ManPower','Industrial Engineering Technician','2748 Bungalow Road','Martinsburg','Nebraska','male','4029458735','3085937026'),
('Claretha','Sanchez','Bowman','1958-02-06','alexandro.vonrued@yahoo.com','Virgin_Megastores','Fire Inspector and Investigator','4497 Lightning Point Drive','Somerville','Tennessee','female','9014659533','4236474173');
ALTER TABLE users ADD new_post VARCHAR(25) DEFAULT " ";
ALTER TABLE users DROP COLUMN new_post;
ALTER TABLE users ALTER COLUMN city SET DEFAULT 'Tomsk';

ALTER TABLE users MODIFY COLUMN gender TINYINT(1) NOT NULL;
ALTER TABLE users ALTER COLUMN gender SET DEFAULT 1;

CREATE TABLE gender (
id TINYINT(1) PRIMARY KEY AUTO_INCREMENT,
rus VARCHAR(10) NOT NULL,
eng VARCHAR(10) NOT NULL
);

INSERT INTO gender (rus, eng) values
('Муж', 'male'),
('Жен', 'female');

CREATE TABLE company (
id INT(11) PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(60),
director VARCHAR(60),
TIN VARCHAR(30) UNIQUE,
PSRN VARCHAR(20) UNIQUE,
adress VARCHAR(100)
);

CREATE TABLE city (
id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20)
);

INSERT INTO company (name) VALUES 
('Franklin_Simon'), ('Rainbow_Bay_Crafts'), ('Shoe_Kicks'), ('Ideal_Garden_Maintenance'), ('Wise_Solutions'), ('The_Serendipity_Dip'),
('Netcore'), ('Sounds_Great_Inc'), ('Personal_&_Corporate_Design'), ('Standard_Sales'), ('Licorice_Pizza'), ('Hills_Supermarkets'),
('ManPower'), ('Virgin_Megastores');
INSERT INTO city (name) VALUES
('Tomsk'), ('Novosibirsk'), ('New_York'), ('Miami'), ('Yakima'), ('Pine_Bluss'), ('Little_Rock'), ('Newark'),
('Burr_Ridge'), ('Caldwell'), ('Orlando'), ('Oakland'), ('Dayton'), ('Martinsburg'), ('Somerville');
UPDATE users SET gender = 1;
UPDATE users set gender = 2 WHERE id IN (1,2,4,7,8,10,11,12);
ALTER TABLE users ADD FOREIGN key (gender) REFERENCES gender(id);

UPDATE users SET company = (SELECT id FROM company WHERE company.name = users.company)
WHERE EXISTS (SELECT id FROM company WHERE company.name = users.company);

ALTER TABLE users MODIFY COLUMN company INT(11);
ALTER TABLE users ADD CONSTRAINT user_company FOREIGN KEY (company) REFERENCES company(id);