CREATE OR REPLACE FUNCTION change_application_status(
    p_application_id BIGINT,
    p_status_id SMALLINT
)
RETURNS VOID AS $$
BEGIN
    UPDATE applications
    SET status_id = p_status_id
    WHERE application_id = p_application_id;
END;
$$ LANGUAGE plpgsql;
