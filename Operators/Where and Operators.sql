--WHERE OPERATORS
--Greater than operator 
SELECT *
FROM payments
WHERE amount > 50;

--Greater than equal to operator
SELECT *
FROM payments
WHERE amount >= 50;

--Less than operator 
SELECT *
FROM payments
WHERE amount < 40;

--Less than equal to operator 
SELECT *
FROM payments
WHERE amount <= 40;

--Equal to operator
SELECT *
FROM payments
WHERE mode = 'Cash';

--Not equal to operator 
SELECT *
FROM payments
WHERE mode <> 'Credit Card';

--Like operator
SELECT *
FROM payments
WHERE mode LIKE '%Card%';

--AND operator
SELECT *
FROM payments
WHERE mode = 'Cash' AND amount > 50;

--OR operator
SELECT *
FROM payments
WHERE mode = 'Cash' OR mode = 'Debit Card';

--NOT operator
SELECT *
FROM payments
WHERE NOT mode = 'Credit Card';

--BETWEEN operator
SELECT *
FROM payments
WHERE amount BETWEEN 40 AND 60;

--IN operator
SELECT *
FROM payments
WHERE mode IN ('Cash', 'Debit Card');

--ANY operator
SELECT *
FROM payments
WHERE amount > ANY (SELECT amount FROM payments WHERE mode = 'Credit Card');

--ALL operator
SELECT *
FROM payments
WHERE amount < ALL (SELECT amount FROM payments WHERE mode = 'Credit Card');

--EXISTS operator
SELECT DISTINCT customer_id
FROM payments p1
WHERE EXISTS (
  SELECT *
  FROM payments p2
  WHERE p1.customer_id = p2.customer_id
    AND p2.mode = 'Debit Card'
);



