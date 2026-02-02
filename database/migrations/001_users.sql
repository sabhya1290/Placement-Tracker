CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    college VARCHAR(120),
    graduation_year SMALLINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
