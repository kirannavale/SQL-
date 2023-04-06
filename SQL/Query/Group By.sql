--Example 1
/* There is a database for a  chat history of whatsapp, where it contains the user's message history. 
Write a query to obtain the top 1 users who have sent maximum number of  messages in month of August 2022 and display their ID’s along 
with number of messages they send */


CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    content VARCHAR(255),
    sent_date DATETIME
);

INSERT INTO messages (message_id, sender_id, receiver_id, content, sent_date) VALUES
(201, 11223, 11331, 'Let''s go to trip?', '2022-08-03 00:00:00'),
(202, 11331, 11223, 'Are you awake?', '2022-08-03 00:10:00'),
(343, 11223, 23121, 'Let''s take a leave tomorrow', '2022-06-14 00:12:00'),
(422, 11223, 11331, 'I''m sick of it', '2022-08-10 00:40:00');


--Query

SELECT TOP 1 sender_id, COUNT(*) AS message_count -- Select the top 1 sender_id with message_count
FROM messages
WHERE sent_date >= '2022-08-01 00:00:00' AND sent_date < '2022-09-01 00:00:00' -- Filter messages sent in August 2022
GROUP BY sender_id -- Group the messages by sender_id
ORDER BY message_count DESC; -- Order the result set by message_count in descending order



--Example 2
/*We want to group the orders by customer ID and find the total amount spent by each customer.*/

CREATE TABLE Orders (
    OrderID int NOT NULL,
    CustomerID int,
    OrderDate date,
    Amount float,
    PRIMARY KEY (OrderID)
   );


INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount)
VALUES (1, 1, '2022-01-01', 100),
       (2, 1, '2022-01-02', 150),
       (3, 2, '2022-01-03', 200),
       (4, 2, '2022-01-04', 50),
       (5, NULL, '2022-01-05', 300),
       (6, NULL, '2022-01-06', 100);

--Query

SELECT CustomerID, SUM(Amount)  -- Select the CustomerID and the sum of Amount for each customer
FROM Orders                     -- From the Orders table
GROUP BY CustomerID;            -- Group the results by CustomerID

/*In this example,
we have also included orders where the customer ID is NULL,
resulting in a separate group with a total amount of 400. */



--Example 3
/*Let's say we have a table called "employees" with columns "id", "name", and "email", 
and we want to find duplicate email addresses in the table.*/

CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50)
);

INSERT INTO users (id, name, email) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'alice@example.com'),
(4, 'Dave', 'dave@example.com'),
(5, 'Emily', 'bob@example.com'),
(6, 'Frank', 'emily@example.com');

--Query

SELECT email, COUNT(*) as count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

/*The HAVING clause will filter out any groups that only have one row, 
leaving us with only the duplicate email addresses. */