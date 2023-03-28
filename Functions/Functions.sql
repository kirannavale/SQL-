--FUNCTIONS

CREATE TABLE payments (
  customer_id INT,
  amount DECIMAL(10, 2),
  mode VARCHAR(50),
  payment_date DATE
);

INSERT INTO payments (customer_id, amount, mode, payment_date)
VALUES
  (1, 60, 'Cash', '2020-09-24'),
  (2, 30, 'Credit Card', '2020-04-27'),
  (3, 90, 'Credit Card', '2020-07-07'),
  (4, 50, 'Debit Card', '2020-02-12'),
  (5, 40, 'Mobile Payment', '2020-11-20'),
  (6, 40, 'Debit Card', '2021-06-28'),
  (7, 10, 'Cash', '2021-08-25'),
  (8, 30, 'Mobile Payment', '2021-06-17'),
  (9, 80, 'Cash', '2021-08-25'),
  (10, 50, 'Mobile Payment', '2021-11-03'),
  (11, 70, 'Cash', '2022-11-01'),
  (12, 60, 'Netbanking', '2022-09-11'),
  (13, 30, 'Netbanking', '2022-12-10'),
  (14, 50, 'Credit Card', '2022-05-14'),
  (15, 30, 'Credit Card', '2022-09-25'),
  (16, 60, 'Cash', '2023-3-01'),
  (17,100, 'Cash', '2022-10-01');

--AVG
SELECT AVG(amount) as avg_payment_amount
FROM payments;

--SUM
SELECT SUM(amount) as total_payments
FROM payments;

--COUNT 
SELECT COUNT(*) as number_of_payments
FROM payments;

--MIN 
SELECT MIN(amount) as min_payment_amount
FROM payments;

--MAX
SELECT MAX(amount) as max_payment_amount
FROM payments;


