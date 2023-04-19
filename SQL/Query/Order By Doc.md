# ORDER BY

In SQL, the `ORDER BY` clause is used to sort the result set returned by a SELECT statement. It allows you to sort the result set by one or more columns in either ascending or descending order.

Here are some reasons why `ORDER BY` is commonly used in SQL:

1. To present data in a meaningful order: When querying large amounts of data, it can be difficult to understand the relationships between the different pieces of information. Sorting the results with `ORDER BY` can help to present the data in a more logical and intuitive order, making it easier to analyze and understand.

2. To filter results: The `ORDER BY` clause can also be used to filter results based on specific criteria. For example, if you only want to see the top 10 highest-paid employees, you can use ORDER BY to sort the results by salary in descending order and limit the results to the first 10 rows.

3. To join tables: When joining tables, the `ORDER BY` clause can be used to ensure that the data is presented in a consistent and predictable order. Without an `ORDER BY` clause, the results may be presented in an unpredictable order, making it difficult to understand the relationships between the data.

In summary, the `ORDER BY` clause is a powerful tool that allows you to sort and filter the results of a query in a meaningful and intuitive way, making it an essential part of SQL programming.

`Syntax`-

Basic Syntax-
```
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;

```
`ORDER BY` clause in the presence of NULL values can lead to unexpected results. Here are some scenarios to consider:

When sorting a result set using the ORDER BY clause in SQL, the presence of NULL values can affect the order of the results.

By default, NULL values are sorted to the end of the result set in ascending order and to the beginning of the result set in descending order. This is because NULL represents the absence of a value, and therefore it cannot be compared to any other value.

For example, if you have a table of employees and you want to sort them by their salaries in descending order, the query would be:
```
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC;
```

In this case, any employee that has a NULL value for their salary will appear at the top of the result set.

If you want to change this behavior and have NULL values appear first when sorting in ascending order, or last when sorting in descending order, you can use the NULLS FIRST or NULLS LAST syntax, respectively.

For example, to sort the employees by their salaries in ascending order, and have NULL values appear first, you would use the following query:
```
SELECT employee_name, salary
FROM employees
ORDER BY salary ASC NULLS FIRST;
```
Conversely, to sort the employees by their salaries in descending order, and have NULL values appear last, you would use the following query:
```
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC NULLS LAST;
```

In summary, the presence of NULL values can affect the order of the results when sorting a result set using the ORDER BY clause in SQL. By default, NULL values are sorted to the end of the result set in ascending order and to the beginning of the result set in descending order. You can use the NULLS FIRST or NULLS LAST syntax to change this behavior.

