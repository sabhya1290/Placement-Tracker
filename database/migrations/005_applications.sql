CREATE TABLE applications (
    application_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    role_id BIGINT NOT NULL REFERENCES roles(role_id) ON DELETE RESTRICT,
    status_id SMALLINT NOT NULL REFERENCES application_statuses(status_id),
    source VARCHAR(40),
    applied_on DATE NOT NULL CHECK (applied_on <= CURRENT_DATE),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,
    UNIQUE(user_id, role_id)
);
