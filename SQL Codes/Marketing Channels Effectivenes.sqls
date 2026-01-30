--Core Channel Performance Query
SELECT 
    COALESCE(ws.utm_source, 'direct') AS channel,
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        COUNT(DISTINCT o.order_id) * 100.0 / 
        NULLIF(COUNT(DISTINCT ws.website_session_id), 0),
        2
    ) AS conversion_rate_pct
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY 
    COALESCE(ws.utm_source, 'direct')
ORDER BY 
    total_orders DESC;

--Replace NULL with a meaningful channel name
SELECT 
    CASE 
        WHEN ws.utm_source IS NULL AND ws.http_referer IS NULL THEN 'direct'
        WHEN ws.utm_source IS NULL AND ws.http_referer IS NOT NULL THEN 'organic_search'
        ELSE ws.utm_source
    END AS channel,
    
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        COUNT(DISTINCT o.order_id) * 100.0 / 
        NULLIF(COUNT(DISTINCT ws.website_session_id), 0),
        2
    ) AS conversion_rate_pct
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY 
    CASE 
        WHEN ws.utm_source IS NULL AND ws.http_referer IS NULL THEN 'direct'
        WHEN ws.utm_source IS NULL AND ws.http_referer IS NOT NULL THEN 'organic_search'
        ELSE ws.utm_source
    END
ORDER BY total_orders DESC;



