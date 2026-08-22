


--Basic Business Queries 
--Question 1
--Display all customers ordered by their joining date (newest members first).

SELECT *
FROM CUSTOMERS
ORDER BY join_date DESC;

--Question 2
--Display the top 3 most expensive laundry services.

SELECT TOP 3 *
FROM SERVICES
ORDER BY price_per_item DESC;

--Question 3
--Display the number of customers in each membership level.

SELECT COUNT(*) AS TOTALCustomers, membership_level
FROM CUSTOMERS
GROUP BY  membership_level;

--Question 4
--Display all services costing more than AED 20.

SELECT * 
FROM SERVICES
WHERE price_per_item > 20;

--Question 5
--Display all delivered orders.

SELECT *
FROM ORDERS
WHERE order_status = 'Delivered';

--Question 6
--Display all unique payment methods used by customers.

SELECT DISTINCT payment_method
FROM PAYMENTS;

--Question 7
--Display all orders placed and delivered during May 2025.

SELECT *
FROM ORDERS
WHERE order_date BETWEEN '2025-05-01' AND '2025-05-31'
AND delivery_date BETWEEN '2025-05-01' AND '2025-05-31';

--Question 8
--Display customers whose names start with the letter 'A'.

SELECT *
FROM CUSTOMERS
WHERE full_name LIKE 'A%';

--Question 9
--Q9. Display the average payment amount for each payment method.

SELECT
    payment_method,
    AVG(amount_paid) AS Average_Payment
FROM PAYMENTS
GROUP BY payment_method;

--Question 10
--Display customers who have placed more than one order.

SELECT 
customer_id,
COUNT (order_id) AS Total_Orders
FROM ORDERS
GROUP BY Customer_id
HAVING COUNT (order_id) > 1;


--Intermediate Business Questions.
--Question 11
--Find customers who have never submitted feedback.

SELECT
    C.customer_id,
    C.full_name
FROM CUSTOMERS C
LEFT JOIN FEEDBACK F
ON C.customer_id = F.customer_id
WHERE F.feedback_id IS NULL;

----Question 12
--Display each order with customer name, worker name and payment status.

SELECT
    O.order_id,
    C.full_name,
    W.worker_name,
    P.payment_status
FROM ORDERS O
INNER JOIN CUSTOMERS C
ON O.customer_id = C.customer_id
INNER JOIN WORKERS W
ON O.worker_id = W.worker_id
INNER JOIN PAYMENTS P
ON O.order_id = P.order_id;

--Question 13 
--Display services that have been used more than 10 times.

SELECT
    S.service_name,
    COUNT(*) AS Times_Used
FROM SERVICES S
INNER JOIN ORDER_ITEMS OI
ON S.service_id = OI.service_id
GROUP BY S.service_name
HAVING COUNT(*) > 10;

--Question 14
--Display all customers and show whether they have submitted feedback.

SELECT
    C.full_name,
    CASE
        WHEN F.feedback_id IS NULL
        THEN 'No Feedback'
        ELSE 'Feedback Submitted'
    END AS Feedback_Status
FROM CUSTOMERS C
LEFT JOIN FEEDBACK F
ON C.customer_id = F.customer_id;

----Question 15
--Display the customer(s) who made the highest payment.

SELECT
    C.full_name,
    P.amount_paid
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.customer_id = O.customer_id
INNER JOIN PAYMENTS P
ON O.order_id = P.order_id
WHERE P.amount_paid =
(
    SELECT MAX(amount_paid)
  
  
  FROM PAYMENTS
);
----Question 16
--Display the total quantity processed for each service.

SELECT
    S.service_name,
    SUM(OI.items_quantity) AS Total_Items
FROM SERVICES S 
INNER JOIN ORDER_ITEMS OI
ON S.service_id = OI.service_id
GROUP BY S.service_name
ORDER BY Total_Items DESC;

--Question 17
--Display customers along with their coupon codes, if available.

SELECT
    C.full_name,
    CP.coupon_code
FROM CUSTOMERS C 
LEFT JOIN CUSTOMER_COUPONS CC
ON C.customer_id = CC.customer_id
LEFT JOIN COUPONS CP
ON CC.coupon_id = CP.coupon_id;

--Question 18
--Display orders with payment status using a CASE expression.

SELECT
    order_id,
    amount_paid,
    CASE
        WHEN amount_paid >= 150 THEN 'High Value'
        WHEN amount_paid >= 80 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Payment_Category
FROM PAYMENTS;

--Question 19
--Display the names of customers who have placed at least one order.

SELECT
    full_name
FROM CUSTOMERS
WHERE customer_id IN
(
    SELECT customer_id
    FROM ORDERS
);

--Question 20
--Find the top-performing worker.

SELECT TOP 1
    W.worker_name,
    COUNT(O.order_id) AS Total_Orders
FROM WORKERS W
INNER JOIN ORDERS O
ON W.worker_id=O.worker_id
GROUP BY W.worker_name
ORDER BY Total_Orders DESC;

--Advanced Business Questions

--Question 21
--Display customers who have used every available laundry service.

