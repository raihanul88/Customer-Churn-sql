INSERT INTO customers (name, email, city, join_date) VALUES
('Rahim', 'rahim@email.com', 'Dhaka', '2023-01-10'),
('Karim', 'karim@email.com', 'Chittagong', '2023-02-15'),
('Salma', 'salma@email.com', 'Khulna', '2023-03-20'),
('Nadia', 'nadia@email.com', 'Rajshahi', '2023-04-05'),
('Fahim', 'fahim@email.com', 'Dhaka', '2023-05-18');

INSERT INTO subscriptions (customer_id, plan_name, start_date, end_date, status) VALUES
(1, 'Premium', '2023-01-10', '2024-01-10', 'Active'),
(2, 'Basic', '2023-02-15', '2023-08-15', 'Expired'),
(3, 'Premium', '2023-03-20', '2024-03-20', 'Active'),
(4, 'Standard', '2023-04-05', '2023-10-05', 'Expired'),
(5, 'Basic', '2023-05-18', '2023-11-18', 'Cancelled');

INSERT INTO payments (customer_id, payment_date, amount, payment_status) VALUES
(1, '2024-01-05', 1000.00, 'Paid'),
(2, '2023-08-10', 500.00, 'Paid'),
(3, '2024-02-10', 1000.00, 'Paid'),
(4, '2023-09-30', 700.00, 'Failed'),
(5, '2023-10-15', 500.00, 'Failed');

INSERT INTO support_tickets (customer_id, issue_type, ticket_date, status) VALUES
(2, 'Payment Problem', '2023-08-12', 'Closed'),
(2, 'Login Issue', '2023-08-14', 'Closed'),
(4, 'Service Complaint', '2023-09-25', 'Closed'),
(4, 'Billing Issue', '2023-09-28', 'Closed'),
(5, 'Cancellation Request', '2023-11-01', 'Closed');
