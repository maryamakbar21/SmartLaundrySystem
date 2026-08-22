-- CUSTOMER DATA

INSERT INTO CUSTOMERS 
(full_name, phone, address, membership_level, join_date)
VALUES
('Ali Khan', '0501111111', 'Dubai', 'Gold', '2025-01-10'),
('Sara Ahmed', '0501111112', 'Sharjah', 'Regular', '2025-01-15'),
('Ahmed Raza', '0501111113', 'Ajman', 'Silver', '2025-01-20'),
('Fatima Noor', '0501111114', 'Dubai', 'Regular', '2025-02-01'),
('Usman Ali', '0501111115', 'Abu Dhabi', 'Gold', '2025-02-05'),
('Ayesha Malik', '0501111116', 'Dubai', 'Silver', '2025-02-10'),
('Bilal Hussain', '0501111117', 'Sharjah', 'Regular', '2025-02-15'),
('Zain Ahmed', '0501111118', 'Dubai', 'Gold', '2025-02-20'),
('Maryam Khalid', '0501111119', 'Ajman', 'Regular', '2025-03-01'),
('Hassan Ali', '0501111120', 'Abu Dhabi', 'Silver', '2025-03-05'),
('Noor Fatima', '0501111121', 'Dubai', 'Gold', '2025-03-10'),
('Omar Sheikh', '0501111122', 'Sharjah', 'Regular', '2025-03-15'),
('Sana Khan', '0501111123', 'Dubai', 'Silver', '2025-03-20'),
('Hamza Tariq', '0501111124', 'Ajman', 'Gold', '2025-04-01'),
('Hira Ahmed', '0501111125', 'Dubai', 'Regular', '2025-04-05'),
('Imran Malik', '0501111126', 'Abu Dhabi', 'Silver', '2025-04-10'),
('Iqra Noor', '0501111127', 'Sharjah', 'Gold', '2025-04-15'),
('Danish Khan', '0501111128', 'Dubai', 'Regular', '2025-04-20'),
('Rabia Siddiqui', '0501111129', 'Ajman', 'Silver', '2025-05-01'),
('Saad Hassan', '0501111130', 'Dubai', 'Gold', '2025-05-05');

--WORKERS TABLE DATA
INSERT INTO WORKERS
(worker_name, role_type, salary, hire_date)
VALUES
('Muhammad Asif', 'Washer', 3200.00, '2024-01-10'),
('Bilal Ahmed', 'Ironing Specialist', 3000.00, '2024-02-15'),
('Usman Khalid', 'Delivery Driver', 2800.00, '2024-03-01'),
('Aamir Hussain', 'Dry Cleaning Expert', 3500.00, '2024-01-20'),
('Hamza Ali', 'Packing Staff', 2600.00, '2024-04-05'),
('Farhan Malik', 'Customer Support', 2900.00, '2024-02-10'),
('Sajid Khan', 'Quality Inspector', 3300.00, '2024-03-18'),
('Noman Raza', 'Store Supervisor', 4200.00, '2024-01-05');

--SERVICES TABLE DATA
INSERT INTO SERVICES
(service_name, price_per_item)
VALUES
('Wash & Fold', 10.00),
('Dry Cleaning', 25.00),
('Ironing', 5.00),
('Steam Press', 8.00),
('Carpet Cleaning', 80.00),
('Curtain Cleaning', 60.00);

--ORDERS TABLE DATA
INSERT INTO ORDERS
(customer_id, worker_id, order_date, delivery_date, order_status)
VALUES
(3, 1, '2025-05-01', '2025-05-03', 'Delivered'),
(4, 2, '2025-05-02', '2025-05-04', 'Delivered'),
(5, 3, '2025-05-03', '2025-05-05', 'Pending'),
(6, 4, '2025-05-04', '2025-05-06', 'Processing'),
(7, 5, '2025-05-05', '2025-05-07', 'Delivered'),
(8, 6, '2025-05-06', '2025-05-08', 'Pending'),
(9, 7, '2025-05-07', '2025-05-09', 'Delivered'),
(10, 8, '2025-05-08', '2025-05-10', 'Processing'),
(11, 1, '2025-05-09', '2025-05-11', 'Delivered'),
(12, 2, '2025-05-10', '2025-05-12', 'Pending');
 
