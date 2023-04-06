In SQL, the GROUP BY clause is used to group rows by one or more columns.

It is used in conjunction with aggregate functions such as COUNT(), SUM(), AVG(), MAX(), and MIN() to perform calculations on the grouped data.

The HAVING clause is used in conjunction with the GROUP BY clause to filter the results of a query based on a condition that involves an aggregate function.  

Use Case – 
Suppose we have a table "Orders" with columns "OrderID", "CustomerID", "OrderDate", and "TotalAmount". We want to find the customers who have made at least 5 orders and have spent a total of more than $5000. We can achieve this by using the GROUP BY clause and the HAVING clause together.

The main purpose of the GROUP BY clause is to allow us to analyze data at a higher level of abstraction. By grouping the data based on one or more columns, we can generate summary statistics and identify trends in the data
In addition to providing summary statistics and identifying trends, the GROUP BY clause can also improve the performance of queries. By grouping the data, we can reduce the amount of data that needs to be processed by aggregate functions. This can be particularly useful when working with large tables or complex queries.

<pre>

SELECT column_name(s), aggregate_function(column_name) -- Selects one or more columns and applies an aggregate function to one of the columns
FROM table_name -- Specifies the name of the table from which to retrieve data
WHERE condition -- Filters the rows returned based on a specified condition
GROUP BY column_name(s) -- Groups the result set by one or more columns
HAVING condition -- Filters the groups that are returned based on a specified condition

</pre>
