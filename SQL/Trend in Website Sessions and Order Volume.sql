-------------------------------------------
--1. Trend in Website Sessions and Order Volume
-------------------------------------------

--Step 1 — Create Time-Based Aggregates
SELECT 
    YEAR(created_at) AS year,
    MONTH(created_at) AS month,
    COUNT(*) AS total_sessions
FROM website_sessions
GROUP BY 
    YEAR(created_at),
    MONTH(created_at)
ORDER BY 
    year, month;

--Orders Trend
SELECT 
    YEAR(created_at) AS year,
    MONTH(created_at) AS month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY 
    YEAR(created_at),
    MONTH(created_at)
ORDER BY 
    year, month;

--Step 2 — Combined Trend View (Sessions vs Orders)
SELECT 
    YEAR(ws.created_at) AS year,
    MONTH(ws.created_at) AS month,
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY 
    YEAR(ws.created_at),
    MONTH(ws.created_at)
ORDER BY 
    year, month;

--Step 3 : Growth Rate Analysis
WITH monthly_data AS (
    SELECT 
        YEAR(ws.created_at) AS year,
        MONTH(ws.created_at) AS month,
        COUNT(DISTINCT ws.website_session_id) AS total_sessions,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM website_sessions ws
    LEFT JOIN orders o
        ON ws.website_session_id = o.website_session_id
    GROUP BY 
        YEAR(ws.created_at),
        MONTH(ws.created_at)
)
SELECT *,
    LAG(total_sessions) OVER (ORDER BY year, month) AS prev_sessions,
    LAG(total_orders) OVER (ORDER BY year, month) AS prev_orders,
    ROUND(
        (total_sessions - LAG(total_sessions) OVER (ORDER BY year, month)) * 100.0 /
        NULLIF(LAG(total_sessions) OVER (ORDER BY year, month), 0), 2
    ) AS session_growth_pct,
    ROUND(
        (total_orders - LAG(total_orders) OVER (ORDER BY year, month)) * 100.0 /
        NULLIF(LAG(total_orders) OVER (ORDER BY year, month), 0), 2
    ) AS order_growth_pct
FROM monthly_data
ORDER BY year, month;
