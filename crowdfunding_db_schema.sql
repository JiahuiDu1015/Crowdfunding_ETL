CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(10),
    launched_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR,
    subcategory_id VARCHAR
);

SELECT * FROM campaign LIMIT 10;

CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255)
);

SELECT * FROM category LIMIT 10;

CREATE TABLE subcategory(
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory VARCHAR(255)
);

SELECT * FROM subcategory LIMIT 10;

CREATE TABLE contacts (
    contact_id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

SELECT * FROM contacts LIMIT 10;

SELECT datname 
FROM pg_database 
WHERE datname = 'crowdfunding_db';

