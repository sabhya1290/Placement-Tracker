CREATE TABLE roles (
    role_id BIGSERIAL PRIMARY KEY,
    company_id BIGINT NOT NULL REFERENCES companies(company_id) ON DELETE RESTRICT,
    title VARCHAR(120) NOT NULL,
    role_type VARCHAR(30) CHECK (role_type IN ('Intern', 'Full-Time')),
    stipend_or_ctc INTEGER,
    work_mode VARCHAR(20) CHECK (work_mode IN ('Remote', 'Hybrid', 'Onsite')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(company_id, title, role_type)
);
