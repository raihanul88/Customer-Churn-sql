SELECT 
    c.customer_id,
    c.name,
    p.payment_status,
    p.payment_date
FROM customers c
JOIN payments p ON c.customer_id = p.customer_id
WHERE p.payment_status = 'Failed';
