
--View 1 
--Question:
--Create a View to display complete customer order details.

CREATE VIEW vw_CustomerOrders
AS
SELECT
    C.full_name,
    O.order_id,
    O.order_date,
    O.delivery_date,
    O.order_status,
    P.amount_paid
FROM Customers C
INNER JOIN Orders O
ON C.customer_id = O.customer_id
INNER JOIN Payments P
ON O.order_id = P.order_id;
GO

--Use the view:
SELECT *
FROM vw_CustomerOrders;
GO

--View 2 
--Question
--Create a View to display worker performance based on total orders handled.

CREATE VIEW vw_WorkerPerformance
AS
SELECT
    W.worker_name,
    COUNT(O.order_id) AS Total_Orders
FROM Workers W
INNER JOIN Orders O
ON W.worker_id = O.worker_id
GROUP BY W.worker_name;
GO

--Use the view:

SELECT *
FROM vw_WorkerPerformance;