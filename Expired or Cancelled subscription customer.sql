SELECT 
    c.customer_id,
    c.name,
    s.plan_name,
    s.status
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
WHERE s.status IN ('Expired', 'Cancelled');
