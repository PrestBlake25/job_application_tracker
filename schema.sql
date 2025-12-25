CREATE DATABASE job_tracker;

\c job_tracker;

-- Companies table
CREATE TABLE companies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    industry VARCHAR(50),
    org_type VARCHAR(20),  -- 'Startup', 'Mid', 'Enterprise'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Applications table
CREATE TABLE applications (
    id SERIAL PRIMARY KEY,
    company_id INT REFERENCES companies(id),
    role_type VARCHAR(50),     
    app_date DATE,
    status VARCHAR(20),         -- 'Applied', 'Interviewing', 'Offer', 'Rejected'
    source VARCHAR(30),         -- 'LinkedIn', 'NSBE', 'Referral', etc.
    salary_expectation INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
