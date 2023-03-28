
 /*DDL (Data Definition Language)

CREATE DATABASE sql; 

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  address_id INT
);

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) VALUES
(1, 'Mary', 'Smith', 'mary.smith@mailid.com', 5),
(2, 'Patricia', 'Johnson', 'patricia.johnson@mailid.com', 6),
(3, 'Madan', 'Mohan', 'madan.mohan@mailid.com', 7),
(4, 'Barbara', 'Jones', 'barbara.jones@mailid.com', 8),
(5, 'Elizabeth', 'Brown', 'elizabeth.brown@mailid.com', 9),
(6, 'Jennifer', 'Davis', 'jennifer.davis@mailid.com', 10),
(7, 'Maria', 'Miller', 'maria.miller@mailid.com', 11),
(8, 'Susan', 'Wilson', 'susan.wilson@mailid.com', 12),
(9, 'R', 'Madhav', 'r.madhav@mailid.com', 13),
(10, 'Dorothy', 'Taylor', 'dorothy.taylor@mailid.com', 14),
(11, 'Lisa', 'Anderson', 'lisa.anderson@mailid.com', 15),
(12, 'Nancy', 'Thomas', 'nancy.thomas@mailid.com', 16),
(13, 'Karen', 'Jackson', 'karen.jackson@mailid.com', 17),
(14, 'Betty', 'White', 'betty.white@mailid.com', 18),
(15, 'Helen', 'Harris', 'helen.harris@mailid.com', 19); 

CREATE VIEW customer_view AS
SELECT customer_id, first_name, last_name, email, address_id
FROM customers; 

 ALTER
--Add column
ALTER TABLE customers
ADD COLUMN countries VARCHAR(50);

--CONSTRAINTS

--PRIMARY KEY
ALTER TABLE customers
ADD PRIMARY KEY (customer_id); 

--NOT NULL
ALTER TABLE customers
ALTER COLUMN first_name SET NOT NULL;

--UNIQUE
ALTER TABLE customers
ADD CONSTRAINT unique_countries UNIQUE (countries);

--FOREIGN KEY
ALTER TABLE customers
ADD CONSTRAINT fk_address_id
FOREIGN KEY (address_id)
REFERENCES addresses(address_id);

--CHECK
ALTER TABLE customers
ADD CONSTRAINT check_email
CHECK (email LIKE '%@mailid.com');

--DEFAULT
ALTER TABLE customers
ALTER COLUMN address_id SET DEFAULT 1;

--REMOVE 
ALTER TABLE customers
DROP COLUMN countries;

--CONSTRAINT
ALTER TABLE customers
DROP CONSTRAINT check_email;

--MODIFY DATATYPE
ALTER TABLE table_name
ALTER COLUMN first_name NVARCHAR(50);

--MODIFY DATATYPE LENGTH
ALTER TABLE table_name
ALTER COLUMN first_name VARCHAR(100);

--DROP
DROP TABLE customers;

--TRUNCATE
TRUNCATE TABLE customers; 

--DROP DATABASE
DROP DATABASE sql;*/












