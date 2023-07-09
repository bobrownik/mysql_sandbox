SELECT city, COUNT(order_id) AS orders_count FROM trades t
INNER JOIN users u ON u.user_id = t.user_id
WHERE t.status = 'complete'
GROUP BY city
ORDER BY orders_count DESC
LIMIT 3;
