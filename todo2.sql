ALTER TABLE users ADD(
gender ENUM('male','female'),
email VARCHAR(255) UNIQUE,
company VARCHAR(255),
occupation VARCHAR(100),
street VARCHAR(45),
city VARCHAR(45),
state VARCHAR(45),
telephone DECIMAL(10) UNIQUE,
mobile DECIMAL(10) UNIQUE);

ALTER TABLE users
ADD CONSTRAINT UNIQUE (firstname, secondname, middlename, birthdate, street, city, state);

INSERT INTO users (firstname, secondname, middlename, birthdate, email, company, occupation, street, city, state, gender, telephone, mobile) VALUES
('Elizabeth','Smith','Tillman','1979-08-27','murray1977@hotmail.com','Franklin Simon','Registered Nurse','4375 Anmoore Road','New_York','New York','female','9174532005','7187131633'),
('Kay','Jones','Stanfill','1985-09-12','jermaine_thi@hotmail.com','Rainbow Bay Crafts','Radio and Television Announcer','4717 Golden Street','Miami','Florida','female','3056911864', '7722002115'),
('Ignacio','White','McGinley','1979-08-27','ben2012@yahoo.com','Shoe Kicks','Loan Counselor','4751 Jail Drive',' Green_River','Illinois','male','3099498479','7084203660'),
('Jessie ','Wood','Harris','1989-09-27','charlene.hodkiewi@gmail.com','Ideal Garden Maintenance','Rock Splitter, Quarry','752 Melrose Street','Yakima','Washington','female',' 5099458744',' 5097317293'),
('Joan','Moore','Marquart','1991-08-15','ricky.flatl@yahoo.com','Wise Solutions','Cook, Private Household','1310 Rosebud Avenue','Pine_Bluff','Arkansas','male','8704402924','8708728799'),
('Andrew','Thompson','Williams','1994-05-23','maye_kund0@yahoo.com','The Serendipity Dip','Textile Knitting and Weaving Machine Setter, Operator, and Tender','1956 Rosebud Avenue',' Little_Rock','Arkansas','male','7187131633','9174532005'),
('Linda','Rodriguez','Robinson','1996-07-07','jerrell_han3@yahoo.com','Netcore','Insurance Claims Clerk','Insurance Claims Clerk','Newark','New_Jersey','female','2017013461','2013033995'),
('Emily','Hernandez','Savoy','1964-04-11','gwen2002@gmail.com','Netcore','Special Education Teacher, All Other','2787 Patterson Road','New_York','New_York','female','7188738484','6462003786'),
('Richard','Powell',' Edmondson','1981-09-24','maddison1975@yahoo.com','Sounds Great, Inc','Military Officer Special and Tactical Operations Leader, All Other','750 Walkers Ridge Way',' Burr_Ridge','Illinois','male','6302072505','8479170467'),
('Pamela','Powell',' Allen','1967-12-20','scottie1975@gmail.com','Personal & Corporate Design','Artillery and Missile Officer','4096 Young Road',' Caldwell','Idaho','female','2084547202','27424'),
('Christy','Sanchez',' Barton','1973-05-23','hunter2006@hotmail.com','Standard Sales','Print Binding and Finishing Worker','986 Stoneybrook Road','Orlando','Florida','female','3214375611','4079457208'),
('James','Sanchez','Harrison','1964-01-02','zoe2006@yahoo.com','Licorice Pizza','Sound Engineering Technician','3143 Lindale Avenue','Oakland','California','male','5105547640','5108676194'),
('Daniel','Sanchez','Madrid','1991-02-21','jacinto2000@gmail.com','Hills Supermarkets','Compensation, Benefit, and Job Analysis Specialist','4220 Ingram Street','Dayton','Ohio','male','9374716864','9372517085'),
('Jerry','Sanchez','Coleman','1982-08-09','kyleigh1979@gmail.com','ManPower','Industrial Engineering Technician','2748 Bungalow Road','Martinsburg','Nebraska','male','4029458735','3085937026'),
('Claretha','Sanchez','Bowman','1958-02-06','alexandro.vonrued@yahoo.com','Virgin Megastores','Fire Inspector and Investigator','4497 Lightning Point Drive','Somerville','Tennessee','female','9014659533','4236474173');