SELECT
    C.customer_id,
    C.full_name
FROM CUSTOMERS C
INNER JOIN ORDERS O
    ON C.customer_id = O.customer_id
INNER JOIN ORDER_ITEMS OI
    ON O.order_id = OI.order_id
GROUP BY C.customer_id, C.full_name
HAVING COUNT(DISTINCT OI.service_id) =
(
    SELECT COUNT(*)
    FROM SERVICES
);

--Question 22
--Rank workers based on the number of orders they handled.

SELECT
    W.worker_id,
    w.worker_name,
    COUNT(O.order_id) AS Total_Orders,
    RANK() OVER(ORDER BY COUNT(O.order_id) DESC) AS Worker_Rank
FROM WORKERS W
INNER JOIN ORDERS O
ON W.worker_id = O.worker_id
GROUP BY W.worker_id, W.worker_name;

--Question 23
Display customers who have placed more orders than the average customer.

SELECT
    C.customer_id,
    C.full_name,
    COUNT(O.order_id) AS Total_Orders
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.customer_id = O.customer_id
GROUP BY C.customer_id, C.full_name
HAVING COUNT(O.order_id) >
(
    SELECT AVG(OrderCount)
    FROM
    (
        SELECT COUNT(*) AS OrderCount
        FROM ORDERS
        GROUP BY customer_id
    ) AS AvgOrders
);

--Question 24
--Display customers whose total spending is above the average customer spending.

SELECT
    C.customer_id,
    C.full_name,
    SUM(P.amount_paid) AS Total_Spent
FROM CUSTOMERS C
INNER JOIN ORDERS O
    ON C.customer_id = O.customer_id
INNER JOIN PAYMENTS P
    ON O.order_id = P.order_id
GROUP BY
    C.customer_id,
    C.full_name
HAVING SUM(P.amount_paid) >
(
    SELECT AVG(Customer_Total)
    FROM
    (
        SELECT
            customer_id,
            SUM(amount_paid) AS Customer_Total
        FROM ORDERS O
        INNER JOIN PAYMENTS P
            ON O.order_id = P.order_id
        GROUP BY customer_id
    ) AS CustomerSpending
)
ORDER BY Total_Spent DESC;

--Question 25
--Display each customer's spending rank.

SELECT
    customer_id,
    full_name,
    Total_Spent,
    DENSE_RANK() OVER(ORDER BY Total_Spent DESC) AS Spending_Rank
FROM
(
SELECT
    C.customer_id,
    C.full_name,
    SUM(P.amount_paid) AS Total_Spent
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.customer_id = O.customer_id
INNER JOIN PAYMENTS P
ON O.order_id = P.order_id
GROUP BY C.customer_id, C.full_name
) AS Spending;

--Question 26
--Display the laundry service that generated the highest revenue.

SELECT TOP 1
    S.service_name,
    SUM(OI.items_quantity * S.price_per_item) AS Total_Revenue
FROM Services S
INNER JOIN ORDER_ITEMS OI
ON S.service_id = OI.service_id
GROUP BY S.service_name
ORDER BY Total_Revenue DESC;

--Question 27
--Display the running total of payments received.

SELECT
    payment_id,
    amount_paid,
    SUM(amount_paid) OVER(ORDER BY payment_id) AS Running_Total
FROM PAYMENTS;

--Question 28
--Display each worker's attendance percentage.

SELECT
    W.worker_name,
	CAST(
        ROUND(
            COUNT(CASE WHEN EA.status='Present' THEN 1 END)*100.0 /COUNT(*),2) AS DECIMAL (5,2))
			AS Attendance_Percentage
FROM WORKERS W
INNER JOIN EMPLOYEE_ATTENDANCE EA
ON W.worker_id = EA.worker_id
GROUP BY W.worker_name;

--Question 29
--Display workers who handled more than 5 orders.

WITH WorkerOrders AS
(
    SELECT
        W.worker_id,
        W.worker_name,
        COUNT(O.order_id) AS Total_Orders
    FROM WORKERS W
    INNER JOIN ORDERS O
        ON W.worker_id = O.worker_id
    GROUP BY W.worker_id, W.worker_name
)

SELECT
    worker_name,
    Total_Orders
FROM WorkerOrders
WHERE Total_Orders > 5
ORDER BY Total_Orders DESC;

--Question 30
--Identify the second busiest worker based on the total number of orders handled.

WITH WorkerOrders AS
(
    SELECT
        W.worker_id,
        W.worker_name,
        COUNT(O.order_id) AS Total_Orders
    FROM WORKERS W
    INNER JOIN ORDERS O
        ON W.worker_id = O.worker_id
    GROUP BY
        W.worker_id,
        w.worker_name
),
RankedWorkers AS
(
    SELECT
        worker_name,
        Total_Orders,
        ROW_NUMBER() OVER(ORDER BY Total_Orders DESC) AS RowNum
    FROM WorkerOrders
)

SELECT
    worker_name,
    Total_Orders
FROM RankedWorkers
WHERE RowNum = 2;
