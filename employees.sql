 



- Globals
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS=0;

-- Table 'employees'
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  employee_id INTEGER(255) NOT NULL AUTO_INCREMENT COMMENT 'Name',
  city VARCHAR(55) NULL DEFAULT NULL,
  state VARCHAR(55) NULL DEFAULT NULL,
  zip VARCHAR(10) NULL DEFAULT NULL,
  date_hired DATE NULL DEFAULT NULL,
  position_id INT UNSIGNED NULL DEFAULT NULL,
  first_name VARCHAR(55) NULL DEFAULT NULL,
  last_name VARCHAR(55) NULL DEFAULT NULL,
  PRIMARY KEY (employee_id)
);

-- Table 'positions'
DROP TABLE IF EXISTS positions;

CREATE TABLE positions (
  position_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  position_name VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (position_id)
);

-- Foreign Keys
ALTER TABLE employees ADD FOREIGN KEY (position_id) REFERENCES positions (position_id);

-- Table Properties
ALTER TABLE employees ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE positions ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Test Data
INSERT INTO employees (first_name, last_name, city, state, zip, date_hired, position_id) VALUES
('Joe', 'Shmoe', 'Burbank', 'CA', '91501', '2011-07-04', 4),
('John', 'Jacob', 'Mesa', 'AZ', '85202', '2009-04-05', 5),
('Sally', 'Struthers', 'Mesa', 'AZ', '85203', '2010-09-15', 1),
('Mitchelle', 'Smith', 'Pasadena', 'CA', '91103', '2010-10-05', 4),
('John', 'Smith', 'Mesa', 'AZ', '85202', '2015-03-14', 5),
('Paul', 'Lynn', 'Mesa', 'AZ', '85280', '2018-02-02', 5),
('Natasha', 'Romanof', 'Burbank', 'CA', '91502', '2011-09-22', 3),
('Sam', 'Hill', 'Mesa', 'AZ', '85201', '2012-01-15', 5),
('Stan', 'Lee', 'Burbank', 'CA', '95103', '2014-01-05', 4),
('Bruce', 'Banner', 'Mesa', 'AZ', '85212', '2020-04-29', 5),
('Michiru', 'Kagemori', 'Chandler', 'AZ', '85289', '2021-09-29', 5),
('Shirou', 'Ogami', 'New Anima City', 'AZ', '85000', '2010-08-12', 3),
('Nazuna', 'Hitwatashi', 'Scottsdale', 'AZ', '85333', '2021-09-15', 5),
('Alan', 'Sylvasta', 'Foutain hills', 'AZ', '85322', '2005-07-22', 1),
('Maria', 'Itami', 'Phoenix', 'AZ', '85444', '2009-08-17', 3),
('Barbaray', 'Rose', 'New Anima City', 'AZ', '85000', '2020-04-29', 4),
('Amalia', 'True', 'San Jose', 'CA', '95233', '2018-08-22', 3),
('Penace', 'Adair', 'San Jose', 'CA', '95233', '2018-08-22', 5),
('Maladie', 'Jones', 'San Jose', 'CA', '95233', '2022-11-24', 2),
('Hugo', 'Swan', 'Burbank', 'CA', '95103', '2004-01-01', 4);

INSERT INTO positions (position_id, position_name) VALUES
(1, 'CEO'),
(2, 'Human Resources'),
(3, 'Specialist'),
(4, 'Manager'),
(5, 'Worker Drone');