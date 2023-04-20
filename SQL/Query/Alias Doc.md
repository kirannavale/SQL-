In SQL, an `alias` is a temporary name assigned to a table or column in a query. Aliases are used to make SQL queries more readable or concise by giving table or column names a more meaningful or abbreviated name.

Here's a example of using aliases to rename a column in a SQL query:

``` 
SELECT 
  first_name AS fname, 
  last_name AS lname 
FROM employees;
``` 
