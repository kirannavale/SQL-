
 --DDL (Data Definition Language)--

--CREATE DATABASE

CREATE DATABASE sql; 

--CREATE TABLE

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  address_id INT
);

--CREATE VIEW

CREATE VIEW customer_view AS
SELECT customer_id, first_name, last_name, email, address_id
FROM customers; 

 --ALTER

--Add column
ALTER TABLE customers
ADD COLUMN countries VARCHAR(50);

--CONSTRAINTS--

--UNIQUE
CREATE TABLE customers 
(
  customer_id INT NOT NULL UNIQUE
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email NOT NULL
 );

 --NOT NULL

CREATE TABLE customers 
(
  customer_id NOT NULL
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email NOT NULL
 );

--PRIMARY KEY

CREATE TABLE customers
(
  customer_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (customer_id)
);

 --FOREIGN KEY

 CREATE TABLE Employees
(
Employee_ID int NOT NULL,
Name VARCHAR(50),
Department_ID int NOT NULL,
PRIMARY KEY (Employee_ID),
FOREIGN KEY (Department_ID ) REFERENCES
Departments (Department_ID)
);


--CHECK

CREATE TABLE customers 
(
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) CHECK (email LIKE '%@mailid.com'),
  address_id INT
  );

--DEFAULT

CREATE TABLE customers 
(
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  address_id INT DEFAULT 1
  );


--REMOVE COLUMN

ALTER TABLE customers
DROP COLUMN countries;

--REMOVE CONSTRAINT

ALTER TABLE customers
DROP CONSTRAINT check_email;

--MODIFY DATATYPE

ALTER TABLE table_name
ALTER COLUMN first_name NVARCHAR(50);

--MODIFY DATATYPE LENGTH

ALTER TABLE table_name
ALTER COLUMN first_name NVARCHAR(100);

--DROP

DROP TABLE customers;

--TRUNCATE

TRUNCATE TABLE customers; 

--DROP DATABASE

DROP DATABASE sql;