INSERT INTO ORDERS
(customer_id, worker_id, order_date, delivery_date, order_status)
VALUES
(13,3,'2025-05-11','2025-05-13','Delivered'),
(14,4,'2025-05-12','2025-05-14','Pending'),
(15,5,'2025-05-13','2025-05-15','Processing'),
(16,6,'2025-05-14','2025-05-16','Delivered'),
(17,7,'2025-05-15','2025-05-17','Delivered'),
(18,8,'2025-05-16','2025-05-18','Pending'),
(19,1,'2025-05-17','2025-05-19','Processing'),
(20,2,'2025-05-18','2025-05-20','Delivered'),

(3,3,'2025-05-19','2025-05-21','Delivered'),
(4,4,'2025-05-20','2025-05-22','Pending'),
(5,5,'2025-05-21','2025-05-23','Delivered'),
(6,6,'2025-05-22','2025-05-24','Processing'),
(7,7,'2025-05-23','2025-05-25','Delivered'),
(8,8,'2025-05-24','2025-05-26','Pending'),
(9,1,'2025-05-25','2025-05-27','Delivered'),
(10,2,'2025-05-26','2025-05-28','Delivered'),

(11,3,'2025-05-27','2025-05-29','Processing'),
(12,4,'2025-05-28','2025-05-30','Delivered'),
(13,5,'2025-05-29','2025-05-31','Pending'),
(14,6,'2025-05-30','2025-06-01','Delivered'),
(15,7,'2025-05-31','2025-06-02','Delivered'),
(16,8,'2025-06-01','2025-06-03','Processing'),
(17,1,'2025-06-02','2025-06-04','Pending'),
(18,2,'2025-06-03','2025-06-05','Delivered'),

(19,3,'2025-06-04','2025-06-06','Delivered'),
(20,4,'2025-06-05','2025-06-07','Processing'),
(3,5,'2025-06-06','2025-06-08','Pending'),
(4,6,'2025-06-07','2025-06-09','Delivered'),
(5,7,'2025-06-08','2025-06-10','Delivered'),
(6,8,'2025-06-09','2025-06-11','Pending'),
(7,1,'2025-06-10','2025-06-12','Processing'),
(8,2,'2025-06-11','2025-06-13','Delivered'),

(9,3,'2025-06-12','2025-06-14','Delivered'),
(10,4,'2025-06-13','2025-06-15','Pending'),
(11,5,'2025-06-14','2025-06-16','Delivered'),
(12,6,'2025-06-15','2025-06-17','Processing'),
(13,7,'2025-06-16','2025-06-18','Delivered'),
(14,8,'2025-06-17','2025-06-19','Pending'),
(15,1,'2025-06-18','2025-06-20','Delivered'),
(16,2,'2025-06-19','2025-06-21','Delivered');

--ORDER_ITEMS TABLE
INSERT INTO ORDER_ITEMS
(order_id, service_id, cloth_type, items_quantity)
VALUES
(1, 1, 'Shirt', 5),
(1, 3, 'Trouser', 5),
(2, 2, 'Suit', 2),
(2, 4, 'Shirt', 4),
(3, 1, 'T-Shirt', 6),
(3, 3, 'Jeans', 3),
(4, 5, 'Carpet', 1),
(5, 6, 'Curtain', 2),
(6, 1, 'Shirt', 8),
(6, 4, 'Abaya', 2),
(7, 2, 'Coat', 3),
(8, 3, 'School Uniform', 6),
(9, 1, 'Kurta', 4),
(9, 2, 'Blazer', 1),
(10, 6, 'Curtain', 3);

