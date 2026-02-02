CREATE OR REPLACE VIEW v_analytics AS
SELECT
    source,
    COUNT(*) AS total_applications
FROM applications
GROUP BY source;
