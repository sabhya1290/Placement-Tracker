CREATE TABLE status_history (
    history_id BIGSERIAL PRIMARY KEY,
    application_id BIGINT NOT NULL REFERENCES applications(application_id) ON DELETE CASCADE,
    from_status_id SMALLINT,
    to_status_id SMALLINT NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    changed_by BIGINT REFERENCES users(user_id)
);