INSERT INTO ORDER_ITEMS (order_id, service_id, cloth_type, items_quantity)
VALUES
(10,1,'Shirt',4),
(11,2,'Suit',2),
(11,3,'Trouser',5),
(12,1,'T-Shirt',6),
(12,4,'Abaya',1),
(13,5,'Carpet',1),
(13,6,'Curtain',2),
(14,2,'Coat',3),
(14,3,'School Uniform',5),
(15,1,'Kurta',4),
(15,2,'Blazer',2),
(16,4,'Shirt',3),
(16,3,'Jeans',4),
(17,1,'T-Shirt',7),
(17,2,'Suit',1),
(18,6,'Curtain',2),
(18,5,'Carpet',1),
(19,3,'Trouser',5),
(19,1,'Shirt',6),
(20,2,'Coat',2),
(20,4,'Abaya',3),
(21,1,'Kurta',5),
(21,3,'Jeans',4),
(22,2,'Blazer',2),
(22,6,'Curtain',1),
(23,5,'Carpet',2),
(23,1,'Shirt',8),
(24,4,'Abaya',2),
(24,3,'School Uniform',4),
(25,2,'Suit',3),
(25,1,'T-Shirt',6),
(26,6,'Curtain',3),
(26,5,'Carpet',1),
(27,3,'Trouser',7),
(27,2,'Coat',2),
(28,1,'Shirt',5),
(28,4,'Abaya',2),
(29,2,'Blazer',3),
(29,3,'Jeans',4),
(30,1,'Kurta',6),
(30,6,'Curtain',2),
(31,5,'Carpet',1),
(31,2,'Suit',2),
(32,3,'School Uniform',5),
(32,1,'Shirt',4),
(33,4,'Abaya',1),
(33,2,'Coat',2),
(34,3,'Trouser',6),
(34,1,'T-Shirt',7),
(35,6,'Curtain',2),
(35,5,'Carpet',1),
(36,1,'Kurta',5),
(36,2,'Blazer',2),
(37,3,'Jeans',4),
(37,4,'Shirt',3),
(38,2,'Suit',1),
(38,1,'T-Shirt',8),
(39,6,'Curtain',2),
(39,3,'Trouser',5),
(40,5,'Carpet',1),
(40,1,'Shirt',6),
(41,2,'Coat',3),
(41,4,'Abaya',2),
(42,1,'Kurta',4),
(42,3,'School Uniform',5),
(43,2,'Blazer',1),
(43,6,'Curtain',3),
(44,5,'Carpet',2),
(44,1,'T-Shirt',7),
(45,3,'Jeans',4),
(45,2,'Suit',2),
(46,4,'Shirt',3),
(46,1,'Kurta',5),
(47,6,'Curtain',2),
(47,5,'Carpet',1),
(48,3,'Trouser',6),
(48,2,'Coat',2),
(49,1,'Shirt',8),
(49,4,'Abaya',1),
(50,2,'Blazer',2),
(50,3,'School Uniform',4),
(50,1,'T-Shirt',5),
(49,6,'Curtain',2),
(48,5,'Carpet',1),
(47,1,'Kurta',3),
(46,2,'Suit',2);

