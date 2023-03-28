--TCL (Transaction Control Language)


/*--COMMIT

BEGIN;

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) 
VALUES (16, 'John', 'Doe', 'johndoe@example.com', 24);

UPDATE customers SET email = 'newmail@example.com' WHERE customer_id = 1;

COMMIT;*/


--ROLLBACK 

/*
BEGIN;

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) 
VALUES (17, 'John', 'Deer', 'jd@example.com', 26);

ROLLBACK; */

--SAVEPOINT
/*
BEGIN;

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) 
VALUES (16, 'John', 'Doe', 'johndoe@example.com', 24);

SAVEPOINT insert_savepoint;

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) 
VALUES (17, 'John', 'Deer', 'jd@example.com', 26);

ROLLBACK TO insert_savepoint;

INSERT INTO customers (customer_id, first_name, last_name, email, address_id) 
VALUES (18, 'Bob', 'Smith', 'bobsmith@example.com', 29);

COMMIT;


