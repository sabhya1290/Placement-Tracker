CREATE TABLE tasks (
    task_id BIGSERIAL PRIMARY KEY,
    application_id BIGINT NOT NULL REFERENCES applications(application_id) ON DELETE CASCADE,
    title VARCHAR(150) NOT NULL,
    due_on DATE,
    priority SMALLINT CHECK (priority BETWEEN 1 AND 5),
    is_done BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
