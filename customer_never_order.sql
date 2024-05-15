'''
Customers Who Never Order (Leetcode)
Table: Customers

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID and name of a customer.
 

Table: Orders

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
customerId is a foreign key (reference columns) of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
'''

SELECT Customers.name AS Customers
FROM Customers
WHERE Customers.name
NOT IN (SELECT Customers.name FROM Customers JOIN Orders ON Customers.id=Orders.customerId)
OR (Customers.id NOT IN (SELECT Customers.id FROM Customers JOIN Orders ON Customers.id=Orders.customerId))