--PAYMENT TABLE DATA
INSERT INTO PAYMENTS
(order_id, payment_method, payment_status, amount_paid)
VALUES
(1, 'Cash', 'Paid', 50.00),
(2, 'Card', 'Paid', 120.00),
(3, 'Online', 'Pending', 75.00),
(4, 'Cash', 'Paid', 30.00),
(5, 'Card', 'Paid', 200.00),
(6, 'Online', 'Paid', 85.00),
(7, 'Cash', 'Pending', 60.00),
(8, 'Card', 'Paid', 95.00),
(9, 'Online', 'Paid', 40.00),
(10, 'Cash', 'Paid', 180.00),
(11, 'Card', 'Paid', 110.00),
(12, 'Online', 'Pending', 70.00),
(13, 'Cash', 'Paid', 45.00),
(14, 'Card', 'Paid', 130.00),
(15, 'Online', 'Paid', 90.00),
(16, 'Cash', 'Pending', 55.00),
(17, 'Card', 'Paid', 160.00),
(18, 'Online', 'Paid', 100.00),
(19, 'Cash', 'Paid', 35.00),
(20, 'Card', 'Paid', 145.00),
(21, 'Online', 'Pending', 80.00),
(22, 'Cash', 'Paid', 65.00),
(23, 'Card', 'Paid', 170.00),
(24, 'Online', 'Paid', 115.00),
(25, 'Cash', 'Paid', 50.00),
(26, 'Card', 'Pending', 125.00),
(27, 'Online', 'Paid', 95.00),
(28, 'Cash', 'Paid', 70.00),
(29, 'Card', 'Paid', 185.00),
(30, 'Online', 'Paid', 105.00),
(31, 'Cash', 'Pending', 60.00),
(32, 'Card', 'Paid', 140.00),
(33, 'Online', 'Paid', 85.00),
(34, 'Cash', 'Paid', 40.00),
(35, 'Card', 'Paid', 155.00),
(36, 'Online', 'Pending', 75.00),
(37, 'Cash', 'Paid', 55.00),
(38, 'Card', 'Paid', 165.00),
(39, 'Online', 'Paid', 90.00),
(40, 'Cash', 'Paid', 45.00),
(41, 'Card', 'Pending', 135.00),
(42, 'Online', 'Paid', 100.00),
(43, 'Cash', 'Paid', 65.00),
(44, 'Card', 'Paid', 175.00),
(45, 'Online', 'Paid', 120.00),
(46, 'Cash', 'Pending', 50.00),
(47, 'Card', 'Paid', 150.00),
(48, 'Online', 'Paid', 95.00),
(49, 'Cash', 'Paid', 80.00),
(50, 'Card', 'Paid', 190.00);

--FEEDBACK TABLE DATA
INSERT INTO FEEDBACK
(customer_id, rating, comments)
VALUES
(3, 5, 'Excellent service and quick delivery'),
(4, 4, 'Good quality washing'),
(5, 5, 'Very satisfied with the staff'),
(6, 3, 'Service was okay but delivery was late'),
(7, 4, 'Clothes were cleaned properly'),
(8, 5, 'Highly recommended laundry service'),
(9, 2, 'Need improvement in ironing quality'),
(10, 5, 'Very professional and affordable'),
(11, 4, 'Good customer support'),
(12, 5, 'Curtains were cleaned perfectly'),
(13, 3, 'Average experience'),
(14, 5, 'Best laundry service I have used'),
(15, 4, 'Steam press quality was excellent'),
(16, 5, 'Fast pickup and delivery'),
(17, 4, 'Overall very good experience');

--COUPON TABLE DATA
INSERT INTO COUPONS
(coupon_code, discount_percentage, expiry_date)
VALUES
('WELCOME10', 10, '2026-12-31'),
('SAVE15', 15, '2026-11-30'),
('LAUNDRY20', 20, '2026-10-31'),
('FRESH25', 25, '2026-09-30'),
('CLEAN30', 30, '2026-08-31'),
('NEWUSER5', 5, '2026-12-15'),
('SPRING15', 15, '2026-07-31'),
('VIP20', 20, '2026-12-20'),
('EID25', 25, '2026-06-30'),
('SUMMER10', 10, '2026-09-15');

--CUSTOMER_COUPON TABLE DATA
INSERT INTO Customer_COUPONS
(customer_id, coupon_id)
VALUES
(3,1),
(4,2),
(5,3),
(6,4),
(7,5),
(8,6),
(9,7),
(10,8),
(11,9),
(12,10),
(13,1),
(14,3),
(15,5),
(16,7),
(17,2),
(18,4),
(19,6),
(20,8),
(21,9),
(22,10);

