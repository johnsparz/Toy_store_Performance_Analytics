SELECT DISTINCT utm_source, DATALENGTH(utm_source)
FROM dbo.website_sessions
ORDER BY utm_source;

--Step 1 — Inspect the real value
SELECT 
    utm_source,
    DATALENGTH(utm_source) AS data_len,
    LEN(utm_source) AS len_func,
    '[' + utm_source + ']' AS visual
FROM dbo.website_sessions
WHERE utm_source LIKE '%direct%';

--Step 2 — Clean whitespace + control chars
UPDATE dbo.website_sessions
SET utm_source = LOWER(
                    LTRIM(RTRIM(
                        REPLACE(REPLACE(REPLACE(utm_source, CHAR(9), ''), CHAR(10), ''), CHAR(13), '')
                    ))
                 )
WHERE utm_source IS NOT NULL;

--Step 3 — Fix fake NULL strings
UPDATE dbo.website_sessions
SET utm_source = NULL
WHERE utm_source IN ('null','NULL','');

--Step 4 — Remove polluted valuess
UPDATE dbo.website_sessions
SET utm_source = NULL
WHERE utm_source = 'direct';

--Step 5 — Verify
SELECT utm_source, COUNT(*) 
FROM dbo.website_sessions
GROUP BY utm_source
ORDER BY utm_source;


UPDATE dbo.website_sessions
SET utm_source = 'gsearch'
WHERE utm_source IS NULL
  AND http_referer LIKE '%gsearch.com%';

  UPDATE dbo.website_sessions
SET http_referer = LOWER(
                    LTRIM(RTRIM(
                        REPLACE(REPLACE(REPLACE(http_referer, CHAR(9), ''), CHAR(10), ''), CHAR(13), '')
                    ))
                 )
WHERE http_referer IS NOT NULL;


SELECT DISTINCT
    CASE
        -- Paid channels
        WHEN utm_source = 'gsearch' THEN 'gsearch'
        WHEN utm_source = 'bsearch' THEN 'bsearch'
        WHEN utm_source = 'socialbook' THEN 'socialbook'
        -- Fallback
        ELSE 'direct'
    END AS channel
FROM dbo.website_sessions;




