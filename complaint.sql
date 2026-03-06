SELECT 
    c.customer_id,
    c.name,
    COUNT(st.ticket_id) AS total_complaints
FROM customers c
JOIN support_tickets st ON c.customer_id = st.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(st.ticket_id) >= 2;
