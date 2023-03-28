--ALIAS 
--Aliases are used to give a column/table a temporary name and only exists for a duration of the query.
SELECT customer_id, amount AS payment_amount, mode, payment_date AS date_of_payment
FROM payments;

--GROUP BY 
--GROUP BY clause is used to group rows with identical values in one or more columns into a single row.
SELECT mode, SUM(amount) AS total_amount
FROM payments
GROUP BY mode;
    
--ORDER BY
--ORDER BY is used to sort the results of a query in ascending or descending order based on one or more columns
SELECT mode, SUM(amount) AS total_amount
FROM payments
GROUP BY mode
ORDER BY total_amount DESC;