--DELIVERY_TRACKING TABLE DATA
INSERT INTO DELIVERY_TRACKING
(order_id, delivery_person, delivery_status, delivery_time)
VALUES
(1,'Ahmed Khan','Delivered','2025-05-03 10:30:00'),
(2,'Ali Hassan','Delivered','2025-05-04 11:00:00'),
(3,'Usman Tariq','Out for Delivery','2025-05-05 09:30:00'),
(4,'Bilal Ahmed','Delivered','2025-05-06 02:15:00'),
(5,'Saad Malik','Pending','2025-05-07 05:00:00'),
(6,'Ahmed Khan','Delivered','2025-05-08 12:00:00'),
(7,'Ali Hassan','Out for Delivery','2025-05-09 10:00:00'),
(8,'Usman Tariq','Delivered','2025-05-10 03:30:00'),
(9,'Bilal Ahmed','Delivered','2025-05-11 01:00:00'),
(10,'Saad Malik','Pending','2025-05-12 06:00:00'),
(11,'Ahmed Khan','Delivered','2025-05-13 11:30:00'),
(12,'Ali Hassan','Delivered','2025-05-14 02:00:00'),
(13,'Usman Tariq','Out for Delivery','2025-05-15 09:00:00'),
(14,'Bilal Ahmed','Delivered','2025-05-16 04:00:00'),
(15,'Saad Malik','Delivered','2025-05-17 12:30:00'),
(16,'Ahmed Khan','Pending','2025-05-18 05:30:00'),
(17,'Ali Hassan','Delivered','2025-05-19 11:15:00'),
(18,'Usman Tariq','Delivered','2025-05-20 01:45:00'),
(19,'Bilal Ahmed','Out for Delivery','2025-05-21 10:20:00'),
(20,'Saad Malik','Delivered','2025-05-22 03:10:00'),
(21,'Ahmed Khan','Delivered','2025-05-23 12:40:00'),
(22,'Ali Hassan','Pending','2025-05-24 04:30:00'),
(23,'Usman Tariq','Delivered','2025-05-25 11:50:00'),
(24,'Bilal Ahmed','Delivered','2025-05-26 02:20:00'),
(25,'Saad Malik','Out for Delivery','2025-05-27 09:10:00'),
(26,'Ahmed Khan','Delivered','2025-05-28 03:40:00'),
(27,'Ali Hassan','Delivered','2025-05-29 01:30:00'),
(28,'Usman Tariq','Pending','2025-05-30 06:00:00'),
(29,'Bilal Ahmed','Delivered','2025-05-31 12:15:00'),
(30,'Saad Malik','Delivered','2025-06-01 02:50:00'),
(31,'Ahmed Khan','Out for Delivery','2025-06-02 09:40:00'),
(32,'Ali Hassan','Delivered','2025-06-03 03:00:00'),
(33,'Usman Tariq','Delivered','2025-06-04 01:20:00'),
(34,'Bilal Ahmed','Pending','2025-06-05 05:10:00'),
(35,'Saad Malik','Delivered','2025-06-06 11:10:00'),
(36,'Ahmed Khan','Delivered','2025-06-07 02:30:00'),
(37,'Ali Hassan','Out for Delivery','2025-06-08 10:10:00'),
(38,'Usman Tariq','Delivered','2025-06-09 03:50:00'),
(39,'Bilal Ahmed','Delivered','2025-06-10 12:00:00'),
(40,'Saad Malik','Pending','2025-06-11 06:10:00'),
(41,'Ahmed Khan','Delivered','2025-06-12 11:40:00'),
(42,'Ali Hassan','Delivered','2025-06-13 02:10:00'),
(43,'Usman Tariq','Out for Delivery','2025-06-14 09:50:00'),
(44,'Bilal Ahmed','Delivered','2025-06-15 04:20:00'),
(45,'Saad Malik','Delivered','2025-06-16 01:40:00'),
(46,'Ahmed Khan','Pending','2025-06-17 05:20:00'),
(47,'Ali Hassan','Delivered','2025-06-18 11:00:00'),
(48,'Usman Tariq','Delivered','2025-06-19 03:30:00'),
(49,'Bilal Ahmed','Out for Delivery','2025-06-20 10:30:00'),
(50,'Saad Malik','Delivered','2025-06-21 02:00:00');

