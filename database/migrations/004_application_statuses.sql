CREATE TABLE application_statuses (
    status_id SMALLSERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE,
    is_terminal BOOLEAN DEFAULT FALSE
);
