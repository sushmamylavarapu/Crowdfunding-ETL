-- Create caetgory table
CREATE TABLE category (
    category_id VARCHAR(4)   NOT NULL,
    category VARCHAR(50)   NOT NULL,
    PRIMARY KEY (category_id));

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)   NOT NULL,
    subcategory VARCHAR(50)   NOT NULL,
    PRIMARY KEY (subcategory_id));

-- Creatre contacts table
CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(100)   NOT NULL,
    last_name VARCHAR(100)   NOT NULL,
    email VARCHAR(200)   NOT NULL,
    PRIMARY KEY (contact_id));

-- Create campaign table
CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(200)   NOT NULL,
    description VARCHAR(300)   NOT NULL,
    goal DECIMAL(10,1)   NOT NULL,
    pledged DECIMAL(10,1)   NOT NULL,
    outcome VARCHAR(100)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(5)   NOT NULL,
    currency VARCHAR(5)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(5)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,    
	PRIMARY KEY (cf_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id));


-- View tables following csv data import
SELECT * from category;
SELECT * from subcategory;
SELECT * from contacts;
SELECT * from campaign;

