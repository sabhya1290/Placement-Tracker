CREATE OR REPLACE VIEW v_pipeline AS
SELECT
    a.application_id,
    u.full_name,
    c.name AS company,
    r.title AS role,
    s.name AS status,
    a.source,
    a.applied_on,
    a.last_updated
FROM applications a
JOIN users u ON u.user_id = a.user_id
JOIN roles r ON r.role_id = a.role_id
JOIN companies c ON c.company_id = r.company_id
JOIN application_statuses s ON s.status_id = a.status_id;
