
--Question 1 (Business)
--Create an index on the customer name to speed up customer searches.
CREATE INDEX IX_Customers_Name
ON Customers(Full_Name);
GO

--Test:
SELECT *
FROM Customers
WHERE full_name = 'Ali Khan';
GO


--Index 2 
--Question:
--Create an index on order_date to speed up searches and reports based on order dates.
CREATE INDEX IX_Orders_Order_Date
ON Orders(order_date);
GO

--Test
SELECT *
FROM Orders
WHERE order_date = '2025-05-15';
