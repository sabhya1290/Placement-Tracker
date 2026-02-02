CREATE OR REPLACE FUNCTION log_status_change()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.status_id <> NEW.status_id THEN
        INSERT INTO status_history (
            application_id,
            from_status_id,
            to_status_id,
            changed_by
        )
        VALUES (
            OLD.application_id,
            OLD.status_id,
            NEW.status_id,
            NEW.user_id
        );
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_status_history
AFTER UPDATE ON applications
FOR EACH ROW
EXECUTE FUNCTION log_status_change();
