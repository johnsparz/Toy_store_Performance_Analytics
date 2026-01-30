--Session to Order 
SELECT 
    YEAR(ws.created_at) AS year,
    MONTH(ws.created_at) AS month,
    DATENAME(MONTH, ws.created_at) AS month_name,
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY 
    YEAR(ws.created_at),
    MONTH(ws.created_at),
    DATENAME(MONTH, ws.created_at);
