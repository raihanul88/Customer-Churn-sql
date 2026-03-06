SELECT 
    c.customer_id,
    c.name,
    s.status AS subscription_status,
    p.payment_status,
    COUNT(st.ticket_id) AS complaint_count
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
JOIN payments p ON c.customer_id = p.customer_id
LEFT JOIN support_tickets st ON c.customer_id = st.customer_id
WHERE s.status IN ('Expired', 'Cancelled')
   OR p.payment_status = 'Failed'
GROUP BY c.customer_id, c.name, s.status, p.payment_status
HAVING COUNT(st.ticket_id) >= 1
ORDER BY complaint_count DESC;
