----------------------------------------------------------------
--This query is used to clean: utm_campaign, utm_content, http_referer (appriopriate column name used)
----------------------------------------------------------------
--Diagnostic query:
SELECT TOP 50
    http_referer,
    DATALENGTH(http_referer) AS data_len,
    '[' + http_referer + ']' AS visual_value
FROM dbo.website_sessions
WHERE http_referer IS NOT NULL
  AND (http_referer LIKE '%NULL%' OR http_referer = '' OR http_referer LIKE ' %');


--Step 2 — Convert empty/space strings to NULL
UPDATE dbo.website_sessions
SET http_referer = NULL
WHERE LTRIM(RTRIM(http_referer)) = '';

--Step 3 — Verify real NULLs now exist
SELECT 
    COUNT(*) AS real_nulls
FROM dbo.website_sessions
WHERE http_referer IS NULL;
