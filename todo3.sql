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
('Franklin Simon'), ('Rainbow Bay Crafts'), ('Shoe Kicks'), ('Ideal Garden Maintenance'), ('Wise Solutions'), ('The Serendipity Dip'),
('Netcore'), ('Sounds Great, Inc'), ('Personal & Corporate Design'), ('Standard Sales'), ('Licorice Pizza'), ('Hills Supermarkets'),
('ManPower'), ('Virgin Megastores');
INSERT INTO city (name) VALUES
('Tomsk'), ('Novosibirsk'), ('New York'), ('Miami'), ('Yakima'), ('Pine Bluss'), ('Little Rock'), ('Newark'),
('Burr Ridge'), ('Caldwell'), ('Orlando'), ('Oakland'), ('Dayton'), ('Martinsburg'), ('Somerville');
