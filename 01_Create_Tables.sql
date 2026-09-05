IF DB_ID('SmartLaundrySystem') IS NULL
BEGIN
    CREATE DATABASE SmartLaundrySystem;
END

USE SmartLaundrySystem;

--Customer Table
CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
	full_name VARCHAR(100) NOT NULL,
	phone VARCHAR(20) UNIQUE,
	address VARCHAR(255),
	membership_level VARCHAR(20) DEFAULT 'Regular',
	join_date DATE
);

--Workers Table 
CREATE TABLE Workers (
    worker_id INT IDENTITY(1,1) PRIMARY KEY,
	worker_name VARCHAR(100) NOT NULL,
	role_type VARCHAR(50),
	salary DECIMAL(10,2),
	hire_date DATE
);

--Services Table
CREATE TABLE Services (
    service_id INT IDENTITY(1,1) PRIMARY KEY,
	service_name VARCHAR(100) NOT NULL,
	price_per_item DECIMAL(10,2) NOT NULL
);

--Orders Table
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT NOT NULL,
	worker_id INT,
	order_date DATE NOT NULL,
	delivery_date DATE,
	order_status VARCHAR(50),

	CONSTRAINT FK_Orders_Customers
	FOREIGN KEY (customer_id)
	REFERENCES Customers(customer_id),

	CONSTRAINT FK_Orders_Workers
	FOREIGN KEY (worker_id)
	REFERENCES Workers(worker_id)

);

--Order Items Table
CREATE TABLE Order_items (
   item_id INT IDENTITY(1,1) PRIMARY KEY,
   order_id INT NOT NULL,
   service_id INT NOT NULL, 
   cloth_type VARCHAR(50),
   items_quantity INT,

   CONSTRAINT FK_Orderitems_Orders
   FOREIGN KEY (order_id)
   REFERENCES Orders(order_id),

   CONSTRAINT FK_Orderitems_Services
   FOREIGN KEY (service_id)
   REFERENCES Services(service_id)
);

 --Payments Table
 CREATE TABLE Payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
	order_id INT NOT NULL,
	payment_method VARCHAR(50),
	payment_status VARCHAR(50),
	amount_paid DECIMAL(10,2), 

	CONSTRAINT FK_Payments_Orders
	FOREIGN KEY (order_id)
	REFERENCES Orders(order_id)
);

--Feedback Table
CREATE TABLE Feedback (
    feedback_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT NOT NULL,
	rating INT CHECK (rating BETWEEN 1 AND 5),
	comments VARCHAR(255),

	CONSTRAINT FK_Feedback_Customers
	FOREIGN KEY (customer_id)
	REFERENCES Customers(customer_id)
);

--DELIVERY TRACKING
CREATE TABLE Delivery_Tracking (
    delivery_id INT IDENTITY(1,1) PRIMARY KEY,
	order_id INT NOT NULL,
	delivery_person VARCHAR(100),
	delivery_status VARCHAR(50),
	delivery_time DATETIME,

	CONSTRAINT FK_Delivery_Orders
	FOREIGN KEY (order_id)
	REFERENCES Orders(order_id)
);

--Coupons Table
CREATE TABLE Coupons (
    coupon_id INT IDENTITY(1,1) PRIMARY KEY,
	coupon_code VARCHAR(50) UNIQUE,
	discount_percentage INT,
	expiry_date DATE
);

--Customer_Coupons Table
CREATE TABLE Customer_Coupons (
    customer_coupon_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT NOT NULL,
	coupon_id INT  NOT NULL,

	CONSTRAINT FK_CustomerCoupons_Customers
	FOREIGN KEY (customer_id)
	REFERENCES Customers(customer_id),
	
	CONSTRAINT FK_CustomerCoupons_Coupons
	FOREIGN KEY (coupon_id)
	REFERENCES Coupons(coupon_id)
);

--Employee_Attendance Table
CREATE TABLE Employee_Attendance (
    attendance_id INT IDENTITY(1,1) PRIMARY KEY,
	worker_id INT NOT NULL,
	attendance_date DATE,
	status VARCHAR(20),

	CONSTRAINT FK_Attendance_Workers
	FOREIGN KEY (worker_id)
	REFERENCES Workers(worker_id)
);