--EMPLOYEE_ATTENDANCE TABLE DATA
INSERT INTO EMPLOYEE_ATTENDANCE
(worker_id, attendance_date, status)
VALUES
(1,'2025-05-01','Present'),
(2,'2025-05-01','Present'),
(3,'2025-05-01','Absent'),
(4,'2025-05-01','Present'),
(5,'2025-05-01','Present'),
(6,'2025-05-01','Present'),
(7,'2025-05-01','Late'),
(8,'2025-05-01','Present'),

(1,'2025-05-02','Present'),
(2,'2025-05-02','Late'),
(3,'2025-05-02','Present'),
(4,'2025-05-02','Present'),
(5,'2025-05-02','Absent'),
(6,'2025-05-02','Present'),
(7,'2025-05-02','Present'),
(8,'2025-05-02','Present'),

(1,'2025-05-03','Present'),
(2,'2025-05-03','Present'),
(3,'2025-05-03','Present'),
(4,'2025-05-03','Late'),
(5,'2025-05-03','Present'),
(6,'2025-05-03','Absent'),
(7,'2025-05-03','Present'),
(8,'2025-05-03','Present'),

(1,'2025-05-04','Late'),
(2,'2025-05-04','Present'),
(3,'2025-05-04','Present'),
(4,'2025-05-04','Absent'),
(5,'2025-05-04','Present'),
(6,'2025-05-04','Present'),
(7,'2025-05-04','Present'),
(8,'2025-05-04','Late'),

(1,'2025-05-05','Present'),
(2,'2025-05-05','Absent'),
(3,'2025-05-05','Present'),
(4,'2025-05-05','Present'),
(5,'2025-05-05','Late'),
(6,'2025-05-05','Present'),
(7,'2025-05-05','Present'),
(8,'2025-05-05','Present'),

(1,'2025-05-06','Present'),
(2,'2025-05-06','Present'),
(3,'2025-05-06','Late'),
(4,'2025-05-06','Present'),
(5,'2025-05-06','Present'),
(6,'2025-05-06','Absent'),
(7,'2025-05-06','Present'),
(8,'2025-05-06','Present'),

(1,'2025-05-07','Absent'),
(2,'2025-05-07','Present'),
(3,'2025-05-07','Present'),
(4,'2025-05-07','Present'),
(5,'2025-05-07','Present'),
(6,'2025-05-07','Late'),
(7,'2025-05-07','Present'),
(8,'2025-05-07','Present'),

(1,'2025-05-08','Present'),
(2,'2025-05-08','Present'),
(3,'2025-05-08','Absent'),
(4,'2025-05-08','Present'),
(5,'2025-05-08','Present'),
(6,'2025-05-08','Present'),
(7,'2025-05-08','Late'),
(8,'2025-05-08','Present'),

(1,'2025-05-09','Present'),
(2,'2025-05-09','Late'),
(3,'2025-05-09','Present'),
(4,'2025-05-09','Present'),
(5,'2025-05-09','Absent'),
(6,'2025-05-09','Present'),
(7,'2025-05-09','Present'),
(8,'2025-05-09','Present'),

(1,'2025-05-10','Present'),
(2,'2025-05-10','Present'),
(3,'2025-05-10','Present'),
(4,'2025-05-10','Late'),
(5,'2025-05-10','Present'),
(6,'2025-05-10','Present'),
(7,'2025-05-10','Absent'),
(8,'2025-05-10','Present');












