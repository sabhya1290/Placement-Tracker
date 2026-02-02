CREATE TABLE companies (
    company_id BIGSERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL UNIQUE,
    industry VARCHAR(80),
    location VARCHAR(120),
    website TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
