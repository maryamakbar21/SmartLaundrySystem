
--
Stored Procedure 1 (Professional)
--Question
--Create a Stored Procedure to display all orders of a specific customer.

CREATE PROCEDURE GetCustomerOrders
    @CustomerID INT
AS
BEGIN
    SELECT
        order_id,
        order_date,
        delivery_date,
        order_status
    FROM Orders
    WHERE customer_id = @CustomerID;
END;
GO

-- Execute the procedure
EXEC GetCustomerOrders @CustomerID = 3;
GO

-- Procedure 2
-- Display all pending orders

CREATE PROCEDURE GetPendingOrders
AS
BEGIN
    SELECT
        order_id,
        customer_id,
        worker_id,
        order_date,
        delivery_date,
        order_status
    FROM Orders
    WHERE order_status = 'Pending';
END;
GO

-- Execute the procedure
EXEC GetPendingOrders;
GO

